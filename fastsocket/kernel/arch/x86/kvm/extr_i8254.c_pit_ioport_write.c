
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_kpit_state {int lock; struct kvm_kpit_channel_state* channels; } ;
struct kvm_pit {struct kvm* kvm; struct kvm_kpit_state pit_state; } ;
struct kvm_kpit_channel_state {int rw_mode; int read_state; int write_state; int mode; int bcd; int write_latch; } ;
struct kvm_io_device {int dummy; } ;
struct kvm {int dummy; } ;
typedef int gpa_t ;


 int EOPNOTSUPP ;
 int KVM_PIT_CHANNEL_MASK ;




 struct kvm_pit* dev_to_pit (struct kvm_io_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pit_in_range (int) ;
 int pit_latch_count (struct kvm*,int) ;
 int pit_latch_status (struct kvm*,int) ;
 int pit_load_count (struct kvm*,int,int) ;
 int pr_debug (char*,unsigned int,int,int) ;

__attribute__((used)) static int pit_ioport_write(struct kvm_io_device *this,
       gpa_t addr, int len, const void *data)
{
 struct kvm_pit *pit = dev_to_pit(this);
 struct kvm_kpit_state *pit_state = &pit->pit_state;
 struct kvm *kvm = pit->kvm;
 int channel, access;
 struct kvm_kpit_channel_state *s;
 u32 val = *(u32 *) data;
 if (!pit_in_range(addr))
  return -EOPNOTSUPP;

 val &= 0xff;
 addr &= KVM_PIT_CHANNEL_MASK;

 mutex_lock(&pit_state->lock);

 if (val != 0)
  pr_debug("pit: write addr is 0x%x, len is %d, val is 0x%x\n",
     (unsigned int)addr, len, val);

 if (addr == 3) {
  channel = val >> 6;
  if (channel == 3) {

   for (channel = 0; channel < 3; channel++) {
    s = &pit_state->channels[channel];
    if (val & (2 << channel)) {
     if (!(val & 0x20))
      pit_latch_count(kvm, channel);
     if (!(val & 0x10))
      pit_latch_status(kvm, channel);
    }
   }
  } else {

   s = &pit_state->channels[channel];
   access = (val >> 4) & KVM_PIT_CHANNEL_MASK;
   if (access == 0) {
    pit_latch_count(kvm, channel);
   } else {
    s->rw_mode = access;
    s->read_state = access;
    s->write_state = access;
    s->mode = (val >> 1) & 7;
    if (s->mode > 5)
     s->mode -= 4;
    s->bcd = val & 1;
   }
  }
 } else {

  s = &pit_state->channels[addr];
  switch (s->write_state) {
  default:
  case 131:
   pit_load_count(kvm, addr, val);
   break;
  case 130:
   pit_load_count(kvm, addr, val << 8);
   break;
  case 129:
   s->write_latch = val;
   s->write_state = 128;
   break;
  case 128:
   pit_load_count(kvm, addr, s->write_latch | (val << 8));
   s->write_state = 129;
   break;
  }
 }

 mutex_unlock(&pit_state->lock);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_kpit_state {int lock; struct kvm_kpit_channel_state* channels; } ;
struct kvm_pit {struct kvm* kvm; struct kvm_kpit_state pit_state; } ;
struct kvm_kpit_channel_state {int status; int count_latched; int latched_count; int read_state; scalar_t__ status_latched; } ;
struct kvm_io_device {int dummy; } ;
struct kvm {int dummy; } ;
typedef int ret ;
typedef int gpa_t ;


 int EOPNOTSUPP ;
 int KVM_PIT_CHANNEL_MASK ;




 struct kvm_pit* dev_to_pit (struct kvm_io_device*) ;
 int memcpy (void*,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pit_get_count (struct kvm*,int) ;
 int pit_in_range (int) ;

__attribute__((used)) static int pit_ioport_read(struct kvm_io_device *this,
      gpa_t addr, int len, void *data)
{
 struct kvm_pit *pit = dev_to_pit(this);
 struct kvm_kpit_state *pit_state = &pit->pit_state;
 struct kvm *kvm = pit->kvm;
 int ret, count;
 struct kvm_kpit_channel_state *s;
 if (!pit_in_range(addr))
  return -EOPNOTSUPP;

 addr &= KVM_PIT_CHANNEL_MASK;
 if (addr == 3)
  return 0;

 s = &pit_state->channels[addr];

 mutex_lock(&pit_state->lock);

 if (s->status_latched) {
  s->status_latched = 0;
  ret = s->status;
 } else if (s->count_latched) {
  switch (s->count_latched) {
  default:
  case 131:
   ret = s->latched_count & 0xff;
   s->count_latched = 0;
   break;
  case 130:
   ret = s->latched_count >> 8;
   s->count_latched = 0;
   break;
  case 129:
   ret = s->latched_count & 0xff;
   s->count_latched = 130;
   break;
  }
 } else {
  switch (s->read_state) {
  default:
  case 131:
   count = pit_get_count(kvm, addr);
   ret = count & 0xff;
   break;
  case 130:
   count = pit_get_count(kvm, addr);
   ret = (count >> 8) & 0xff;
   break;
  case 129:
   count = pit_get_count(kvm, addr);
   ret = count & 0xff;
   s->read_state = 128;
   break;
  case 128:
   count = pit_get_count(kvm, addr);
   ret = (count >> 8) & 0xff;
   s->read_state = 129;
   break;
  }
 }

 if (len > sizeof(ret))
  len = sizeof(ret);
 memcpy(data, (char *)&ret, len);

 mutex_unlock(&pit_state->lock);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_12__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


typedef int u64 ;
typedef int u16 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_pt_regs {int cr_ipsr; int cr_iip; } ;
struct ia64_psr {int ri; } ;
struct TYPE_24__ {int* bits; } ;
struct ia64_fpreg {TYPE_8__ u; } ;
typedef int s32 ;
struct TYPE_25__ {int major; int m; int x; int x6; int r3; int f2; int f1; } ;
struct TYPE_23__ {int major; int x6; int s; int i; int imm7; int r3; } ;
struct TYPE_22__ {int major; int x6; int s; int i; int imm7; int r3; int f2; } ;
struct TYPE_21__ {int major; int x6; scalar_t__ m; scalar_t__ x; int f2; } ;
struct TYPE_20__ {int major; int x6; int s; int i; int imm7; int r3; } ;
struct TYPE_19__ {int x6; int s; int i; int imm7; int r3; int r2; } ;
struct TYPE_18__ {int major; int m; scalar_t__ x; int x6; int r3; int r2; } ;
struct TYPE_17__ {int r2; } ;
struct TYPE_16__ {int slot0; int slot1a; int slot1b; int slot2; int * i64; } ;
struct TYPE_14__ {int major; scalar_t__ m; scalar_t__ x; int x6; int r1; } ;
struct TYPE_15__ {int inst; TYPE_10__ M1; TYPE_9__ M12; TYPE_7__ M15; TYPE_6__ M10; TYPE_5__ M9; TYPE_4__ M3; TYPE_3__ M5; TYPE_2__ M2; TYPE_1__ M4; } ;
typedef TYPE_11__ INST64 ;
typedef TYPE_12__ IA64_BUNDLE ;


 int IOREQ_READ ;
 int IOREQ_WRITE ;
 int SL_FLOATING ;
 int SL_INTEGER ;
 scalar_t__ fetch_code (struct kvm_vcpu*,int ,TYPE_12__*) ;
 int mmio_access (struct kvm_vcpu*,int,int*,int,int,int) ;
 int panic_vm (struct kvm_vcpu*,char*,...) ;
 int vcpu_get_fpreg (struct kvm_vcpu*,int ,struct ia64_fpreg*) ;
 int vcpu_get_gr (struct kvm_vcpu*,int ) ;
 int vcpu_increment_iip (struct kvm_vcpu*) ;
 struct kvm_pt_regs* vcpu_regs (struct kvm_vcpu*) ;
 int vcpu_set_fpreg (struct kvm_vcpu*,int ,struct ia64_fpreg*) ;
 int vcpu_set_gr (struct kvm_vcpu*,int ,int,int ) ;

void emulate_io_inst(struct kvm_vcpu *vcpu, u64 padr, u64 ma)
{
 struct kvm_pt_regs *regs;
 IA64_BUNDLE bundle;
 int slot, dir = 0;
 int inst_type = -1;
 u16 size = 0;
 u64 data, slot1a, slot1b, temp, update_reg;
 s32 imm;
 INST64 inst;

 regs = vcpu_regs(vcpu);

 if (fetch_code(vcpu, regs->cr_iip, &bundle)) {

  return;
 }
 slot = ((struct ia64_psr *)&(regs->cr_ipsr))->ri;
 if (!slot)
  inst.inst = bundle.slot0;
 else if (slot == 1) {
  slot1a = bundle.slot1a;
  slot1b = bundle.slot1b;
  inst.inst = slot1a + (slot1b << 18);
 } else if (slot == 2)
  inst.inst = bundle.slot2;


 if (inst.M1.major == 4 && inst.M1.m == 0 && inst.M1.x == 0) {
  inst_type = SL_INTEGER;
  size = (inst.M1.x6 & 0x3);
  if ((inst.M1.x6 >> 2) > 0xb) {

   dir = IOREQ_WRITE;
   data = vcpu_get_gr(vcpu, inst.M4.r2);
  } else if ((inst.M1.x6 >> 2) < 0xb) {

   dir = IOREQ_READ;
  }
 } else if (inst.M2.major == 4 && inst.M2.m == 1 && inst.M2.x == 0) {

  inst_type = SL_INTEGER;
  dir = IOREQ_READ;
  size = (inst.M2.x6 & 0x3);
  temp = vcpu_get_gr(vcpu, inst.M2.r3);
  update_reg = vcpu_get_gr(vcpu, inst.M2.r2);
  temp += update_reg;
  vcpu_set_gr(vcpu, inst.M2.r3, temp, 0);
 } else if (inst.M3.major == 5) {

  inst_type = SL_INTEGER;
  size = (inst.M3.x6&0x3);
  if ((inst.M5.x6 >> 2) > 0xb) {

   dir = IOREQ_WRITE;
   data = vcpu_get_gr(vcpu, inst.M5.r2);
   temp = vcpu_get_gr(vcpu, inst.M5.r3);
   imm = (inst.M5.s << 31) | (inst.M5.i << 30) |
    (inst.M5.imm7 << 23);
   temp += imm >> 23;
   vcpu_set_gr(vcpu, inst.M5.r3, temp, 0);

  } else if ((inst.M3.x6 >> 2) < 0xb) {

   dir = IOREQ_READ;
   temp = vcpu_get_gr(vcpu, inst.M3.r3);
   imm = (inst.M3.s << 31) | (inst.M3.i << 30) |
    (inst.M3.imm7 << 23);
   temp += imm >> 23;
   vcpu_set_gr(vcpu, inst.M3.r3, temp, 0);

  }
 } else if (inst.M9.major == 6 && inst.M9.x6 == 0x3B
    && inst.M9.m == 0 && inst.M9.x == 0) {

  struct ia64_fpreg v;

  inst_type = SL_FLOATING;
  dir = IOREQ_WRITE;
  vcpu_get_fpreg(vcpu, inst.M9.f2, &v);

  v.u.bits[1] &= 0x3ffff;
  mmio_access(vcpu, padr + 8, (u64 *)&v.u.bits[1], 8,
       ma, IOREQ_WRITE);
  data = v.u.bits[0];
  size = 3;
 } else if (inst.M10.major == 7 && inst.M10.x6 == 0x3B) {

  struct ia64_fpreg v;

  inst_type = SL_FLOATING;
  dir = IOREQ_WRITE;
  vcpu_get_fpreg(vcpu, inst.M10.f2, &v);
  temp = vcpu_get_gr(vcpu, inst.M10.r3);
  imm = (inst.M10.s << 31) | (inst.M10.i << 30) |
   (inst.M10.imm7 << 23);
  temp += imm >> 23;
  vcpu_set_gr(vcpu, inst.M10.r3, temp, 0);


  v.u.bits[1] &= 0x3ffff;
  mmio_access(vcpu, padr + 8, (u64 *)&v.u.bits[1],
       8, ma, IOREQ_WRITE);
  data = v.u.bits[0];
  size = 3;
 } else if (inst.M10.major == 7 && inst.M10.x6 == 0x31) {

  struct ia64_fpreg v;
  inst_type = SL_FLOATING;
  dir = IOREQ_WRITE;
  size = 3;
  vcpu_get_fpreg(vcpu, inst.M10.f2, &v);
  data = v.u.bits[0];
  temp = vcpu_get_gr(vcpu, inst.M10.r3);
  imm = (inst.M10.s << 31) | (inst.M10.i << 30) |
   (inst.M10.imm7 << 23);
  temp += imm >> 23;
  vcpu_set_gr(vcpu, inst.M10.r3, temp, 0);
 } else if (inst.M15.major == 7 && inst.M15.x6 >= 0x2c
   && inst.M15.x6 <= 0x2f) {
  temp = vcpu_get_gr(vcpu, inst.M15.r3);
  imm = (inst.M15.s << 31) | (inst.M15.i << 30) |
   (inst.M15.imm7 << 23);
  temp += imm >> 23;
  vcpu_set_gr(vcpu, inst.M15.r3, temp, 0);

  vcpu_increment_iip(vcpu);
  return;
 } else if (inst.M12.major == 6 && inst.M12.m == 1
   && inst.M12.x == 1 && inst.M12.x6 == 1) {

  struct ia64_fpreg v;

  inst_type = SL_FLOATING;
  dir = IOREQ_READ;
  size = 8;
  mmio_access(vcpu, padr, &data, size, ma, dir);
  v.u.bits[0] = data;
  v.u.bits[1] = 0x1003E;
  vcpu_set_fpreg(vcpu, inst.M12.f1, &v);
  padr += 8;
  mmio_access(vcpu, padr, &data, size, ma, dir);
  v.u.bits[0] = data;
  v.u.bits[1] = 0x1003E;
  vcpu_set_fpreg(vcpu, inst.M12.f2, &v);
  padr += 8;
  vcpu_set_gr(vcpu, inst.M12.r3, padr, 0);
  vcpu_increment_iip(vcpu);
  return;
 } else {
  inst_type = -1;
  panic_vm(vcpu, "Unsupported MMIO access instruction! 				Bunld[0]=0x%lx, Bundle[1]=0x%lx\n",

    bundle.i64[0], bundle.i64[1]);
 }

 size = 1 << size;
 if (dir == IOREQ_WRITE) {
  mmio_access(vcpu, padr, &data, size, ma, dir);
 } else {
  mmio_access(vcpu, padr, &data, size, ma, dir);
  if (inst_type == SL_INTEGER)
   vcpu_set_gr(vcpu, inst.M1.r1, data, 0);
  else
   panic_vm(vcpu, "Unsupported instruction type!\n");

 }
 vcpu_increment_iip(vcpu);
}

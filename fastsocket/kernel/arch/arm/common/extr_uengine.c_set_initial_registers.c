
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ixp2000_uengine_code {int uengine_parameters; struct ixp2000_reg_value* initial_reg_values; } ;
struct ixp2000_reg_value {int reg; int value; } ;


 int ACTIVE_CTX_STS ;
 int GFP_KERNEL ;
 int IXP2000_UENGINE_4_CONTEXTS ;
 int generate_ucode (int*,int*,int*) ;
 int ixp2000_uengine_csr_read (int,int ) ;
 int ixp2000_uengine_init_context (int,int ,int ) ;
 int ixp2000_uengine_load_microcode (int,int*,int) ;
 int ixp2000_uengine_start_contexts (int,int) ;
 int ixp2000_uengine_stop_contexts (int,int) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int* kzalloc (int,int ) ;

__attribute__((used)) static int set_initial_registers(int uengine, struct ixp2000_uengine_code *c)
{
 int per_ctx_regs;
 u32 *gpr_a;
 u32 *gpr_b;
 u8 *ucode;
 int i;

 gpr_a = kzalloc(128 * sizeof(u32), GFP_KERNEL);
 gpr_b = kzalloc(128 * sizeof(u32), GFP_KERNEL);
 ucode = kmalloc(513 * 5, GFP_KERNEL);
 if (gpr_a == ((void*)0) || gpr_b == ((void*)0) || ucode == ((void*)0)) {
  kfree(ucode);
  kfree(gpr_b);
  kfree(gpr_a);
  return 1;
 }

 per_ctx_regs = 16;
 if (c->uengine_parameters & IXP2000_UENGINE_4_CONTEXTS)
  per_ctx_regs = 32;

 for (i = 0; i < 256; i++) {
  struct ixp2000_reg_value *r = c->initial_reg_values + i;
  u32 *bank;
  int inc;
  int j;

  if (r->reg == -1)
   break;

  bank = (r->reg & 0x400) ? gpr_b : gpr_a;
  inc = (r->reg & 0x80) ? 128 : per_ctx_regs;

  j = r->reg & 0x7f;
  while (j < 128) {
   bank[j] = r->value;
   j += inc;
  }
 }

 generate_ucode(ucode, gpr_a, gpr_b);
 ixp2000_uengine_load_microcode(uengine, ucode, 513);
 ixp2000_uengine_init_context(uengine, 0, 0);
 ixp2000_uengine_start_contexts(uengine, 0x01);
 for (i = 0; i < 100; i++) {
  u32 status;

  status = ixp2000_uengine_csr_read(uengine, ACTIVE_CTX_STS);
  if (!(status & 0x80000000))
   break;
 }
 ixp2000_uengine_stop_contexts(uengine, 0x01);

 kfree(ucode);
 kfree(gpr_b);
 kfree(gpr_a);

 return !!(i == 100);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixp2000_uengine_code {int num_insns; int insns; int uengine_parameters; } ;


 int check_ixp_type (struct ixp2000_uengine_code*) ;
 int ixp2000_uengine_init_context (int,int,int ) ;
 int ixp2000_uengine_load_microcode (int,int ,int ) ;
 int ixp2000_uengine_mask ;
 int ixp2000_uengine_reset (int) ;
 int ixp2000_uengine_set_mode (int,int ) ;
 scalar_t__ set_initial_registers (int,struct ixp2000_uengine_code*) ;

int ixp2000_uengine_load(int uengine, struct ixp2000_uengine_code *c)
{
 int ctx;

 if (!check_ixp_type(c))
  return 1;

 if (!(ixp2000_uengine_mask & (1 << uengine)))
  return 1;

 ixp2000_uengine_reset(1 << uengine);
 ixp2000_uengine_set_mode(uengine, c->uengine_parameters);
 if (set_initial_registers(uengine, c))
  return 1;
 ixp2000_uengine_load_microcode(uengine, c->insns, c->num_insns);

 for (ctx = 0; ctx < 8; ctx++)
  ixp2000_uengine_init_context(uengine, ctx, 0);

 return 0;
}

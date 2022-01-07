
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int reg_lock; } ;


 int CSR_GP_CNTRL ;
 int CSR_GP_CNTRL_REG_FLAG_INIT_DONE ;
 int CSR_RESET ;
 int CSR_RESET_REG_FLAG_SW_RESET ;
 int D_INFO (char*) ;
 int _il_apm_stop_master (struct il_priv*) ;
 int _il_clear_bit (struct il_priv*,int ,int ) ;
 int _il_set_bit (struct il_priv*,int ,int ) ;
 int lockdep_assert_held (int *) ;
 int udelay (int) ;

void
_il_apm_stop(struct il_priv *il)
{
 lockdep_assert_held(&il->reg_lock);

 D_INFO("Stop card, put in low power state\n");


 _il_apm_stop_master(il);


 _il_set_bit(il, CSR_RESET, CSR_RESET_REG_FLAG_SW_RESET);

 udelay(10);





 _il_clear_bit(il, CSR_GP_CNTRL, CSR_GP_CNTRL_REG_FLAG_INIT_DONE);
}

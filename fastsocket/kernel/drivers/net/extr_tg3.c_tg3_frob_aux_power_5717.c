
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int dummy; } ;


 int ENABLE_APE ;
 int ENABLE_ASF ;
 int TG3_APE_LOCK_GPIO ;
 int TG3_GPIO_MSG_ALL_DRVR_PRES_MASK ;
 int TG3_GPIO_MSG_ALL_NEED_VAUX_MASK ;
 int TG3_GPIO_MSG_NEED_VAUX ;
 scalar_t__ tg3_ape_lock (struct tg3*,int ) ;
 int tg3_ape_unlock (struct tg3*,int ) ;
 scalar_t__ tg3_flag (struct tg3*,int ) ;
 int tg3_pwrsrc_die_with_vmain (struct tg3*) ;
 int tg3_pwrsrc_switch_to_vaux (struct tg3*) ;
 int tg3_set_function_status (struct tg3*,int) ;

__attribute__((used)) static void tg3_frob_aux_power_5717(struct tg3 *tp, bool wol_enable)
{
 u32 msg = 0;


 if (tg3_ape_lock(tp, TG3_APE_LOCK_GPIO))
  return;

 if (tg3_flag(tp, ENABLE_ASF) || tg3_flag(tp, ENABLE_APE) || wol_enable)
  msg = TG3_GPIO_MSG_NEED_VAUX;

 msg = tg3_set_function_status(tp, msg);

 if (msg & TG3_GPIO_MSG_ALL_DRVR_PRES_MASK)
  goto done;

 if (msg & TG3_GPIO_MSG_ALL_NEED_VAUX_MASK)
  tg3_pwrsrc_switch_to_vaux(tp);
 else
  tg3_pwrsrc_die_with_vmain(tp);

done:
 tg3_ape_unlock(tp, TG3_APE_LOCK_GPIO);
}

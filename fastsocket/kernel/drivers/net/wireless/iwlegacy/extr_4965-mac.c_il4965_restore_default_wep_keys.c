
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int mutex; } ;


 int il4965_static_wepkey_cmd (struct il_priv*,int) ;
 int lockdep_assert_held (int *) ;

int
il4965_restore_default_wep_keys(struct il_priv *il)
{
 lockdep_assert_held(&il->mutex);

 return il4965_static_wepkey_cmd(il, 0);
}

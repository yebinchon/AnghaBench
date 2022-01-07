
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int mutex; } ;


 int __il4965_down (struct il_priv*) ;
 int il4965_cancel_deferred_work (struct il_priv*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void
il4965_down(struct il_priv *il)
{
 mutex_lock(&il->mutex);
 __il4965_down(il);
 mutex_unlock(&il->mutex);

 il4965_cancel_deferred_work(il);
}

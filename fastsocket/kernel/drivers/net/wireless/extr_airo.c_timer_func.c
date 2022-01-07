
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {struct airo_info* ml_priv; } ;
struct TYPE_2__ {int authType; } ;
struct airo_info {int expires; int jobs; int sem; int flags; TYPE_1__ config; int defindex; int keyindex; } ;



 int AUTH_OPEN ;

 int FLAG_COMMIT ;
 int HZ ;
 int JOB_AUTOWEP ;
 int RUN_AT (int) ;
 int auto_wep ;
 int clear_bit (int ,int *) ;
 int disable_MAC (struct airo_info*,int ) ;
 int enable_MAC (struct airo_info*,int ) ;
 int readConfigRid (struct airo_info*,int ) ;
 int set_bit (int ,int *) ;
 int set_wep_tx_idx (struct airo_info*,int ,int ,int ) ;
 int up (int *) ;
 int writeConfigRid (struct airo_info*,int ) ;

__attribute__((used)) static void timer_func( struct net_device *dev ) {
 struct airo_info *apriv = dev->ml_priv;


 readConfigRid(apriv, 0);
 disable_MAC(apriv, 0);
 switch(apriv->config.authType) {
  case 129:

   apriv->config.authType = AUTH_OPEN;
   break;
  case 128:
   if (apriv->keyindex < auto_wep) {
    set_wep_tx_idx(apriv, apriv->keyindex, 0, 0);
    apriv->config.authType = 128;
    apriv->keyindex++;
   } else {

    apriv->keyindex = 0;
    set_wep_tx_idx(apriv, apriv->defindex, 0, 0);
    apriv->config.authType = 129;
   }
   break;
  default:
   apriv->config.authType = 128;
 }
 set_bit (FLAG_COMMIT, &apriv->flags);
 writeConfigRid(apriv, 0);
 enable_MAC(apriv, 0);
 up(&apriv->sem);


 clear_bit(JOB_AUTOWEP, &apriv->jobs);
 apriv->expires = RUN_AT(HZ*3);
}

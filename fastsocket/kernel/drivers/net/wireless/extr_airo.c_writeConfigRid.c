
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int opmode; } ;
struct airo_info {int flags; TYPE_1__ config; } ;
typedef int cfgr ;
typedef TYPE_1__ ConfigRid ;


 int FLAG_ADHOC ;
 int FLAG_COMMIT ;
 int FLAG_RESET ;
 int MODE_CFG_MASK ;
 int MODE_STA_IBSS ;
 int PC4500_writerid (struct airo_info*,int ,TYPE_1__*,int,int) ;
 int RID_CONFIG ;
 int SUCCESS ;
 int checkThrottle (struct airo_info*) ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int writeConfigRid(struct airo_info *ai, int lock)
{
 ConfigRid cfgr;

 if (!test_bit (FLAG_COMMIT, &ai->flags))
  return SUCCESS;

 clear_bit (FLAG_COMMIT, &ai->flags);
 clear_bit (FLAG_RESET, &ai->flags);
 checkThrottle(ai);
 cfgr = ai->config;

 if ((cfgr.opmode & MODE_CFG_MASK) == MODE_STA_IBSS)
  set_bit(FLAG_ADHOC, &ai->flags);
 else
  clear_bit(FLAG_ADHOC, &ai->flags);

 return PC4500_writerid( ai, RID_CONFIG, &cfgr, sizeof(cfgr), lock);
}

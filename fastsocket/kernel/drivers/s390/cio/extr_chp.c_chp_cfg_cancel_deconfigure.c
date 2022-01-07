
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chp_id {int id; int cssid; } ;


 int CIO_MSG_EVENT (int,char*,int ,int ) ;
 scalar_t__ cfg_deconfigure ;
 scalar_t__ cfg_get_task (struct chp_id) ;
 int cfg_lock ;
 int cfg_none ;
 int cfg_set_task (struct chp_id,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void chp_cfg_cancel_deconfigure(struct chp_id chpid)
{
 CIO_MSG_EVENT(2, "chp_cfg_cancel:%x.%02x\n", chpid.cssid, chpid.id);
 mutex_lock(&cfg_lock);
 if (cfg_get_task(chpid) == cfg_deconfigure)
  cfg_set_task(chpid, cfg_none);
 mutex_unlock(&cfg_lock);
}

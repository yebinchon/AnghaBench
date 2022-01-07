
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddb_entry {scalar_t__ default_time2wait; int retry_relogin_timer; int relogin_timer; } ;


 int atomic_set (int *,scalar_t__) ;

void qla4xxx_arm_relogin_timer(struct ddb_entry *ddb_entry)
{
 atomic_set(&ddb_entry->relogin_timer, 0);
 atomic_set(&ddb_entry->retry_relogin_timer,
     ddb_entry->default_time2wait + 4);

}

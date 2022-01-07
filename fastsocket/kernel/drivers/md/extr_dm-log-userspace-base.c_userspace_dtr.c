
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct log_c {struct log_c* usr_argv_str; scalar_t__ log_dev; int ti; int luid; int uuid; } ;
struct dm_dirty_log {struct log_c* context; } ;


 int DM_ULOG_DTR ;
 int dm_consult_userspace (int ,int ,int ,int *,int ,int *,int *) ;
 int dm_put_device (int ,scalar_t__) ;
 int kfree (struct log_c*) ;

__attribute__((used)) static void userspace_dtr(struct dm_dirty_log *log)
{
 struct log_c *lc = log->context;

 (void) dm_consult_userspace(lc->uuid, lc->luid, DM_ULOG_DTR,
     ((void*)0), 0,
     ((void*)0), ((void*)0));

 if (lc->log_dev)
  dm_put_device(lc->ti, lc->log_dev);

 kfree(lc->usr_argv_str);
 kfree(lc);

 return;
}

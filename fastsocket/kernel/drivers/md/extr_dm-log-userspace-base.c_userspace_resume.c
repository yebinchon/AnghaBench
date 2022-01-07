
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct log_c {int luid; int uuid; scalar_t__ in_sync_hint; } ;
struct dm_dirty_log {struct log_c* context; } ;


 int DM_ULOG_RESUME ;
 int dm_consult_userspace (int ,int ,int ,int *,int ,int *,int *) ;

__attribute__((used)) static int userspace_resume(struct dm_dirty_log *log)
{
 int r;
 struct log_c *lc = log->context;

 lc->in_sync_hint = 0;
 r = dm_consult_userspace(lc->uuid, lc->luid, DM_ULOG_RESUME,
     ((void*)0), 0,
     ((void*)0), ((void*)0));

 return r;
}

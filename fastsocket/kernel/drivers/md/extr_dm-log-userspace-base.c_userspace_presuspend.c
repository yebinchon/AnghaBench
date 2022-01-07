
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct log_c {int luid; int uuid; } ;
struct dm_dirty_log {struct log_c* context; } ;


 int DM_ULOG_PRESUSPEND ;
 int dm_consult_userspace (int ,int ,int ,int *,int ,int *,int *) ;

__attribute__((used)) static int userspace_presuspend(struct dm_dirty_log *log)
{
 int r;
 struct log_c *lc = log->context;

 r = dm_consult_userspace(lc->uuid, lc->luid, DM_ULOG_PRESUSPEND,
     ((void*)0), 0,
     ((void*)0), ((void*)0));

 return r;
}

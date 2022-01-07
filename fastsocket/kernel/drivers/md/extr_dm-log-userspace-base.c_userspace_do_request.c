
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct log_c {char* usr_argv_str; int luid; } ;


 int DMERR (char*,...) ;
 int DMINFO (char*) ;
 int DMWARN (char*) ;
 int DM_ULOG_CTR ;
 int DM_ULOG_RESUME ;
 int ESRCH ;
 int HZ ;
 int TASK_INTERRUPTIBLE ;
 int dm_consult_userspace (char const*,int ,int,char*,int,char*,size_t*) ;
 int schedule_timeout (int) ;
 int set_current_state (int ) ;
 int strlen (char*) ;

__attribute__((used)) static int userspace_do_request(struct log_c *lc, const char *uuid,
    int request_type, char *data, size_t data_size,
    char *rdata, size_t *rdata_size)
{
 int r;






retry:
 r = dm_consult_userspace(uuid, lc->luid, request_type, data,
     data_size, rdata, rdata_size);

 if (r != -ESRCH)
  return r;

 DMERR(" Userspace log server not found.");
 while (1) {
  set_current_state(TASK_INTERRUPTIBLE);
  schedule_timeout(2*HZ);
  DMWARN("Attempting to contact userspace log server...");
  r = dm_consult_userspace(uuid, lc->luid, DM_ULOG_CTR,
      lc->usr_argv_str,
      strlen(lc->usr_argv_str) + 1,
      ((void*)0), ((void*)0));
  if (!r)
   break;
 }
 DMINFO("Reconnected to userspace log server... DM_ULOG_CTR complete");
 r = dm_consult_userspace(uuid, lc->luid, DM_ULOG_RESUME, ((void*)0),
     0, ((void*)0), ((void*)0));
 if (!r)
  goto retry;

 DMERR("Error trying to resume userspace log: %d", r);

 return -ESRCH;
}

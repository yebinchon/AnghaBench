
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int trunk_binlog_fd ;
 int trunk_binlog_fsync (int) ;

int trunk_sync_destroy()
{
 if (trunk_binlog_fd >= 0)
 {
  trunk_binlog_fsync(1);
  close(trunk_binlog_fd);
  trunk_binlog_fd = -1;
 }

 return 0;
}

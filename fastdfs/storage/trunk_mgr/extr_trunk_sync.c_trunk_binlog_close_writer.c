
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int trunk_binlog_fd ;
 int trunk_binlog_fsync (int const) ;
 scalar_t__ trunk_binlog_write_cache_len ;

__attribute__((used)) static int trunk_binlog_close_writer(const bool needLock)
{
 int result;
 if (trunk_binlog_write_cache_len > 0)
 {
  if ((result=trunk_binlog_fsync(needLock)) != 0)
  {
   return result;
  }
 }
 close(trunk_binlog_fd);
 trunk_binlog_fd = -1;
 return 0;
}

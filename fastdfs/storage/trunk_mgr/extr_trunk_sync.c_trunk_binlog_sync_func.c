
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int trunk_binlog_fsync (int) ;
 scalar_t__ trunk_binlog_write_cache_len ;

int trunk_binlog_sync_func(void *args)
{
 if (trunk_binlog_write_cache_len > 0)
 {
  return trunk_binlog_fsync(1);
 }
 else
 {
  return 0;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ binlog_write_cache_len ;
 int storage_binlog_fsync (int) ;

int fdfs_binlog_sync_func(void *args)
{
 if (binlog_write_cache_len > 0)
 {
  return storage_binlog_fsync(1);
 }
 else
 {
  return 0;
 }
}

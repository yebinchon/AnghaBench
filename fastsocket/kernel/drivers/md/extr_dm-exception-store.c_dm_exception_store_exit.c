
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dm_persistent_snapshot_exit () ;
 int dm_transient_snapshot_exit () ;

void dm_exception_store_exit(void)
{
 dm_persistent_snapshot_exit();
 dm_transient_snapshot_exit();
}

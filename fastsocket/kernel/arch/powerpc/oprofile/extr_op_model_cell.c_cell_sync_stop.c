
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SPU_PROFILING_CYCLES ;
 scalar_t__ SPU_PROFILING_EVENTS ;
 scalar_t__ profiling_mode ;
 int spu_sync_stop () ;

__attribute__((used)) static int cell_sync_stop(void)
{
 if ((profiling_mode == SPU_PROFILING_CYCLES) ||
     (profiling_mode == SPU_PROFILING_EVENTS))
  return spu_sync_stop();
 else
  return 1;
}

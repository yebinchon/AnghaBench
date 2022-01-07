
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_cache_all () ;

void s3c_pm_cb_flushcache(void)
{
 flush_cache_all();
}

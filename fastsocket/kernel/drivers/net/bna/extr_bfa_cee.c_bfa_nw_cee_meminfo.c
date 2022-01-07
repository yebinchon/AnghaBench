
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ bfa_cee_attr_meminfo () ;
 scalar_t__ bfa_cee_stats_meminfo () ;

u32
bfa_nw_cee_meminfo(void)
{
 return bfa_cee_attr_meminfo() + bfa_cee_stats_meminfo();
}

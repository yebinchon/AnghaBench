
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SSC_CTL_TRACE ;
 int ia64_ssc (long,int ,int ,int ,int ) ;

void
ia64_ctl_trace (long on)
{
 ia64_ssc(on, 0, 0, 0, SSC_CTL_TRACE);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 scalar_t__ MACH_IS_BVME6000 ;
 scalar_t__ MACH_IS_MVME147 ;
 scalar_t__ MACH_IS_MVME16x ;
 int bvme6000_scc_init () ;
 int mvme147_scc_init () ;
 int mvme162_scc_init () ;

__attribute__((used)) static int vme_scc_init(void)
{
 int res = -ENODEV;
 return res;
}

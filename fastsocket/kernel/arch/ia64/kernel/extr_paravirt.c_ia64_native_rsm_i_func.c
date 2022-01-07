
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IA64_PSR_I ;
 int ia64_native_rsm (int ) ;

__attribute__((used)) static void
ia64_native_rsm_i_func(void)
{
 ia64_native_rsm(IA64_PSR_I);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ pvr2_context_cleanup_flag ;
 int * pvr2_context_exist_first ;

__attribute__((used)) static int pvr2_context_shutok(void)
{
 return pvr2_context_cleanup_flag && (pvr2_context_exist_first == ((void*)0));
}

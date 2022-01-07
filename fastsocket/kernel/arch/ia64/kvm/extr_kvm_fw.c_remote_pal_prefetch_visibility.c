
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s64 ;


 int ia64_pal_prefetch_visibility (int ) ;

__attribute__((used)) static void remote_pal_prefetch_visibility(void *v)
{
 s64 trans_type = (s64)v;
 ia64_pal_prefetch_visibility(trans_type);
}

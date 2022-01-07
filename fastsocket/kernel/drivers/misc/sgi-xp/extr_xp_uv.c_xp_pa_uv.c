
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long uv_gpa (void*) ;

__attribute__((used)) static unsigned long
xp_pa_uv(void *addr)
{
 return uv_gpa(addr);
}

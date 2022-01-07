
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* phandle ;


 int of_call_prom (char*,int,int,char const*) ;

void *of_finddevice(const char *name)
{
 return (phandle) of_call_prom("finddevice", 1, 1, name);
}

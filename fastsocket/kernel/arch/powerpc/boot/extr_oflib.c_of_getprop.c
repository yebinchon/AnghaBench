
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int of_call_prom (char*,int,int,void const*,char const*,void*,int const) ;

int of_getprop(const void *phandle, const char *name, void *buf,
        const int buflen)
{
 return of_call_prom("getprop", 4, 1, phandle, name, buf, buflen);
}

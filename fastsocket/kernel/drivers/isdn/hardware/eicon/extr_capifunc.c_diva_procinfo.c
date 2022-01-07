
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct capi_ctr {char* serial; } ;



__attribute__((used)) static char *diva_procinfo(struct capi_ctr *ctrl)
{
 return (ctrl->serial);
}

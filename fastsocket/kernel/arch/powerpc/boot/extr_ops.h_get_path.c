
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* (* get_path ) (void const*,char*,int) ;} ;


 TYPE_1__ dt_ops ;
 char* stub1 (void const*,char*,int) ;

__attribute__((used)) static inline char *get_path(const void *phandle, char *buf, int len)
{
 if (dt_ops.get_path)
  return dt_ops.get_path(phandle, buf, len);

 return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;

__attribute__((used)) static int is_bad(void *p)
{
 if (!p)
  return 1;
 if (IS_ERR(p) && (PTR_ERR(p) != -ENODEV))
  return 1;
 return 0;
}

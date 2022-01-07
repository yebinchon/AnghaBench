
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

__attribute__((used)) static int invalid_str(char *str, void *end)
{
 while ((void *) str < end)
  if (!*str++)
   return 0;

 return -EINVAL;
}

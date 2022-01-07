
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int onenand_check_overwrite(void *dest, void *src, size_t count)
{
 unsigned int *s = (unsigned int *) src;
 unsigned int *d = (unsigned int *) dest;
 int i;

 count >>= 2;
 for (i = 0; i < count; i++)
  if ((*s++ ^ *d++) != 0)
   return 1;

 return 0;
}

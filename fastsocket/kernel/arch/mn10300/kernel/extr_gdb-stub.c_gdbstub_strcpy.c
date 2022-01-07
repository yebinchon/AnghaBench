
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline char *gdbstub_strcpy(char *dst, const char *src)
{
 int loop = 0;
 while ((dst[loop] = src[loop]))
        loop++;
 return dst;
}

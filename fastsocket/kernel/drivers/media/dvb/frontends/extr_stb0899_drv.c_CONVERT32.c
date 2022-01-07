
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline void CONVERT32(u32 x, char *str)
{
 *str++ = (x >> 24) & 0xff;
 *str++ = (x >> 16) & 0xff;
 *str++ = (x >> 8) & 0xff;
 *str++ = (x >> 0) & 0xff;
 *str = '\0';
}

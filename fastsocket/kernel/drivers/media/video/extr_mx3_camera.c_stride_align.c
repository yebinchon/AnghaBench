
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __s32 ;



__attribute__((used)) static inline void stride_align(__s32 *width)
{
 if (((*width + 7) & ~7) < 4096)
  *width = (*width + 7) & ~7;
 else
  *width = *width & ~7;
}

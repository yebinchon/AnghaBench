
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int IB_CM_COMPARE_SIZE ;

__attribute__((used)) static void cm_mask_copy(u8 *dst, u8 *src, u8 *mask)
{
 int i;

 for (i = 0; i < IB_CM_COMPARE_SIZE / sizeof(unsigned long); i++)
  ((unsigned long *) dst)[i] = ((unsigned long *) src)[i] &
          ((unsigned long *) mask)[i];
}

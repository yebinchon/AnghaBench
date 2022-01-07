
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct sn9c102_device {int* reg; } ;


 size_t ARRAY_SIZE (int*) ;

int sn9c102_pread_reg(struct sn9c102_device* cam, u16 index)
{
 if (index >= ARRAY_SIZE(cam->reg))
  return -1;

 return cam->reg[index];
}

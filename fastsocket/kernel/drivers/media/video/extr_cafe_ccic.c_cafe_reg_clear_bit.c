
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cafe_camera {int dummy; } ;


 int cafe_reg_write_mask (struct cafe_camera*,unsigned int,int ,unsigned int) ;

__attribute__((used)) static inline void cafe_reg_clear_bit(struct cafe_camera *cam,
  unsigned int reg, unsigned int val)
{
 cafe_reg_write_mask(cam, reg, 0, val);
}

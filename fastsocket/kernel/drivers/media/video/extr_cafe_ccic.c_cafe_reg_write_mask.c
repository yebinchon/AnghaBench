
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cafe_camera {int dummy; } ;


 unsigned int cafe_reg_read (struct cafe_camera*,unsigned int) ;
 int cafe_reg_write (struct cafe_camera*,unsigned int,unsigned int) ;

__attribute__((used)) static inline void cafe_reg_write_mask(struct cafe_camera *cam, unsigned int reg,
  unsigned int val, unsigned int mask)
{
 unsigned int v = cafe_reg_read(cam, reg);

 v = (v & ~mask) | (val & mask);
 cafe_reg_write(cam, reg, v);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cafe_camera {scalar_t__ regs; } ;


 unsigned int ioread32 (scalar_t__) ;

__attribute__((used)) static inline unsigned int cafe_reg_read(struct cafe_camera *cam,
  unsigned int reg)
{
 return ioread32(cam->regs + reg);
}

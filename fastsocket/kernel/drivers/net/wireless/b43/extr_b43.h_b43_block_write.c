
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct b43_wldev {TYPE_1__* dev; } ;
struct TYPE_2__ {int (* block_write ) (TYPE_1__*,void const*,size_t,int ,int ) ;} ;


 int stub1 (TYPE_1__*,void const*,size_t,int ,int ) ;

__attribute__((used)) static inline void b43_block_write(struct b43_wldev *dev, const void *buffer,
       size_t count, u16 offset, u8 reg_width)
{
 dev->dev->block_write(dev->dev, buffer, count, offset, reg_width);
}

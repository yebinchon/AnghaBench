
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rt2x00_dev {TYPE_1__* ops; } ;
struct rt2800_ops {int (* register_write ) (struct rt2x00_dev*,unsigned int const,int ) ;} ;
struct TYPE_2__ {struct rt2800_ops* drv; } ;


 int stub1 (struct rt2x00_dev*,unsigned int const,int ) ;

__attribute__((used)) static inline void rt2800_register_write(struct rt2x00_dev *rt2x00dev,
      const unsigned int offset,
      u32 value)
{
 const struct rt2800_ops *rt2800ops = rt2x00dev->ops->drv;

 rt2800ops->register_write(rt2x00dev, offset, value);
}

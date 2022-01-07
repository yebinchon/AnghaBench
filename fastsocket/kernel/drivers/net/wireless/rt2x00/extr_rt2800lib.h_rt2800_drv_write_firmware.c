
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rt2x00_dev {TYPE_1__* ops; } ;
struct rt2800_ops {int (* drv_write_firmware ) (struct rt2x00_dev*,int const*,size_t const) ;} ;
struct TYPE_2__ {struct rt2800_ops* drv; } ;


 int stub1 (struct rt2x00_dev*,int const*,size_t const) ;

__attribute__((used)) static inline int rt2800_drv_write_firmware(struct rt2x00_dev *rt2x00dev,
         const u8 *data, const size_t len)
{
 const struct rt2800_ops *rt2800ops = rt2x00dev->ops->drv;

 return rt2800ops->drv_write_firmware(rt2x00dev, data, len);
}

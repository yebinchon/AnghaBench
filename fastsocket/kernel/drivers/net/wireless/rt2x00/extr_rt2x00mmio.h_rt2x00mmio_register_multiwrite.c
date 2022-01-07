
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ base; } ;
struct rt2x00_dev {TYPE_1__ csr; } ;


 int __iowrite32_copy (scalar_t__,void const*,int const) ;

__attribute__((used)) static inline void rt2x00mmio_register_multiwrite(struct rt2x00_dev *rt2x00dev,
        const unsigned int offset,
        const void *value,
        const u32 length)
{
 __iowrite32_copy(rt2x00dev->csr.base + offset, value, length >> 2);
}

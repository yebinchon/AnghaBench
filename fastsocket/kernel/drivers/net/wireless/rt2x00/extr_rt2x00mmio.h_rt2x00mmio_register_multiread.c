
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ base; } ;
struct rt2x00_dev {TYPE_1__ csr; } ;


 int memcpy_fromio (void*,scalar_t__,int const) ;

__attribute__((used)) static inline void rt2x00mmio_register_multiread(struct rt2x00_dev *rt2x00dev,
       const unsigned int offset,
       void *value, const u32 length)
{
 memcpy_fromio(value, rt2x00dev->csr.base + offset, length);
}

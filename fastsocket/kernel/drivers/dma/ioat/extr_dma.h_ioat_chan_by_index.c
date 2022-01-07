
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioatdma_device {struct ioat_chan_common** idx; } ;
struct ioat_chan_common {int dummy; } ;



__attribute__((used)) static inline struct ioat_chan_common *
ioat_chan_by_index(struct ioatdma_device *device, int index)
{
 return device->idx[index];
}

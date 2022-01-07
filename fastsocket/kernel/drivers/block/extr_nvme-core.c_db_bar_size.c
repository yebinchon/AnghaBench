
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_dev {int db_stride; } ;



__attribute__((used)) static size_t db_bar_size(struct nvme_dev *dev, unsigned nr_io_queues)
{
 return 4096 + ((nr_io_queues + 1) << (dev->db_stride + 3));
}

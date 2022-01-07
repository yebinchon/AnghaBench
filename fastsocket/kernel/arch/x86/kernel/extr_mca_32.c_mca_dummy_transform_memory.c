
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mca_device {int dummy; } ;



__attribute__((used)) static void *mca_dummy_transform_memory(struct mca_device *mca_dev, void *mem)
{
 return mem;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lguest_vqconfig {int dummy; } ;
struct device {int num_vq; scalar_t__ desc; } ;



__attribute__((used)) static u8 *get_feature_bits(struct device *dev)
{
 return (u8 *)(dev->desc + 1)
  + dev->num_vq * sizeof(struct lguest_vqconfig);
}

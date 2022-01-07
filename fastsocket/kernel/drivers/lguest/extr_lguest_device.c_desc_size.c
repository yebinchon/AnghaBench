
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lguest_vqconfig {int dummy; } ;
struct lguest_device_desc {int num_vq; int feature_len; int config_len; } ;



__attribute__((used)) static unsigned desc_size(const struct lguest_device_desc *desc)
{
 return sizeof(*desc)
  + desc->num_vq * sizeof(struct lguest_vqconfig)
  + desc->feature_len * 2
  + desc->config_len;
}

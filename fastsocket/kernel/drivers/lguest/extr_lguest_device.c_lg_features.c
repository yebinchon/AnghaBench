
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void u8 ;
struct lguest_device_desc {scalar_t__ num_vq; } ;


 scalar_t__ lg_vq (struct lguest_device_desc const*) ;

__attribute__((used)) static u8 *lg_features(const struct lguest_device_desc *desc)
{
 return (void *)(lg_vq(desc) + desc->num_vq);
}

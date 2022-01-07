
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void lguest_vqconfig ;
struct lguest_device_desc {int dummy; } ;



__attribute__((used)) static struct lguest_vqconfig *lg_vq(const struct lguest_device_desc *desc)
{
 return (void *)(desc + 1);
}

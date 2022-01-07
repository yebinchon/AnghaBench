
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ips_driver {int __gpu_turbo_on; } ;



__attribute__((used)) static void ips_enable_gpu_turbo(struct ips_driver *ips)
{
 if (ips->__gpu_turbo_on)
  return;
 ips->__gpu_turbo_on = 1;
}

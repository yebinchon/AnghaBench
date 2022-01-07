
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_device {int dummy; } ;
struct etr_aib {int dummy; } ;


 struct etr_aib etr_port0 ;
 struct sys_device etr_port0_dev ;
 scalar_t__ etr_port0_online ;
 struct etr_aib etr_port1 ;
 scalar_t__ etr_port1_online ;

__attribute__((used)) static inline struct etr_aib *etr_aib_from_dev(struct sys_device *dev)
{
 if (dev == &etr_port0_dev)
  return etr_port0_online ? &etr_port0 : ((void*)0);
 else
  return etr_port1_online ? &etr_port1 : ((void*)0);
}

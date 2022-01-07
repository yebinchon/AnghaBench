
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dca_provider {int dummy; } ;


 int MKDEV (int ,int) ;
 int dca_class ;
 int device_destroy (int ,int ) ;

void dca_sysfs_remove_req(struct dca_provider *dca, int slot)
{
 device_destroy(dca_class, MKDEV(0, slot + 1));
}

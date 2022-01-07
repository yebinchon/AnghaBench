
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int iscsi_destroy_flashnode_sess (int ) ;
 int iscsi_dev_to_flash_session (struct device*) ;
 int iscsi_flashnode_bus_match (struct device*,int *) ;

__attribute__((used)) static int iscsi_iter_destroy_flashnode_fn(struct device *dev, void *data)
{
 if (!iscsi_flashnode_bus_match(dev, ((void*)0)))
  return 0;

 iscsi_destroy_flashnode_sess(iscsi_dev_to_flash_session(dev));
 return 0;
}

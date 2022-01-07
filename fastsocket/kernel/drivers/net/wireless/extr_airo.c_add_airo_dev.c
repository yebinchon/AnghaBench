
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct airo_info {int dev_list; int pci; } ;


 int airo_devices ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void add_airo_dev(struct airo_info *ai)
{


 if (!ai->pci)
  list_add_tail(&ai->dev_list, &airo_devices);
}

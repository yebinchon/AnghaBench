
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct airo_info {int dev_list; int pci; } ;


 int list_del (int *) ;

__attribute__((used)) static void del_airo_dev(struct airo_info *ai)
{
 if (!ai->pci)
  list_del(&ai->dev_list);
}

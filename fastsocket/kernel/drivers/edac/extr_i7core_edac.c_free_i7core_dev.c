
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i7core_dev {struct i7core_dev* pdev; int list; } ;


 int kfree (struct i7core_dev*) ;
 int list_del (int *) ;

__attribute__((used)) static void free_i7core_dev(struct i7core_dev *i7core_dev)
{
 list_del(&i7core_dev->list);
 kfree(i7core_dev->pdev);
 kfree(i7core_dev);
}

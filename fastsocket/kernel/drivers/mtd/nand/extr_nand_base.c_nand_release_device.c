
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nand_chip {TYPE_1__* controller; int state; int (* select_chip ) (struct mtd_info*,int) ;} ;
struct mtd_info {struct nand_chip* priv; } ;
struct TYPE_2__ {int lock; int wq; int * active; } ;


 int FL_READY ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct mtd_info*,int) ;
 int wake_up (int *) ;

__attribute__((used)) static void nand_release_device(struct mtd_info *mtd)
{
 struct nand_chip *chip = mtd->priv;


 chip->select_chip(mtd, -1);


 spin_lock(&chip->controller->lock);
 chip->controller->active = ((void*)0);
 chip->state = FL_READY;
 wake_up(&chip->controller->wq);
 spin_unlock(&chip->controller->lock);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int misc_opened; int irq; int async_queue; } ;


 int clear_bit (int ,int *) ;
 int fasync_helper (int,struct file*,int ,int *) ;
 int free_irq (int ,TYPE_1__*) ;
 TYPE_1__ lis3_dev ;

__attribute__((used)) static int lis3lv02d_misc_release(struct inode *inode, struct file *file)
{
 fasync_helper(-1, file, 0, &lis3_dev.async_queue);
 free_irq(lis3_dev.irq, &lis3_dev);
 clear_bit(0, &lis3_dev.misc_opened);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcraid_instance {int aen_queue; } ;
struct inode {int dummy; } ;
struct file {struct pmcraid_instance* private_data; } ;


 int fasync_helper (int,struct file*,int ,int *) ;

__attribute__((used)) static int pmcraid_chr_release(struct inode *inode, struct file *filep)
{
 struct pmcraid_instance *pinstance = filep->private_data;

 filep->private_data = ((void*)0);
 fasync_helper(-1, filep, 0, &pinstance->aen_queue);

 return 0;
}

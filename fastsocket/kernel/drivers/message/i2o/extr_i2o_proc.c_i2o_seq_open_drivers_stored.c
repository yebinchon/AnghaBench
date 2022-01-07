
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int data; } ;


 TYPE_1__* PDE (struct inode*) ;
 int i2o_seq_show_drivers_stored ;
 int single_open (struct file*,int ,int ) ;

__attribute__((used)) static int i2o_seq_open_drivers_stored(struct inode *inode, struct file *file)
{
 return single_open(file, i2o_seq_show_drivers_stored, PDE(inode)->data);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int data; } ;


 TYPE_1__* PDE (struct inode*) ;
 int acpi_thermal_polling_seq_show ;
 int single_open (struct file*,int ,int ) ;

__attribute__((used)) static int acpi_thermal_polling_open_fs(struct inode *inode, struct file *file)
{
 return single_open(file, acpi_thermal_polling_seq_show,
      PDE(inode)->data);
}

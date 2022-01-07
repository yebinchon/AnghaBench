
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subch_data_s {int sd_subch; int sd_nasid; } ;
struct inode {int dummy; } ;
struct file {scalar_t__ private_data; } ;


 int SGI_UART_VECTOR ;
 int free_irq (int ,struct subch_data_s*) ;
 int ia64_sn_irtr_close (int ,int ) ;
 int kfree (struct subch_data_s*) ;

__attribute__((used)) static int
scdrv_release(struct inode *inode, struct file *file)
{
 struct subch_data_s *sd = (struct subch_data_s *) file->private_data;
 int rv;


 free_irq(SGI_UART_VECTOR, sd);


 rv = ia64_sn_irtr_close(sd->sd_nasid, sd->sd_subch);

 kfree(sd);
 return rv;
}

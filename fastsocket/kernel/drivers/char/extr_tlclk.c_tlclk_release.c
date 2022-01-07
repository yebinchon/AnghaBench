
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int clear_bit (int ,int *) ;
 int free_irq (int ,int ) ;
 int telclk_interrupt ;
 int tlclk_interrupt ;
 int useflags ;

__attribute__((used)) static int tlclk_release(struct inode *inode, struct file *filp)
{
 free_irq(telclk_interrupt, tlclk_interrupt);
 clear_bit(0, &useflags);

 return 0;
}

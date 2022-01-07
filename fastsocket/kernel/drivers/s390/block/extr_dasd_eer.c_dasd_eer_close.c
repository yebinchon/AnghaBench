
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {scalar_t__ private_data; } ;
struct eerbuffer {struct eerbuffer* buffer; int buffer_page_count; int list; } ;


 int bufferlock ;
 int dasd_eer_free_buffer_pages (struct eerbuffer*,int ) ;
 int kfree (struct eerbuffer*) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int dasd_eer_close(struct inode *inp, struct file *filp)
{
 struct eerbuffer *eerb;
 unsigned long flags;

 eerb = (struct eerbuffer *) filp->private_data;
 spin_lock_irqsave(&bufferlock, flags);
 list_del(&eerb->list);
 spin_unlock_irqrestore(&bufferlock, flags);
 dasd_eer_free_buffer_pages(eerb->buffer, eerb->buffer_page_count);
 kfree(eerb->buffer);
 kfree(eerb);

 return 0;
}

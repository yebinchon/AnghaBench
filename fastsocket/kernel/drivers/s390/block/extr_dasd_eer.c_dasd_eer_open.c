
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct eerbuffer* private_data; } ;
struct eerbuffer {int buffer_page_count; int buffersize; int list; struct eerbuffer* buffer; } ;


 int DBF_EVENT (int ,char*,int) ;
 int DBF_WARNING ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INT_MAX ;
 int PAGE_SIZE ;
 int bufferlist ;
 int bufferlock ;
 scalar_t__ dasd_eer_allocate_buffer_pages (struct eerbuffer*,int) ;
 int eer_pages ;
 int kfree (struct eerbuffer*) ;
 struct eerbuffer* kmalloc (int,int ) ;
 struct eerbuffer* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int lock_kernel () ;
 int nonseekable_open (struct inode*,struct file*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int unlock_kernel () ;

__attribute__((used)) static int dasd_eer_open(struct inode *inp, struct file *filp)
{
 struct eerbuffer *eerb;
 unsigned long flags;

 eerb = kzalloc(sizeof(struct eerbuffer), GFP_KERNEL);
 if (!eerb)
  return -ENOMEM;
 lock_kernel();
 eerb->buffer_page_count = eer_pages;
 if (eerb->buffer_page_count < 1 ||
     eerb->buffer_page_count > INT_MAX / PAGE_SIZE) {
  kfree(eerb);
  DBF_EVENT(DBF_WARNING, "can't open device since module "
   "parameter eer_pages is smaller than 1 or"
   " bigger than %d", (int)(INT_MAX / PAGE_SIZE));
  unlock_kernel();
  return -EINVAL;
 }
 eerb->buffersize = eerb->buffer_page_count * PAGE_SIZE;
 eerb->buffer = kmalloc(eerb->buffer_page_count * sizeof(char *),
          GFP_KERNEL);
        if (!eerb->buffer) {
  kfree(eerb);
  unlock_kernel();
                return -ENOMEM;
 }
 if (dasd_eer_allocate_buffer_pages(eerb->buffer,
        eerb->buffer_page_count)) {
  kfree(eerb->buffer);
  kfree(eerb);
  unlock_kernel();
  return -ENOMEM;
 }
 filp->private_data = eerb;
 spin_lock_irqsave(&bufferlock, flags);
 list_add(&eerb->list, &bufferlist);
 spin_unlock_irqrestore(&bufferlock, flags);

 unlock_kernel();
 return nonseekable_open(inp,filp);
}

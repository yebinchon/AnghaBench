
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_unit {int flags; int available; int name; int * bufptr; int present; } ;
struct inode {int dummy; } ;
struct file {int f_mode; struct pt_unit* private_data; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int EROFS ;
 int FMODE_WRITE ;
 int GFP_KERNEL ;
 int PT_BUFSIZE ;
 int PT_MEDIA ;
 int PT_REWIND ;
 int PT_UNITS ;
 int PT_WRITE_OK ;
 int atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int iminor (struct inode*) ;
 int * kmalloc (int ,int ) ;
 int lock_kernel () ;
 int printk (char*,int ) ;
 struct pt_unit* pt ;
 int pt_identify (struct pt_unit*) ;
 int unlock_kernel () ;

__attribute__((used)) static int pt_open(struct inode *inode, struct file *file)
{
 int unit = iminor(inode) & 0x7F;
 struct pt_unit *tape = pt + unit;
 int err;

 lock_kernel();
 if (unit >= PT_UNITS || (!tape->present)) {
  unlock_kernel();
  return -ENODEV;
 }

 err = -EBUSY;
 if (!atomic_dec_and_test(&tape->available))
  goto out;

 pt_identify(tape);

 err = -ENODEV;
 if (!(tape->flags & PT_MEDIA))
  goto out;

 err = -EROFS;
 if ((!(tape->flags & PT_WRITE_OK)) && (file->f_mode & FMODE_WRITE))
  goto out;

 if (!(iminor(inode) & 128))
  tape->flags |= PT_REWIND;

 err = -ENOMEM;
 tape->bufptr = kmalloc(PT_BUFSIZE, GFP_KERNEL);
 if (tape->bufptr == ((void*)0)) {
  printk("%s: buffer allocation failed\n", tape->name);
  goto out;
 }

 file->private_data = tape;
 unlock_kernel();
 return 0;

out:
 atomic_inc(&tape->available);
 unlock_kernel();
 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_unit {int flags; int available; int * bufptr; } ;
struct inode {int dummy; } ;
struct file {struct pt_unit* private_data; } ;


 int EINVAL ;
 int PT_REWIND ;
 int PT_WRITING ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int kfree (int *) ;
 int pt_rewind (struct pt_unit*) ;
 int pt_write_fm (struct pt_unit*) ;

__attribute__((used)) static int
pt_release(struct inode *inode, struct file *file)
{
 struct pt_unit *tape = file->private_data;

 if (atomic_read(&tape->available) > 1)
  return -EINVAL;

 if (tape->flags & PT_WRITING)
  pt_write_fm(tape);

 if (tape->flags & PT_REWIND)
  pt_rewind(tape);

 kfree(tape->bufptr);
 tape->bufptr = ((void*)0);

 atomic_inc(&tape->available);

 return 0;

}

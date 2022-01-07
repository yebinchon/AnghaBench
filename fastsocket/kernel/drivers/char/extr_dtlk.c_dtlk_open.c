
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;



 int EBUSY ;
 int ENXIO ;
 int TRACE_TEXT (char*) ;
 int cycle_kernel_lock () ;
 int dtlk_busy ;
 int iminor (struct inode*) ;
 int nonseekable_open (struct inode*,struct file*) ;

__attribute__((used)) static int dtlk_open(struct inode *inode, struct file *file)
{
 TRACE_TEXT("(dtlk_open");

 cycle_kernel_lock();
 nonseekable_open(inode, file);
 switch (iminor(inode)) {
 case 128:
  if (dtlk_busy)
   return -EBUSY;
  return nonseekable_open(inode, file);

 default:
  return -ENXIO;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tape_device {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {struct tape_device* private_data; TYPE_2__ f_path; } ;
struct TYPE_3__ {int d_inode; } ;


 int DBF_EVENT (int,char*,...) ;
 int ENODEV ;
 scalar_t__ IS_ERR (struct tape_device*) ;
 int PTR_ERR (struct tape_device*) ;
 int TAPE_MINORS_PER_DEV ;
 scalar_t__ imajor (int ) ;
 int iminor (int ) ;
 int lock_kernel () ;
 int nonseekable_open (struct inode*,struct file*) ;
 struct tape_device* tape_get_device (int) ;
 int tape_open (struct tape_device*) ;
 int tape_put_device (struct tape_device*) ;
 scalar_t__ tapechar_major ;
 int unlock_kernel () ;

__attribute__((used)) static int
tapechar_open (struct inode *inode, struct file *filp)
{
 struct tape_device *device;
 int minor, rc;

 DBF_EVENT(6, "TCHAR:open: %i:%i\n",
  imajor(filp->f_path.dentry->d_inode),
  iminor(filp->f_path.dentry->d_inode));

 if (imajor(filp->f_path.dentry->d_inode) != tapechar_major)
  return -ENODEV;

 lock_kernel();
 minor = iminor(filp->f_path.dentry->d_inode);
 device = tape_get_device(minor / TAPE_MINORS_PER_DEV);
 if (IS_ERR(device)) {
  DBF_EVENT(3, "TCHAR:open: tape_get_device() failed\n");
  rc = PTR_ERR(device);
  goto out;
 }


 rc = tape_open(device);
 if (rc == 0) {
  filp->private_data = device;
  rc = nonseekable_open(inode, filp);
 }
 else
  tape_put_device(device);

out:
 unlock_kernel();
 return rc;
}

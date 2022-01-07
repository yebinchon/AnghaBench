
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtc_device {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct rtc_device* data; } ;


 int ENODEV ;
 TYPE_1__* PDE (struct inode*) ;
 int THIS_MODULE ;
 int rtc_proc_show ;
 int single_open (struct file*,int ,struct rtc_device*) ;
 int try_module_get (int ) ;

__attribute__((used)) static int rtc_proc_open(struct inode *inode, struct file *file)
{
 struct rtc_device *rtc = PDE(inode)->data;

 if (!try_module_get(THIS_MODULE))
  return -ENODEV;

 return single_open(file, rtc_proc_show, rtc);
}

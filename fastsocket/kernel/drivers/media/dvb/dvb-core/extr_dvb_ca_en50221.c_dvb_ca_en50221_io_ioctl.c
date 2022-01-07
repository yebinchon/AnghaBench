
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int dvb_ca_en50221_io_do_ioctl ;
 int dvb_usercopy (struct inode*,struct file*,unsigned int,unsigned long,int ) ;

__attribute__((used)) static int dvb_ca_en50221_io_ioctl(struct inode *inode, struct file *file,
        unsigned int cmd, unsigned long arg)
{
 return dvb_usercopy(inode, file, cmd, arg, dvb_ca_en50221_io_do_ioctl);
}

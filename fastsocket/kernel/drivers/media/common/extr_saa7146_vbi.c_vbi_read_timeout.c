
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {int dummy; } ;
struct file {struct saa7146_fh* private_data; } ;


 int DEB_VBI (char*) ;
 int vbi_stop (struct saa7146_fh*,struct file*) ;

__attribute__((used)) static void vbi_read_timeout(unsigned long data)
{
 struct file *file = (struct file*)data;
 struct saa7146_fh *fh = file->private_data;
 struct saa7146_dev *dev = fh->dev;

 DEB_VBI(("dev:%p, fh:%p\n",dev, fh));

 vbi_stop(fh, file);
}

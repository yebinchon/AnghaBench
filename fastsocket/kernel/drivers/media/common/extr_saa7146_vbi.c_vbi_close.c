
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7146_vv {struct saa7146_fh* vbi_streaming; } ;
struct saa7146_fh {int dummy; } ;
struct saa7146_dev {struct saa7146_vv* vv_data; } ;
struct file {struct saa7146_fh* private_data; } ;


 int DEB_VBI (char*) ;
 int RESOURCE_DMA3_BRS ;
 int saa7146_res_free (struct saa7146_fh*,int ) ;
 int vbi_stop (struct saa7146_fh*,struct file*) ;

__attribute__((used)) static void vbi_close(struct saa7146_dev *dev, struct file *file)
{
 struct saa7146_fh *fh = file->private_data;
 struct saa7146_vv *vv = dev->vv_data;
 DEB_VBI(("dev:%p, fh:%p\n",dev,fh));

 if( fh == vv->vbi_streaming ) {
  vbi_stop(fh, file);
 }
 saa7146_res_free(fh, RESOURCE_DMA3_BRS);
}

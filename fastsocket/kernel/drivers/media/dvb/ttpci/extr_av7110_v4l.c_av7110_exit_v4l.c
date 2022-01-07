
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7146_dev {int dummy; } ;
struct av7110 {struct saa7146_dev* dev; int vbi_dev; int v4l_dev; } ;


 int saa7146_unregister_device (int *,struct saa7146_dev*) ;
 int saa7146_vv_release (struct saa7146_dev*) ;

int av7110_exit_v4l(struct av7110 *av7110)
{
 struct saa7146_dev* dev = av7110->dev;

 saa7146_unregister_device(&av7110->v4l_dev, av7110->dev);
 saa7146_unregister_device(&av7110->vbi_dev, av7110->dev);

 saa7146_vv_release(dev);

 return 0;
}

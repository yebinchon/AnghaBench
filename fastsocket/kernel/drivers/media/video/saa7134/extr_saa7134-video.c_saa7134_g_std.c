
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct saa7134_fh {struct saa7134_dev* dev; } ;
struct saa7134_dev {TYPE_1__* tvnorm; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int id; } ;



__attribute__((used)) static int saa7134_g_std(struct file *file, void *priv, v4l2_std_id *id)
{
 struct saa7134_fh *fh = priv;
 struct saa7134_dev *dev = fh->dev;

 *id = dev->tvnorm->id;
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct saa7134_dev {TYPE_1__* tvnorm; } ;
struct file {struct saa7134_dev* private_data; } ;
struct TYPE_2__ {int id; } ;



__attribute__((used)) static int empress_g_std(struct file *file, void *priv, v4l2_std_id *id)
{
 struct saa7134_dev *dev = file->private_data;

 *id = dev->tvnorm->id;
 return 0;
}

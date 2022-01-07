
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct saa7134_dev {int dummy; } ;
struct file {struct saa7134_dev* private_data; } ;


 int saa7134_s_std_internal (struct saa7134_dev*,int *,int *) ;

__attribute__((used)) static int empress_s_std(struct file *file, void *priv, v4l2_std_id *id)
{
 struct saa7134_dev *dev = file->private_data;

 return saa7134_s_std_internal(dev, ((void*)0), id);
}

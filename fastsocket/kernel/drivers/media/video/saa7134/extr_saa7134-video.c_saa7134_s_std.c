
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct saa7134_fh {int dev; } ;
struct file {int dummy; } ;


 int saa7134_s_std_internal (int ,struct saa7134_fh*,int *) ;

__attribute__((used)) static int saa7134_s_std(struct file *file, void *priv, v4l2_std_id *id)
{
 struct saa7134_fh *fh = priv;

 return saa7134_s_std_internal(fh->dev, fh, id);
}

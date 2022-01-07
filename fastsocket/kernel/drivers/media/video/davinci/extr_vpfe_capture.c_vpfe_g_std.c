
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct vpfe_device {size_t std_index; int v4l2_dev; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int std_id; } ;


 int debug ;
 int v4l2_dbg (int,int ,int *,char*) ;
 struct vpfe_device* video_drvdata (struct file*) ;
 TYPE_1__* vpfe_standards ;

__attribute__((used)) static int vpfe_g_std(struct file *file, void *priv, v4l2_std_id *std_id)
{
 struct vpfe_device *vpfe_dev = video_drvdata(file);

 v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_g_std\n");

 *std_id = vpfe_standards[vpfe_dev->std_index].std_id;
 return 0;
}

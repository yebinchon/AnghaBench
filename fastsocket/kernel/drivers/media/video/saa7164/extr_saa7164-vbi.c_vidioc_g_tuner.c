
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; int capability; int type; int name; } ;
struct saa7164_vbi_fh {struct saa7164_port* port; } ;
struct saa7164_port {struct saa7164_dev* dev; } ;
struct saa7164_dev {int dummy; } ;
struct file {struct saa7164_vbi_fh* private_data; } ;


 int DBGLVL_VBI ;
 int EINVAL ;
 int V4L2_TUNER_ANALOG_TV ;
 int V4L2_TUNER_CAP_NORM ;
 int V4L2_TUNER_CAP_STEREO ;
 int dprintk (int ,char*,int ) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int vidioc_g_tuner(struct file *file, void *priv,
 struct v4l2_tuner *t)
{
 struct saa7164_vbi_fh *fh = file->private_data;
 struct saa7164_port *port = fh->port;
 struct saa7164_dev *dev = port->dev;

 if (0 != t->index)
  return -EINVAL;

 strcpy(t->name, "tuner");
 t->type = V4L2_TUNER_ANALOG_TV;
 t->capability = V4L2_TUNER_CAP_NORM | V4L2_TUNER_CAP_STEREO;

 dprintk(DBGLVL_VBI, "VIDIOC_G_TUNER: tuner type %d\n", t->type);

 return 0;
}

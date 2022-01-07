
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int frequency; int type; } ;
struct saa7164_vbi_fh {struct saa7164_port* port; } ;
struct saa7164_port {int freq; } ;
struct file {struct saa7164_vbi_fh* private_data; } ;


 int V4L2_TUNER_ANALOG_TV ;

__attribute__((used)) static int vidioc_g_frequency(struct file *file, void *priv,
 struct v4l2_frequency *f)
{
 struct saa7164_vbi_fh *fh = file->private_data;
 struct saa7164_port *port = fh->port;

 f->type = V4L2_TUNER_ANALOG_TV;
 f->frequency = port->freq;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_queryctrl {int id; } ;
struct saa7164_port {int encoder_params; } ;
struct saa7164_encoder_fh {struct saa7164_port* port; } ;
struct file {int dummy; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int EINVAL ;
 int V4L2_CTRL_FLAG_NEXT_CTRL ;
 int fill_queryctrl (int *,struct v4l2_queryctrl*) ;
 int memset (struct v4l2_queryctrl*,int ,int) ;
 scalar_t__* saa7164_v4l2_ctrls ;

__attribute__((used)) static int vidioc_queryctrl(struct file *file, void *priv,
 struct v4l2_queryctrl *c)
{
 struct saa7164_encoder_fh *fh = priv;
 struct saa7164_port *port = fh->port;
 int i, next;
 u32 id = c->id;

 memset(c, 0, sizeof(*c));

 next = !!(id & V4L2_CTRL_FLAG_NEXT_CTRL);
 c->id = id & ~V4L2_CTRL_FLAG_NEXT_CTRL;

 for (i = 0; i < ARRAY_SIZE(saa7164_v4l2_ctrls); i++) {
  if (next) {
   if (c->id < saa7164_v4l2_ctrls[i])
    c->id = saa7164_v4l2_ctrls[i];
   else
    continue;
  }

  if (c->id == saa7164_v4l2_ctrls[i])
   return fill_queryctrl(&port->encoder_params, c);

  if (c->id < saa7164_v4l2_ctrls[i])
   break;
 }

 return -EINVAL;
}

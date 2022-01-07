
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firedtv_backend {int dummy; } ;
struct firedtv {int isochannel; int voltage; int tone; int type; int remote_ctrl_work; int demux_mutex; int avc_wait; int avc_mutex; struct firedtv_backend const* backend; struct device* device; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int avc_remote_ctrl_work ;
 int dev_set_drvdata (struct device*,struct firedtv*) ;
 int * fdtv_model_names ;
 int init_waitqueue_head (int *) ;
 struct firedtv* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 size_t strlen (int ) ;
 scalar_t__ strncmp (char const*,int ,size_t) ;

struct firedtv *fdtv_alloc(struct device *dev,
      const struct firedtv_backend *backend,
      const char *name, size_t name_len)
{
 struct firedtv *fdtv;
 int i;

 fdtv = kzalloc(sizeof(*fdtv), GFP_KERNEL);
 if (!fdtv)
  return ((void*)0);

 dev_set_drvdata(dev, fdtv);
 fdtv->device = dev;
 fdtv->isochannel = -1;
 fdtv->voltage = 0xff;
 fdtv->tone = 0xff;
 fdtv->backend = backend;

 mutex_init(&fdtv->avc_mutex);
 init_waitqueue_head(&fdtv->avc_wait);
 mutex_init(&fdtv->demux_mutex);
 INIT_WORK(&fdtv->remote_ctrl_work, avc_remote_ctrl_work);

 for (i = ARRAY_SIZE(fdtv_model_names); --i; )
  if (strlen(fdtv_model_names[i]) <= name_len &&
      strncmp(name, fdtv_model_names[i], name_len) == 0)
   break;
 fdtv->type = i;

 return fdtv;
}

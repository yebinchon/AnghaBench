
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct cx231xx_fh {struct cx231xx* dev; } ;
struct cx231xx {char* name; int mpeg_params; } ;
typedef int name ;


 int call_all (struct cx231xx*,int ,int ) ;
 int core ;
 int cx2341x_log_status (int *,char*) ;
 int dprintk (int,char*,char*) ;
 int log_status ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static int vidioc_log_status(struct file *file, void *priv)
{
 struct cx231xx_fh *fh = priv;
 struct cx231xx *dev = fh->dev;
 char name[32 + 2];

 snprintf(name, sizeof(name), "%s/2", dev->name);
 dprintk(3,
  "%s/2: ============  START LOG STATUS  ============\n",
        dev->name);
 call_all(dev, core, log_status);
 cx2341x_log_status(&dev->mpeg_params, name);
 dprintk(3,
  "%s/2: =============  END LOG STATUS  =============\n",
        dev->name);
 return 0;
}

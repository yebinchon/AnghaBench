
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct cx88_core {char* name; } ;
struct cx8802_fh {struct cx8802_dev* dev; } ;
struct cx8802_dev {int params; struct cx88_core* core; } ;
typedef int name ;


 int call_all (struct cx88_core*,struct cx88_core*,int ) ;
 int cx2341x_log_status (int *,char*) ;
 int log_status ;
 int printk (char*,char*) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static int vidioc_log_status (struct file *file, void *priv)
{
 struct cx8802_dev *dev = ((struct cx8802_fh *)priv)->dev;
 struct cx88_core *core = dev->core;
 char name[32 + 2];

 snprintf(name, sizeof(name), "%s/2", core->name);
 printk("%s/2: ============  START LOG STATUS  ============\n",
  core->name);
 call_all(core, core, log_status);
 cx2341x_log_status(&dev->params, name);
 printk("%s/2: =============  END LOG STATUS  =============\n",
  core->name);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct cx88_core {unsigned int input; } ;
struct cx8802_fh {TYPE_1__* dev; } ;
struct TYPE_2__ {struct cx88_core* core; } ;



__attribute__((used)) static int vidioc_g_input (struct file *file, void *priv, unsigned int *i)
{
 struct cx88_core *core = ((struct cx8802_fh *)priv)->dev->core;

 *i = core->input;
 return 0;
}

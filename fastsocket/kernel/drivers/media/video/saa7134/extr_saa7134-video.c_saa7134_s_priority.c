
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_fh {int prio; struct saa7134_dev* dev; } ;
struct saa7134_dev {int prio; } ;
struct file {int dummy; } ;
typedef enum v4l2_priority { ____Placeholder_v4l2_priority } v4l2_priority ;


 int v4l2_prio_change (int *,int *,int) ;

__attribute__((used)) static int saa7134_s_priority(struct file *file, void *f,
     enum v4l2_priority prio)
{
 struct saa7134_fh *fh = f;
 struct saa7134_dev *dev = fh->dev;

 return v4l2_prio_change(&dev->prio, &fh->prio, prio);
}

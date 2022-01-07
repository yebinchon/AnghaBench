
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct saa7164_dev {int lock; TYPE_1__* cmds; } ;
struct TYPE_2__ {int inuse; int seqno; scalar_t__ timeout; scalar_t__ signalled; } ;


 int SAA_CMD_MAX_MSG_UNITS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int saa7164_cmd_alloc_seqno(struct saa7164_dev *dev)
{
 int i, ret = -1;

 mutex_lock(&dev->lock);
 for (i = 0; i < SAA_CMD_MAX_MSG_UNITS; i++) {
  if (dev->cmds[i].inuse == 0) {
   dev->cmds[i].inuse = 1;
   dev->cmds[i].signalled = 0;
   dev->cmds[i].timeout = 0;
   ret = dev->cmds[i].seqno;
   break;
  }
 }
 mutex_unlock(&dev->lock);

 return ret;
}

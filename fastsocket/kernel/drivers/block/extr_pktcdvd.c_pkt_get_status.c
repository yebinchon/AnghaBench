
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pktcdvd_device {int pkt_dev; TYPE_1__* bdev; } ;
struct pkt_ctrl_command {int num_devices; void* pkt_dev; void* dev; int dev_index; } ;
struct TYPE_2__ {int bd_dev; } ;


 int MAX_WRITERS ;
 int SINGLE_DEPTH_NESTING ;
 int ctl_mutex ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 void* new_encode_dev (int ) ;
 struct pktcdvd_device* pkt_find_dev_from_minor (int ) ;

__attribute__((used)) static void pkt_get_status(struct pkt_ctrl_command *ctrl_cmd)
{
 struct pktcdvd_device *pd;

 mutex_lock_nested(&ctl_mutex, SINGLE_DEPTH_NESTING);

 pd = pkt_find_dev_from_minor(ctrl_cmd->dev_index);
 if (pd) {
  ctrl_cmd->dev = new_encode_dev(pd->bdev->bd_dev);
  ctrl_cmd->pkt_dev = new_encode_dev(pd->pkt_dev);
 } else {
  ctrl_cmd->dev = 0;
  ctrl_cmd->pkt_dev = 0;
 }
 ctrl_cmd->num_devices = MAX_WRITERS;

 mutex_unlock(&ctl_mutex);
}

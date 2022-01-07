
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct enic {scalar_t__ msg_enable; int netdev; int vdev; } ;


 int netdev_info (int ,char*,scalar_t__,scalar_t__) ;
 scalar_t__ vnic_dev_msg_lvl (int ) ;

__attribute__((used)) static void enic_msglvl_check(struct enic *enic)
{
 u32 msg_enable = vnic_dev_msg_lvl(enic->vdev);

 if (msg_enable != enic->msg_enable) {
  netdev_info(enic->netdev, "msg lvl changed from 0x%x to 0x%x\n",
   enic->msg_enable, msg_enable);
  enic->msg_enable = msg_enable;
 }
}

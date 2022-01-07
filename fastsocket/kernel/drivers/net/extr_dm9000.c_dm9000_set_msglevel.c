
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int msg_enable; } ;
typedef TYPE_1__ board_info_t ;


 TYPE_1__* to_dm9000_board (struct net_device*) ;

__attribute__((used)) static void dm9000_set_msglevel(struct net_device *dev, u32 value)
{
 board_info_t *dm = to_dm9000_board(dev);

 dm->msg_enable = value;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ avg_weight; scalar_t__ avg; } ;
struct TYPE_5__ {TYPE_1__ rssi_ant; } ;
struct TYPE_6__ {TYPE_2__ ant; } ;
struct rt2x00_dev {TYPE_3__ link; } ;



__attribute__((used)) static void rt2x00link_antenna_reset(struct rt2x00_dev *rt2x00dev)
{
 rt2x00dev->link.ant.rssi_ant.avg = 0;
 rt2x00dev->link.ant.rssi_ant.avg_weight = 0;
}

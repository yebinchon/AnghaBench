
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct link_qual {scalar_t__ tx_failed; scalar_t__ tx_success; scalar_t__ rx_failed; scalar_t__ rx_success; } ;
struct TYPE_2__ {struct link_qual qual; } ;
struct rt2x00_dev {TYPE_1__ link; } ;



__attribute__((used)) static void rt2x00link_reset_qual(struct rt2x00_dev *rt2x00dev)
{
 struct link_qual *qual = &rt2x00dev->link.qual;

 qual->rx_success = 0;
 qual->rx_failed = 0;
 qual->tx_success = 0;
 qual->tx_failed = 0;
}

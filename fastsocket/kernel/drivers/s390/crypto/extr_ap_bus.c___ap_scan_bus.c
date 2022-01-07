
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
typedef scalar_t__ ap_qid_t ;
struct TYPE_2__ {scalar_t__ qid; } ;


 TYPE_1__* to_ap_dev (struct device*) ;

__attribute__((used)) static int __ap_scan_bus(struct device *dev, void *data)
{
 return to_ap_dev(dev)->qid == (ap_qid_t)(unsigned long) data;
}

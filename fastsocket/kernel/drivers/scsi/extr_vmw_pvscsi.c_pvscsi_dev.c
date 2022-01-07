
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pvscsi_adapter {TYPE_1__* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;



__attribute__((used)) static struct device *
pvscsi_dev(const struct pvscsi_adapter *adapter)
{
 return &(adapter->dev->dev);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device_attr {int local_ca_ack_delay; } ;
struct cm_device {int ack_delay; int ib_device; } ;


 scalar_t__ ib_query_device (int ,struct ib_device_attr*) ;

__attribute__((used)) static void cm_get_ack_delay(struct cm_device *cm_dev)
{
 struct ib_device_attr attr;

 if (ib_query_device(cm_dev->ib_device, &attr))
  cm_dev->ack_delay = 0;
 else
  cm_dev->ack_delay = attr.local_ca_ack_delay;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hso_device {int dummy; } ;


 int HSO_MAX_NET_DEVICES ;
 struct hso_device** network_table ;

__attribute__((used)) static int add_net_device(struct hso_device *hso_dev)
{
 int i;

 for (i = 0; i < HSO_MAX_NET_DEVICES; i++) {
  if (network_table[i] == ((void*)0)) {
   network_table[i] = hso_dev;
   break;
  }
 }
 if (i == HSO_MAX_NET_DEVICES)
  return -1;
 return 0;
}

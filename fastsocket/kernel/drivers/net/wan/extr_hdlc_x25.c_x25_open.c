
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct lapb_register_struct {int data_transmit; int data_indication; void* disconnect_indication; void* disconnect_confirmation; void* connect_indication; void* connect_confirmation; } ;


 int LAPB_OK ;
 int lapb_register (struct net_device*,struct lapb_register_struct*) ;
 void* x25_connected ;
 int x25_data_indication ;
 int x25_data_transmit ;
 void* x25_disconnected ;

__attribute__((used)) static int x25_open(struct net_device *dev)
{
 struct lapb_register_struct cb;
 int result;

 cb.connect_confirmation = x25_connected;
 cb.connect_indication = x25_connected;
 cb.disconnect_confirmation = x25_disconnected;
 cb.disconnect_indication = x25_disconnected;
 cb.data_indication = x25_data_indication;
 cb.data_transmit = x25_data_transmit;

 result = lapb_register(dev, &cb);
 if (result != LAPB_OK)
  return result;
 return 0;
}

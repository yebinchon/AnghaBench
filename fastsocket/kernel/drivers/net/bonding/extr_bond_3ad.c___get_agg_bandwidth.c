
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aggregator {int num_of_ports; int lag_ports; } ;







 int __get_link_speed (int ) ;

__attribute__((used)) static u32 __get_agg_bandwidth(struct aggregator *aggregator)
{
 u32 bandwidth=0;
 u32 basic_speed;

 if (aggregator->num_of_ports) {
  basic_speed = __get_link_speed(aggregator->lag_ports);
  switch (basic_speed) {
  case 128:
   bandwidth = aggregator->num_of_ports;
   break;
  case 129:
   bandwidth = aggregator->num_of_ports * 10;
   break;
  case 130:
   bandwidth = aggregator->num_of_ports * 100;
   break;
  case 131:
   bandwidth = aggregator->num_of_ports * 1000;
   break;
  case 132:
   bandwidth = aggregator->num_of_ports * 10000;
   break;
  default:
   bandwidth=0;
  }
 }
 return bandwidth;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {void* tx_bytes; void* rx_bytes; void* tx_packets; void* rx_packets; } ;


 int memset (struct net_device_stats*,int ,int) ;
 void* pm3386_get_stat (int,int) ;
 int pm3386_port_reg_read (int,int,int) ;
 int pm3386_port_reg_write (int,int,int,int) ;

void pm3386_get_stats(int port, struct net_device_stats *stats)
{



 pm3386_port_reg_write(port, 0x500, 0x100, 0x0001);
 while (pm3386_port_reg_read(port, 0x500, 0x100) & 0x0001)
  ;

 memset(stats, 0, sizeof(*stats));

 stats->rx_packets = pm3386_get_stat(port, 0x510);
 stats->tx_packets = pm3386_get_stat(port, 0x590);
 stats->rx_bytes = pm3386_get_stat(port, 0x514);
 stats->tx_bytes = pm3386_get_stat(port, 0x594);

}

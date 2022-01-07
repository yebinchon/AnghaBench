
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int tx_packets; int tx_time_us; int rx_packets; int rx_time_us; } ;
struct TYPE_6__ {TYPE_2__ data; } ;
struct TYPE_4__ {TYPE_3__ normal; int flags; } ;
struct netxen_adapter {TYPE_1__ coal; } ;


 int NETXEN_DEFAULT_INTR_COALESCE_RX_PACKETS ;
 int NETXEN_DEFAULT_INTR_COALESCE_RX_TIME_US ;
 int NETXEN_DEFAULT_INTR_COALESCE_TX_PACKETS ;
 int NETXEN_DEFAULT_INTR_COALESCE_TX_TIME_US ;
 int NETXEN_NIC_INTR_DEFAULT ;

__attribute__((used)) static void
netxen_nic_init_coalesce_defaults(struct netxen_adapter *adapter)
{
 adapter->coal.flags = NETXEN_NIC_INTR_DEFAULT;
 adapter->coal.normal.data.rx_time_us =
  NETXEN_DEFAULT_INTR_COALESCE_RX_TIME_US;
 adapter->coal.normal.data.rx_packets =
  NETXEN_DEFAULT_INTR_COALESCE_RX_PACKETS;
 adapter->coal.normal.data.tx_time_us =
  NETXEN_DEFAULT_INTR_COALESCE_TX_TIME_US;
 adapter->coal.normal.data.tx_packets =
  NETXEN_DEFAULT_INTR_COALESCE_TX_PACKETS;
}

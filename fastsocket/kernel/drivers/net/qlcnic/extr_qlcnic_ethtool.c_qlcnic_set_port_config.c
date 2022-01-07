
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qlcnic_adapter {int dummy; } ;
struct ethtool_cmd {scalar_t__ autoneg; scalar_t__ duplex; } ;


 int EIO ;
 int EOPNOTSUPP ;
 int QLCNIC_RCODE_NOT_SUPPORTED ;



 int ethtool_cmd_speed (struct ethtool_cmd*) ;
 int qlcnic_fw_cmd_set_port (struct qlcnic_adapter*,int) ;

__attribute__((used)) static int qlcnic_set_port_config(struct qlcnic_adapter *adapter,
      struct ethtool_cmd *ecmd)
{
 u32 ret = 0, config = 0;

 if (ecmd->duplex)
  config |= 0x1;

 if (ecmd->autoneg)
  config |= 0x2;

 switch (ethtool_cmd_speed(ecmd)) {
 case 130:
  config |= (0 << 8);
  break;
 case 129:
  config |= (1 << 8);
  break;
 case 128:
  config |= (10 << 8);
  break;
 default:
  return -EIO;
 }

 ret = qlcnic_fw_cmd_set_port(adapter, config);

 if (ret == QLCNIC_RCODE_NOT_SUPPORTED)
  return -EOPNOTSUPP;
 else if (ret)
  return -EIO;
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qlcnic_hardware_context {int dummy; } ;
struct qlcnic_adapter {struct qlcnic_hardware_context* ahw; } ;


 int QLCNIC_FW_MBX_CTRL ;
 scalar_t__ QLCNIC_MBX_TIMEOUT ;
 scalar_t__ QLCNIC_RCODE_TIMEOUT ;
 scalar_t__ QLCRDX (struct qlcnic_hardware_context*,int ) ;
 int mdelay (int) ;

u32 qlcnic_83xx_mbx_poll(struct qlcnic_adapter *adapter, u32 *wait_time)
{
 u32 data;
 struct qlcnic_hardware_context *ahw = adapter->ahw;

 do {
  data = QLCRDX(ahw, QLCNIC_FW_MBX_CTRL);
  if (++(*wait_time) > QLCNIC_MBX_TIMEOUT) {
   data = QLCNIC_RCODE_TIMEOUT;
   break;
  }
  mdelay(1);
 } while (!data);
 return data;
}

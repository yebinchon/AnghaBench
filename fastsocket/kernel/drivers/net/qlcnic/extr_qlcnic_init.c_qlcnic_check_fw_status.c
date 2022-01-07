
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int dummy; } ;


 int PHAN_INITIALIZE_ACK ;
 int QLCNIC_CMDPEG_STATE ;
 int QLC_SHARED_REG_WR32 (struct qlcnic_adapter*,int ,int ) ;
 int qlcnic_cmd_peg_ready (struct qlcnic_adapter*) ;
 int qlcnic_receive_peg_ready (struct qlcnic_adapter*) ;

int
qlcnic_check_fw_status(struct qlcnic_adapter *adapter)
{
 int err;

 err = qlcnic_cmd_peg_ready(adapter);
 if (err)
  return err;

 err = qlcnic_receive_peg_ready(adapter);
 if (err)
  return err;

 QLC_SHARED_REG_WR32(adapter, QLCNIC_CMDPEG_STATE, PHAN_INITIALIZE_ACK);

 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int dummy; } ;


 int qlcnic_83xx_check_cmd_peg_status (struct qlcnic_adapter*) ;
 int qlcnic_83xx_check_heartbeat (struct qlcnic_adapter*) ;

int qlcnic_83xx_check_hw_status(struct qlcnic_adapter *p_dev)
{
 int err;

 err = qlcnic_83xx_check_cmd_peg_status(p_dev);
 if (err)
  return err;

 err = qlcnic_83xx_check_heartbeat(p_dev);
 if (err)
  return err;

 return err;
}

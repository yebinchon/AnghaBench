
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct be_adapter {int hba_port_num; } ;


 int BE_NO_LOOPBACK ;
 int be_cmd_loopback_test (struct be_adapter*,int ,int ,int,int,int) ;
 int be_cmd_set_loopback (struct be_adapter*,int ,int ,int) ;

__attribute__((used)) static u64 be_loopback_test(struct be_adapter *adapter, u8 loopback_type,
    u64 *status)
{
 be_cmd_set_loopback(adapter, adapter->hba_port_num,
    loopback_type, 1);
 *status = be_cmd_loopback_test(adapter, adapter->hba_port_num,
    loopback_type, 1500,
    2, 0xabc);
 be_cmd_set_loopback(adapter, adapter->hba_port_num,
    BE_NO_LOOPBACK, 1);
 return *status;
}

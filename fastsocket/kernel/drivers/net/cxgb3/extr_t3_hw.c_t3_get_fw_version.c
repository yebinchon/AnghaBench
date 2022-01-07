
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int FW_VERS_ADDR ;
 int t3_read_flash (struct adapter*,int ,int,int *,int ) ;

int t3_get_fw_version(struct adapter *adapter, u32 *vers)
{
 return t3_read_flash(adapter, FW_VERS_ADDR, 1, vers, 0);
}

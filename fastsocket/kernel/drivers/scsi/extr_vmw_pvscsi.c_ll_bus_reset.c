
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvscsi_adapter {int dummy; } ;


 int PVSCSI_CMD_RESET_BUS ;
 int dev_dbg (int ,char*,struct pvscsi_adapter const*) ;
 int pvscsi_dev (struct pvscsi_adapter const*) ;
 int pvscsi_write_cmd_desc (struct pvscsi_adapter const*,int ,int *,int ) ;

__attribute__((used)) static void ll_bus_reset(const struct pvscsi_adapter *adapter)
{
 dev_dbg(pvscsi_dev(adapter), "Reseting bus on %p\n", adapter);

 pvscsi_write_cmd_desc(adapter, PVSCSI_CMD_RESET_BUS, ((void*)0), 0);
}

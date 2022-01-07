
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct be_adapter {int cfg_num_qs; int pmac_id; int asic_rev; int function_caps; int function_mode; int port_num; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int be_cmd_query_fw_cfg (struct be_adapter*,int *,int *,int *,int *) ;
 int be_get_resources (struct be_adapter*) ;
 int be_max_qs (struct be_adapter*) ;
 scalar_t__ be_max_uc (struct be_adapter*) ;
 int kcalloc (scalar_t__,int,int ) ;
 int min (int ,int ) ;

__attribute__((used)) static int be_get_config(struct be_adapter *adapter)
{
 int status;

 status = be_cmd_query_fw_cfg(adapter, &adapter->port_num,
         &adapter->function_mode,
         &adapter->function_caps,
         &adapter->asic_rev);
 if (status)
  return status;

 status = be_get_resources(adapter);
 if (status)
  return status;


 adapter->pmac_id = kcalloc(be_max_uc(adapter) + 1, sizeof(u32),
       GFP_KERNEL);
 if (!adapter->pmac_id)
  return -ENOMEM;


 adapter->cfg_num_qs = min(adapter->cfg_num_qs, be_max_qs(adapter));

 return 0;
}

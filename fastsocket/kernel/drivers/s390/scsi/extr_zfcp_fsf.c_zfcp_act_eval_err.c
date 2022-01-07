
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct zfcp_adapter {TYPE_1__* ccw_device; } ;
struct TYPE_2__ {int dev; } ;


 size_t ARRAY_SIZE (char const**) ;
 int dev_warn (int *,char*,char const*,size_t) ;

__attribute__((used)) static void zfcp_act_eval_err(struct zfcp_adapter *adapter, u32 table)
{
 u16 subtable = table >> 16;
 u16 rule = table & 0xffff;
 const char *act_type[] = { "unknown", "OS", "WWPN", "DID", "LUN" };

 if (subtable && subtable < ARRAY_SIZE(act_type))
  dev_warn(&adapter->ccw_device->dev,
    "Access denied according to ACT rule type %s, "
    "rule %d\n", act_type[subtable], rule);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pvscsi_ctx {int dummy; } ;
struct pvscsi_adapter {struct pvscsi_ctx const* cmd_map; } ;



__attribute__((used)) static u64 pvscsi_map_context(const struct pvscsi_adapter *adapter,
         const struct pvscsi_ctx *ctx)
{
 return ctx - adapter->cmd_map + 1;
}

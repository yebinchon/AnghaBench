
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ips_driver {int mcp_power_limit; int mcp_temp_limit; TYPE_1__* limits; } ;
struct TYPE_2__ {int mcp_power_limit; int core_temp_limit; int mch_temp_limit; } ;


 int min (int,int) ;

__attribute__((used)) static void verify_limits(struct ips_driver *ips)
{
 if (ips->mcp_power_limit < ips->limits->mcp_power_limit ||
     ips->mcp_power_limit > 35000)
  ips->mcp_power_limit = ips->limits->mcp_power_limit;

 if (ips->mcp_temp_limit < ips->limits->core_temp_limit ||
     ips->mcp_temp_limit < ips->limits->mch_temp_limit ||
     ips->mcp_temp_limit > 150)
  ips->mcp_temp_limit = min(ips->limits->core_temp_limit,
       ips->limits->mch_temp_limit);
}

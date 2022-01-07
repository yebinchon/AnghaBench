
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmi_system_id {int dummy; } ;


 int EC_FLAGS_SKIP_DSDT_SCAN ;

__attribute__((used)) static int ec_skip_dsdt_scan(const struct dmi_system_id *id)
{
 EC_FLAGS_SKIP_DSDT_SCAN = 1;
 return 0;
}

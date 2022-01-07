
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd8111_dev_info {int dummy; } ;


 int LEGACY_NR_PORTS ;
 int REG_AT_COMPAT ;
 scalar_t__ legacy_io_res ;
 int release_region (int ,int ) ;

__attribute__((used)) static void amd8111_lpc_bridge_exit(struct amd8111_dev_info *dev_info)
{
 if (legacy_io_res)
  release_region(REG_AT_COMPAT, LEGACY_NR_PORTS);
}

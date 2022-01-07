
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 scalar_t__ H_AUTHORITY ;
 int ehea_error (char*,char*) ;
 int ehea_info (char*,char*) ;

__attribute__((used)) static void ehea_promiscuous_error(u64 hret, int enable)
{
 if (hret == H_AUTHORITY)
  ehea_info("Hypervisor denied %sabling promiscuous mode",
     enable == 1 ? "en" : "dis");
 else
  ehea_error("failed %sabling promiscuous mode",
      enable == 1 ? "en" : "dis");
}

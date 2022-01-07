
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 scalar_t__ BUS_ERROR (int ) ;
 int f10h_dc_mce (int ,int ) ;
 int pr_cont (char*) ;

__attribute__((used)) static bool k8_dc_mce(u16 ec, u8 xec)
{
 if (BUS_ERROR(ec)) {
  pr_cont("during system linefill.\n");
  return 1;
 }

 return f10h_dc_mce(ec, xec);
}

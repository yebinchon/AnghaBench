
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ipmi_user_t ;


 scalar_t__ IPMI_CPI1_MANUFACTURER_ID ;
 scalar_t__ IPMI_CPI1_PRODUCT_ID ;
 scalar_t__ mfg_id ;
 scalar_t__ prod_id ;

__attribute__((used)) static int ipmi_cpi1_detect(ipmi_user_t user)
{
 return ((mfg_id == IPMI_CPI1_MANUFACTURER_ID)
  && (prod_id == IPMI_CPI1_PRODUCT_ID));
}

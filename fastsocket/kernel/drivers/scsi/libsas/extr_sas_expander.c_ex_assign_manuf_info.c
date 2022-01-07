
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sas_rphy {int dummy; } ;
struct sas_expander_device {int component_id; int component_revision_id; int component_vendor_id; int product_rev; int product_id; int vendor_id; } ;
struct domain_device {struct sas_rphy* rphy; } ;


 int SAS_EXPANDER_COMPONENT_VENDOR_ID_LEN ;
 int SAS_EXPANDER_PRODUCT_ID_LEN ;
 int SAS_EXPANDER_PRODUCT_REV_LEN ;
 int SAS_EXPANDER_VENDOR_ID_LEN ;
 int memcpy (int ,int*,int ) ;
 struct sas_expander_device* rphy_to_expander_device (struct sas_rphy*) ;

__attribute__((used)) static void ex_assign_manuf_info(struct domain_device *dev, void
     *_mi_resp)
{
 u8 *mi_resp = _mi_resp;
 struct sas_rphy *rphy = dev->rphy;
 struct sas_expander_device *edev = rphy_to_expander_device(rphy);

 memcpy(edev->vendor_id, mi_resp + 12, SAS_EXPANDER_VENDOR_ID_LEN);
 memcpy(edev->product_id, mi_resp + 20, SAS_EXPANDER_PRODUCT_ID_LEN);
 memcpy(edev->product_rev, mi_resp + 36,
        SAS_EXPANDER_PRODUCT_REV_LEN);

 if (mi_resp[8] & 1) {
  memcpy(edev->component_vendor_id, mi_resp + 40,
         SAS_EXPANDER_COMPONENT_VENDOR_ID_LEN);
  edev->component_id = mi_resp[48] << 8 | mi_resp[49];
  edev->component_revision_id = mi_resp[50];
 }
}

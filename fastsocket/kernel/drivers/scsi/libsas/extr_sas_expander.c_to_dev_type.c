
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct discover_resp {scalar_t__ attached_dev_type; scalar_t__ linkrate; scalar_t__ attached_sata_dev; } ;
typedef enum sas_dev_type { ____Placeholder_sas_dev_type } sas_dev_type ;


 scalar_t__ NO_DEVICE ;
 scalar_t__ SAS_LINK_RATE_1_5_GBPS ;
 int SATA_PENDING ;

__attribute__((used)) static enum sas_dev_type to_dev_type(struct discover_resp *dr)
{



 if (dr->attached_dev_type == NO_DEVICE && dr->attached_sata_dev &&
     dr->linkrate >= SAS_LINK_RATE_1_5_GBPS)
  return SATA_PENDING;
 else
  return dr->attached_dev_type;
}

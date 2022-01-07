
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_5__ {scalar_t__ target_port_protocols; } ;
struct sas_rphy {TYPE_1__ identify; } ;
struct sas_ha_struct {size_t num_phys; TYPE_4__** sas_phy; } ;
struct dev_to_host_fis {int fis_type; } ;
struct TYPE_8__ {TYPE_3__* port; int attached_sas_addr; } ;
struct TYPE_7__ {TYPE_2__* port_dev; } ;
struct TYPE_6__ {size_t* frame_rcvd; struct sas_rphy* rphy; } ;


 int SAS_ADDR_SIZE ;
 scalar_t__ SAS_PROTOCOL_SATA ;
 size_t SMP_RESP_FUNC_ACC ;
 size_t SMP_RESP_NO_PHY ;
 size_t SMP_RESP_PHY_NO_SATA ;
 int memcpy (size_t*,int ,int ) ;

__attribute__((used)) static void sas_report_phy_sata(struct sas_ha_struct *sas_ha, u8 *resp_data,
    u8 phy_id)
{
 struct sas_rphy *rphy;
 struct dev_to_host_fis *fis;
 int i;

 if (phy_id >= sas_ha->num_phys) {
  resp_data[2] = SMP_RESP_NO_PHY;
  return;
 }

 resp_data[2] = SMP_RESP_PHY_NO_SATA;

 if (!sas_ha->sas_phy[phy_id]->port)
  return;

 rphy = sas_ha->sas_phy[phy_id]->port->port_dev->rphy;
 fis = (struct dev_to_host_fis *)
  sas_ha->sas_phy[phy_id]->port->port_dev->frame_rcvd;
 if (rphy->identify.target_port_protocols != SAS_PROTOCOL_SATA)
  return;

 resp_data[2] = SMP_RESP_FUNC_ACC;
 resp_data[9] = phy_id;
 memcpy(resp_data + 16, sas_ha->sas_phy[phy_id]->attached_sas_addr,
        SAS_ADDR_SIZE);


 if (fis->fis_type != 0x34)
  return;


 for (i = 0; i < 20; i += 4) {
  u8 *dst = resp_data + 24 + i, *src =
   &sas_ha->sas_phy[phy_id]->port->port_dev->frame_rcvd[i];
  dst[0] = src[3];
  dst[1] = src[2];
  dst[2] = src[1];
  dst[3] = src[0];
 }
}

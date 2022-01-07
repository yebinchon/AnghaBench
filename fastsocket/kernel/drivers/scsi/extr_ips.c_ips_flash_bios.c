
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int ips_scb_t ;
struct TYPE_14__ {scalar_t__ type; scalar_t__ direction; } ;
struct TYPE_15__ {TYPE_1__ flashfw; } ;
struct TYPE_16__ {TYPE_2__ cmd; } ;
struct TYPE_18__ {int BasicStatus; int ExtendedStatus; TYPE_3__ CoppCP; } ;
typedef TYPE_5__ ips_passthru_t ;
struct TYPE_17__ {scalar_t__ (* erasebios ) (TYPE_6__*) ;scalar_t__ (* verifybios ) (TYPE_6__*,scalar_t__,scalar_t__,int ) ;scalar_t__ (* programbios ) (TYPE_6__*,scalar_t__,scalar_t__,int ) ;} ;
struct TYPE_19__ {int host_num; TYPE_4__ func; scalar_t__ flash_datasize; scalar_t__ flash_data; } ;
typedef TYPE_6__ ips_ha_t ;


 int DEBUG_VAR (int,char*,int ,int ) ;
 scalar_t__ IPS_BIOS_HEADER ;
 scalar_t__ IPS_BIOS_IMAGE ;
 scalar_t__ IPS_ERASE_BIOS ;
 int IPS_FAILURE ;
 int IPS_SUCCESS_IMM ;
 scalar_t__ IPS_WRITE_BIOS ;
 int ips_free_flash_copperhead (TYPE_6__*) ;
 int ips_name ;
 scalar_t__ stub1 (TYPE_6__*) ;
 scalar_t__ stub2 (TYPE_6__*,scalar_t__,scalar_t__,int ) ;
 scalar_t__ stub3 (TYPE_6__*,scalar_t__,scalar_t__,int ) ;
 scalar_t__ stub4 (TYPE_6__*) ;

__attribute__((used)) static int
ips_flash_bios(ips_ha_t * ha, ips_passthru_t * pt, ips_scb_t * scb)
{

 if (pt->CoppCP.cmd.flashfw.type == IPS_BIOS_IMAGE &&
     pt->CoppCP.cmd.flashfw.direction == IPS_WRITE_BIOS) {
  if ((!ha->func.programbios) || (!ha->func.erasebios) ||
      (!ha->func.verifybios))
   goto error;
  if ((*ha->func.erasebios) (ha)) {
   DEBUG_VAR(1,
      "(%s%d) flash bios failed - unable to erase flash",
      ips_name, ha->host_num);
   goto error;
  } else
      if ((*ha->func.programbios) (ha,
       ha->flash_data +
       IPS_BIOS_HEADER,
       ha->flash_datasize -
       IPS_BIOS_HEADER, 0)) {
   DEBUG_VAR(1,
      "(%s%d) flash bios failed - unable to flash",
      ips_name, ha->host_num);
   goto error;
  } else
      if ((*ha->func.verifybios) (ha,
      ha->flash_data +
      IPS_BIOS_HEADER,
      ha->flash_datasize -
      IPS_BIOS_HEADER, 0)) {
   DEBUG_VAR(1,
      "(%s%d) flash bios failed - unable to verify flash",
      ips_name, ha->host_num);
   goto error;
  }
  ips_free_flash_copperhead(ha);
  return IPS_SUCCESS_IMM;
 } else if (pt->CoppCP.cmd.flashfw.type == IPS_BIOS_IMAGE &&
     pt->CoppCP.cmd.flashfw.direction == IPS_ERASE_BIOS) {
  if (!ha->func.erasebios)
   goto error;
  if ((*ha->func.erasebios) (ha)) {
   DEBUG_VAR(1,
      "(%s%d) flash bios failed - unable to erase flash",
      ips_name, ha->host_num);
   goto error;
  }
  return IPS_SUCCESS_IMM;
 }
      error:
 pt->BasicStatus = 0x0B;
 pt->ExtendedStatus = 0x00;
 ips_free_flash_copperhead(ha);
 return IPS_FAILURE;
}

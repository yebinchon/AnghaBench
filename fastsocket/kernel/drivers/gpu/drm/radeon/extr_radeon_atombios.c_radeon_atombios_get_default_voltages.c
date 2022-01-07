
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int usBootUpVDDCIVoltage; } ;
struct TYPE_4__ {int usBootUpVDDCVoltage; } ;
union firmware_info {TYPE_2__ info_22; TYPE_1__ info_14; } ;
typedef int u8 ;
typedef scalar_t__ u16 ;
struct radeon_mode_info {TYPE_3__* atom_context; } ;
struct radeon_device {struct radeon_mode_info mode_info; } ;
struct TYPE_6__ {scalar_t__ bios; } ;


 int DATA ;
 int FirmwareInfo ;
 int GetIndexIntoMasterTable (int ,int ) ;
 scalar_t__ atom_parse_data_header (TYPE_3__*,int,int *,int*,int*,scalar_t__*) ;
 scalar_t__ le16_to_cpu (int ) ;

__attribute__((used)) static void radeon_atombios_get_default_voltages(struct radeon_device *rdev,
       u16 *vddc, u16 *vddci)
{
 struct radeon_mode_info *mode_info = &rdev->mode_info;
 int index = GetIndexIntoMasterTable(DATA, FirmwareInfo);
 u8 frev, crev;
 u16 data_offset;
 union firmware_info *firmware_info;

 *vddc = 0;
 *vddci = 0;

 if (atom_parse_data_header(mode_info->atom_context, index, ((void*)0),
       &frev, &crev, &data_offset)) {
  firmware_info =
   (union firmware_info *)(mode_info->atom_context->bios +
      data_offset);
  *vddc = le16_to_cpu(firmware_info->info_14.usBootUpVDDCVoltage);
  if ((frev == 2) && (crev >= 2))
   *vddci = le16_to_cpu(firmware_info->info_22.usBootUpVDDCIVoltage);
 }
}

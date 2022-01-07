
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {TYPE_2__** InquiryUnitSerialNumber; TYPE_2__** PhysicalDeviceInformation; TYPE_2__* NewInquiryUnitSerialNumber; TYPE_2__* NewPhysicalDeviceInformation; } ;
struct TYPE_16__ {TYPE_1__ V2; } ;
struct TYPE_15__ {unsigned char Channel; unsigned char TargetID; unsigned char LogicalUnit; int PeripheralDeviceType; } ;
typedef TYPE_2__ DAC960_V2_PhysicalDeviceInfo_T ;
typedef TYPE_2__ DAC960_SCSI_Inquiry_UnitSerialNumber_T ;
typedef TYPE_4__ DAC960_Controller_T ;


 int DAC960_Failure (TYPE_4__*,char*) ;
 int DAC960_V2_NewInquiryUnitSerialNumber (TYPE_4__*,unsigned char,unsigned char,unsigned char) ;
 int DAC960_V2_NewPhysicalDeviceInfo (TYPE_4__*,unsigned char,unsigned char,unsigned char) ;
 int GFP_ATOMIC ;
 int kfree (TYPE_2__*) ;
 TYPE_2__* kmalloc (int,int ) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static bool DAC960_V2_ReadDeviceConfiguration(DAC960_Controller_T
       *Controller)
{
  unsigned char Channel = 0, TargetID = 0, LogicalUnit = 0;
  unsigned short PhysicalDeviceIndex = 0;

  while (1)
    {
      DAC960_V2_PhysicalDeviceInfo_T *NewPhysicalDeviceInfo =
  Controller->V2.NewPhysicalDeviceInformation;
      DAC960_V2_PhysicalDeviceInfo_T *PhysicalDeviceInfo;
      DAC960_SCSI_Inquiry_UnitSerialNumber_T *NewInquiryUnitSerialNumber =
  Controller->V2.NewInquiryUnitSerialNumber;
      DAC960_SCSI_Inquiry_UnitSerialNumber_T *InquiryUnitSerialNumber;

      if (!DAC960_V2_NewPhysicalDeviceInfo(Controller, Channel, TargetID, LogicalUnit))
   break;

      PhysicalDeviceInfo = kmalloc(sizeof(DAC960_V2_PhysicalDeviceInfo_T),
        GFP_ATOMIC);
      if (PhysicalDeviceInfo == ((void*)0))
  return DAC960_Failure(Controller, "PHYSICAL DEVICE ALLOCATION");
      Controller->V2.PhysicalDeviceInformation[PhysicalDeviceIndex] =
  PhysicalDeviceInfo;
      memcpy(PhysicalDeviceInfo, NewPhysicalDeviceInfo,
  sizeof(DAC960_V2_PhysicalDeviceInfo_T));

      InquiryUnitSerialNumber = kmalloc(
       sizeof(DAC960_SCSI_Inquiry_UnitSerialNumber_T), GFP_ATOMIC);
      if (InquiryUnitSerialNumber == ((void*)0)) {
 kfree(PhysicalDeviceInfo);
 return DAC960_Failure(Controller, "SERIAL NUMBER ALLOCATION");
      }
      Controller->V2.InquiryUnitSerialNumber[PhysicalDeviceIndex] =
  InquiryUnitSerialNumber;

      Channel = NewPhysicalDeviceInfo->Channel;
      TargetID = NewPhysicalDeviceInfo->TargetID;
      LogicalUnit = NewPhysicalDeviceInfo->LogicalUnit;







      if (!DAC960_V2_NewInquiryUnitSerialNumber(Controller, Channel, TargetID, LogicalUnit)) {
       memset(InquiryUnitSerialNumber, 0,
             sizeof(DAC960_SCSI_Inquiry_UnitSerialNumber_T));
      InquiryUnitSerialNumber->PeripheralDeviceType = 0x1F;
      } else
       memcpy(InquiryUnitSerialNumber, NewInquiryUnitSerialNumber,
  sizeof(DAC960_SCSI_Inquiry_UnitSerialNumber_T));

      PhysicalDeviceIndex++;
      LogicalUnit++;
    }
  return 1;
}

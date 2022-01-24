#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_2__** InquiryUnitSerialNumber; TYPE_2__** PhysicalDeviceInformation; TYPE_2__* NewInquiryUnitSerialNumber; TYPE_2__* NewPhysicalDeviceInformation; } ;
struct TYPE_16__ {TYPE_1__ V2; } ;
struct TYPE_15__ {unsigned char Channel; unsigned char TargetID; unsigned char LogicalUnit; int PeripheralDeviceType; } ;
typedef  TYPE_2__ DAC960_V2_PhysicalDeviceInfo_T ;
typedef  TYPE_2__ DAC960_SCSI_Inquiry_UnitSerialNumber_T ;
typedef  TYPE_4__ DAC960_Controller_T ;

/* Variables and functions */
 int FUNC0 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,unsigned char,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,unsigned char,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC7(DAC960_Controller_T
						 *Controller)
{
  unsigned char Channel = 0, TargetID = 0, LogicalUnit = 0;
  unsigned short PhysicalDeviceIndex = 0;

  while (true)
    {
      DAC960_V2_PhysicalDeviceInfo_T *NewPhysicalDeviceInfo =
		Controller->V2.NewPhysicalDeviceInformation;
      DAC960_V2_PhysicalDeviceInfo_T *PhysicalDeviceInfo;
      DAC960_SCSI_Inquiry_UnitSerialNumber_T *NewInquiryUnitSerialNumber =
		Controller->V2.NewInquiryUnitSerialNumber;
      DAC960_SCSI_Inquiry_UnitSerialNumber_T *InquiryUnitSerialNumber;

      if (!FUNC2(Controller, Channel, TargetID, LogicalUnit))
	  break;

      PhysicalDeviceInfo = FUNC4(sizeof(DAC960_V2_PhysicalDeviceInfo_T),
				    GFP_ATOMIC);
      if (PhysicalDeviceInfo == NULL)
		return FUNC0(Controller, "PHYSICAL DEVICE ALLOCATION");
      Controller->V2.PhysicalDeviceInformation[PhysicalDeviceIndex] =
		PhysicalDeviceInfo;
      FUNC5(PhysicalDeviceInfo, NewPhysicalDeviceInfo,
		sizeof(DAC960_V2_PhysicalDeviceInfo_T));

      InquiryUnitSerialNumber = FUNC4(
	      sizeof(DAC960_SCSI_Inquiry_UnitSerialNumber_T), GFP_ATOMIC);
      if (InquiryUnitSerialNumber == NULL) {
	FUNC3(PhysicalDeviceInfo);
	return FUNC0(Controller, "SERIAL NUMBER ALLOCATION");
      }
      Controller->V2.InquiryUnitSerialNumber[PhysicalDeviceIndex] =
		InquiryUnitSerialNumber;

      Channel = NewPhysicalDeviceInfo->Channel;
      TargetID = NewPhysicalDeviceInfo->TargetID;
      LogicalUnit = NewPhysicalDeviceInfo->LogicalUnit;

      /*
	 Some devices do NOT have Unit Serial Numbers.
	 This command fails for them.  But, we still want to
	 remember those devices are there.  Construct a
	 UnitSerialNumber structure for the failure case.
      */
      if (!FUNC1(Controller, Channel, TargetID, LogicalUnit)) {
      	FUNC6(InquiryUnitSerialNumber, 0,
             sizeof(DAC960_SCSI_Inquiry_UnitSerialNumber_T));
     	InquiryUnitSerialNumber->PeripheralDeviceType = 0x1F;
      } else
      	FUNC5(InquiryUnitSerialNumber, NewInquiryUnitSerialNumber,
		sizeof(DAC960_SCSI_Inquiry_UnitSerialNumber_T));

      PhysicalDeviceIndex++;
      LogicalUnit++;
    }
  return true;
}
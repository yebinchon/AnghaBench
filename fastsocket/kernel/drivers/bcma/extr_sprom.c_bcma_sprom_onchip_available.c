
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int capabilities; int core; } ;
struct TYPE_4__ {int id; } ;
struct bcma_bus {TYPE_1__ drv_cc; TYPE_2__ chipinfo; } ;


 int BCMA_CC_CAP_OTPS ;
 int BCMA_CC_CAP_OTPS_SHIFT ;
 int BCMA_CC_CHIPSTAT ;
 int BCMA_CC_CHIPST_4313_OTP_PRESENT ;
 int BCMA_CC_CHIPST_43228_OTP_PRESENT ;
 int BCMA_CC_CHIPST_4331_OTP_PRESENT ;







 int bcma_read32 (int ,int ) ;

__attribute__((used)) static bool bcma_sprom_onchip_available(struct bcma_bus *bus)
{
 u32 chip_status;
 u32 otpsize = 0;
 bool present;

 chip_status = bcma_read32(bus->drv_cc.core, BCMA_CC_CHIPSTAT);
 switch (bus->chipinfo.id) {
 case 134:
  present = chip_status & BCMA_CC_CHIPST_4313_OTP_PRESENT;
  break;

 case 129:
  present = chip_status & BCMA_CC_CHIPST_4331_OTP_PRESENT;
  break;

 case 133:
 case 132:

  present = 1;
  break;
 case 131:
 case 130:
 case 128:
  present = chip_status & BCMA_CC_CHIPST_43228_OTP_PRESENT;
  break;
 default:
  present = 0;
  break;
 }

 if (present) {
  otpsize = bus->drv_cc.capabilities & BCMA_CC_CAP_OTPS;
  otpsize >>= BCMA_CC_CAP_OTPS_SHIFT;
 }

 return otpsize != 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char ATA_DCO_IDENTIFY ;
 unsigned char ATA_DCO_SET ;
 unsigned char ATA_SET_MAX_UNLOCK ;
 unsigned char ATA_SMART_READ_THRESHOLDS ;
 unsigned char ATA_SMART_READ_VALUES ;

__attribute__((used)) static unsigned int implicit_sector(unsigned char command,
        unsigned char features)
{
 unsigned int rv = 0;


 switch (command) {
 case 131:
 case 130:
 case 134:
 case 133:
 case 132:
 case 135:
 case 137:
 case 136:
  rv = 1;
  break;
 case 129:
  if (features == ATA_SET_MAX_UNLOCK)
   rv = 1;
  break;
 case 128:
  if ((features == ATA_SMART_READ_VALUES) ||
    (features == ATA_SMART_READ_THRESHOLDS))
   rv = 1;
  break;
 case 138:
  if ((features == ATA_DCO_IDENTIFY) ||
    (features == ATA_DCO_SET))
   rv = 1;
  break;
 }
 return rv;
}

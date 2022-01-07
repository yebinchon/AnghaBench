
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char BT_B2H_ATN ;
 unsigned char BT_B_BUSY ;
 unsigned char BT_H2B_ATN ;
 unsigned char BT_H_BUSY ;
 unsigned char BT_OEM0 ;
 unsigned char BT_SMS_ATN ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static char *status2txt(unsigned char status)
{





 static char buf[40];

 strcpy(buf, "[ ");
 if (status & BT_B_BUSY)
  strcat(buf, "B_BUSY ");
 if (status & BT_H_BUSY)
  strcat(buf, "H_BUSY ");
 if (status & BT_OEM0)
  strcat(buf, "OEM0 ");
 if (status & BT_SMS_ATN)
  strcat(buf, "SMS ");
 if (status & BT_B2H_ATN)
  strcat(buf, "B2H ");
 if (status & BT_H2B_ATN)
  strcat(buf, "H2B ");
 strcat(buf, "]");
 return buf;
}

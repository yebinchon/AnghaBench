
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *i2o_get_class_name(int class)
{
 int idx = 16;
 static char *i2o_class_name[] = {
  "Executive",
  "Device Driver Module",
  "Block Device",
  "Tape Device",
  "LAN Interface",
  "WAN Interface",
  "Fibre Channel Port",
  "Fibre Channel Device",
  "SCSI Device",
  "ATE Port",
  "ATE Device",
  "Floppy Controller",
  "Floppy Device",
  "Secondary Bus Port",
  "Peer Transport Agent",
  "Peer Transport",
  "Unknown"
 };

 switch (class & 0xfff) {
 case 139:
  idx = 0;
  break;
 case 140:
  idx = 1;
  break;
 case 131:
  idx = 2;
  break;
 case 129:
  idx = 3;
  break;
 case 134:
  idx = 4;
  break;
 case 128:
  idx = 5;
  break;
 case 137:
  idx = 6;
  break;
 case 138:
  idx = 7;
  break;
 case 130:
  idx = 8;
  break;
 case 142:
  idx = 9;
  break;
 case 143:
  idx = 10;
  break;
 case 136:
  idx = 11;
  break;
 case 135:
  idx = 12;
  break;
 case 141:
  idx = 13;
  break;
 case 132:
  idx = 14;
  break;
 case 133:
  idx = 15;
  break;
 }

 return i2o_class_name[idx];
}

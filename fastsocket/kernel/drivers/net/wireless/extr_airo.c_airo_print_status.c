
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
 int airo_print_dbg (char const*,char*,...) ;

__attribute__((used)) static void airo_print_status(const char *devname, u16 status)
{
 u8 reason = status & 0xFF;

 switch (status) {
 case 129:
  airo_print_dbg(devname, "link lost (missed beacons)");
  break;
 case 130:
 case 131:
  airo_print_dbg(devname, "link lost (max retries)");
  break;
 case 132:
  airo_print_dbg(devname, "link lost (local choice)");
  break;
 case 128:
  airo_print_dbg(devname, "link lost (TSF sync lost)");
  break;
 case 134:
  airo_print_dbg(devname, "deauthenticated (reason: %d)", reason);
  break;
 case 133:
  airo_print_dbg(devname, "disassociated (reason: %d)", reason);
  break;
 case 136:
  airo_print_dbg(devname, "association failed (reason: %d)",
          reason);
  break;
 case 135:
  airo_print_dbg(devname, "authentication failed (reason: %d)",
          reason);
  break;
 default:
  break;
 }
}

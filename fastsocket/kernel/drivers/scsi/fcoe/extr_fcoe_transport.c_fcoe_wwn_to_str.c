
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;


 int snprintf (char*,int,char*,int,int,int,int,int,int,int,int) ;
 int u64_to_wwn (int ,int*) ;

void fcoe_wwn_to_str(u64 wwn, char *buf, int len)
{
 u8 wwpn[8];

 u64_to_wwn(wwn, wwpn);
 snprintf(buf, len, "%02x%02x%02x%02x%02x%02x%02x%02x",
   wwpn[0], wwpn[1], wwpn[2], wwpn[3],
   wwpn[4], wwpn[5], wwpn[6], wwpn[7]);
}

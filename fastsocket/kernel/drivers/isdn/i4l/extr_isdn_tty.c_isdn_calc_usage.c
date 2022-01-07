
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ISDN_USAGE_FAX ;
 int ISDN_USAGE_MODEM ;
 int ISDN_USAGE_VOICE ;

__attribute__((used)) static int
isdn_calc_usage(int si, int l2)
{
 int usg = ISDN_USAGE_MODEM;
 return(usg);
}

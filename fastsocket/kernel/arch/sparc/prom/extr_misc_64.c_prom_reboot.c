
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int P1275_ARG (int ,int ) ;
 int P1275_ARG_IN_STRING ;
 int P1275_INOUT (int,int ) ;
 scalar_t__ ldom_domaining_enabled ;
 int ldom_reboot (char const*) ;
 int p1275_cmd (char*,int,char const*) ;

void prom_reboot(const char *bcommand)
{




 p1275_cmd("boot", P1275_ARG(0, P1275_ARG_IN_STRING) |
    P1275_INOUT(1, 0), bcommand);
}

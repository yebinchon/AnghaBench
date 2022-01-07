
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PINID_SSP1_CMD ;
 int stmp3xxx_pin_pullup (int ,int,char*) ;

__attribute__((used)) static void stmp3xxxmmc_cmd_pullup_ssp1(int enable)
{
 stmp3xxx_pin_pullup(PINID_SSP1_CMD, enable, "mmc");
}

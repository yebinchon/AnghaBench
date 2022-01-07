
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIOS_CALL_CHAR_OUT ;
 int sh_bios_call (int ,char,int ,int ,int ) ;

void sh_bios_char_out(char ch)
{
 sh_bios_call(BIOS_CALL_CHAR_OUT, ch, 0, 0, 0);
}

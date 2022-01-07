
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int firmware ;
 int release_firmware (int ) ;

void fini_microcode_amd(void)
{
 release_firmware(firmware);
}

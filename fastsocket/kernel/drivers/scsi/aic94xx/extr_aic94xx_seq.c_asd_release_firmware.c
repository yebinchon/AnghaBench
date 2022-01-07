
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int release_firmware (scalar_t__) ;
 scalar_t__ sequencer_fw ;

int asd_release_firmware(void)
{
 if (sequencer_fw)
  release_firmware(sequencer_fw);
 return 0;
}

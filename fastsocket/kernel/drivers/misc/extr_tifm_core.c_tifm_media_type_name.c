
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *tifm_media_type_name(unsigned char type, unsigned char nt)
{
 const char *card_type_name[3][3] = {
  { "SmartMedia/xD", "MemoryStick", "MMC/SD" },
  { "XD", "MS", "SD"},
  { "xd", "ms", "sd"}
 };

 if (nt > 2 || type < 1 || type > 3)
  return ((void*)0);
 return card_type_name[nt][type - 1];
}

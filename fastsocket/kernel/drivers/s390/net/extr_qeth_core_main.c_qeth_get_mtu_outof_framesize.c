
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int qeth_get_mtu_outof_framesize(int framesize)
{
 switch (framesize) {
 case 0x4000:
  return 8192;
 case 0x6000:
  return 16384;
 case 0xa000:
  return 32768;
 case 0xffff:
  return 57344;
 default:
  return 0;
 }
}

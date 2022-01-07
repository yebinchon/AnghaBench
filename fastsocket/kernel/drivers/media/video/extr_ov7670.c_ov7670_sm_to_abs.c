
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned char ov7670_sm_to_abs(unsigned char v)
{
 if ((v & 0x80) == 0)
  return v + 128;
 return 128 - (v & 0x7f);
}

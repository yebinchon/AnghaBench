
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned char ov7670_abs_to_sm(unsigned char v)
{
 if (v > 127)
  return v & 0x7f;
 return (128 - v) | 0x80;
}

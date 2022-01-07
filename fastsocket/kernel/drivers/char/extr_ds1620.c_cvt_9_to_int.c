
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int cvt_9_to_int(unsigned int val)
{
 if (val & 0x100)
  val |= 0xfffffe00;

 return val;
}

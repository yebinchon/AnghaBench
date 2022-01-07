
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



int firmware_revision(uint32_t fwr_bits)
{
 return fwr_bits & 0xff;
}

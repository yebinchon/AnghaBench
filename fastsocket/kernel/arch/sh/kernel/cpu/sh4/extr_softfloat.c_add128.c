
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ bits64 ;



void add128(bits64 a0, bits64 a1, bits64 b0, bits64 b1, bits64 * z0Ptr,
     bits64 * z1Ptr)
{
 bits64 z1;

 z1 = a1 + b1;
 *z1Ptr = z1;
 *z0Ptr = a0 + b0 + (z1 < a1);
}

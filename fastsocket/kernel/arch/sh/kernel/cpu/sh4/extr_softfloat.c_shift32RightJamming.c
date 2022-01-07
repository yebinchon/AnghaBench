
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16 ;
typedef int bits32 ;



void shift32RightJamming(bits32 a, int16 count, bits32 * zPtr)
{
 bits32 z;
 if (count == 0) {
  z = a;
 } else if (count < 32) {
  z = (a >> count) | ((a << ((-count) & 31)) != 0);
 } else {
  z = (a != 0);
 }
 *zPtr = z;
}

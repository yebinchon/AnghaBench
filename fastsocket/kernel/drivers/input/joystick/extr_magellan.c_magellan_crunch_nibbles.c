
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int magellan_crunch_nibbles(unsigned char *data, int count)
{
 static unsigned char nibbles[16] = "0AB3D56GH9:K<MN?";

 do {
  if (data[count] == nibbles[data[count] & 0xf])
   data[count] = data[count] & 0xf;
  else
   return -1;
 } while (--count);

 return 0;
}

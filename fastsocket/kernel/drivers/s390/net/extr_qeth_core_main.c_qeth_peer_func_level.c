
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int qeth_peer_func_level(int level)
{
 if ((level & 0xff) == 8)
  return (level & 0xff) + 0x400;
 if (((level >> 8) & 3) == 1)
  return (level & 0xff) + 0x200;
 return level;
}

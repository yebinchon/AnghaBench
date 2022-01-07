
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int
shifted_port(unsigned long port)
{

 if ((0x1f0 <= port && port < 0x1f8) || port == 0x3f6)
  return 0;
 else
  return 1;
}

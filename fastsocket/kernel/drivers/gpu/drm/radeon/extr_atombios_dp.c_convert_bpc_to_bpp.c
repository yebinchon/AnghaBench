
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int convert_bpc_to_bpp(int bpc)
{
 if (bpc == 0)
  return 24;
 else
  return bpc * 3;
}

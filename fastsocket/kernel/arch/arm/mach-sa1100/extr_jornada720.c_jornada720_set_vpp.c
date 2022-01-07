
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PPC_LDD7 ;
 int PPDR ;
 int PPSR ;

__attribute__((used)) static void jornada720_set_vpp(int vpp)
{
 if (vpp)

  PPSR |= PPC_LDD7;
 else

  PPSR &= ~PPC_LDD7;
 PPDR |= PPC_LDD7;
}

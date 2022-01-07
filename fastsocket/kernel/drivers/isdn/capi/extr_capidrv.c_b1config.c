
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * _cstruct ;
 int * b1config_async_v110 (int) ;

__attribute__((used)) static _cstruct b1config(int l2, int l3)
{
 switch (l2) {
 case 129:
 case 128:
 case 130:
 case 135:
 case 134:
 default:
  return ((void*)0);
        case 131:
     return b1config_async_v110(9600);
        case 133:
     return b1config_async_v110(19200);
        case 132:
     return b1config_async_v110(38400);
 }
}

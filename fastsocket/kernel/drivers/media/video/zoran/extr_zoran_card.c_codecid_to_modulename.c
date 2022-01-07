
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;






__attribute__((used)) static char *
codecid_to_modulename (u16 codecid)
{
 char *name = ((void*)0);

 switch (codecid) {
 case 128:
  name = "zr36060";
  break;
 case 129:
  name = "zr36050";
  break;
 case 130:
  name = "zr36016";
  break;
 }

 return name;
}

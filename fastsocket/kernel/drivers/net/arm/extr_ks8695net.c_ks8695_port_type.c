
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks8695_priv {int dtype; } ;






__attribute__((used)) static const char *
ks8695_port_type(struct ks8695_priv *ksp)
{
 switch (ksp->dtype) {
 case 129:
  return "LAN";
 case 128:
  return "WAN";
 case 130:
  return "HPNA";
 }

 return "UNKNOWN";
}

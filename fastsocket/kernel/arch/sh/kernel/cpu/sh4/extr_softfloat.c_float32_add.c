
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float32 ;
typedef scalar_t__ flag ;


 int addFloat32Sigs (int ,int ,scalar_t__) ;
 scalar_t__ extractFloat32Sign (int ) ;
 int subFloat32Sigs (int ,int ,scalar_t__) ;

float32 float32_add(float32 a, float32 b)
{
 flag aSign, bSign;

 aSign = extractFloat32Sign(a);
 bSign = extractFloat32Sign(b);
 if (aSign == bSign) {
  return addFloat32Sigs(a, b, aSign);
 } else {
  return subFloat32Sigs(a, b, aSign);
 }

}

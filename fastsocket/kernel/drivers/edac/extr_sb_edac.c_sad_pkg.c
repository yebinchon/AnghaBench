
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;
 int SAD_PKG0 (int ) ;
 int SAD_PKG1 (int ) ;
 int SAD_PKG2 (int ) ;
 int SAD_PKG3 (int ) ;
 int SAD_PKG4 (int ) ;
 int SAD_PKG5 (int ) ;
 int SAD_PKG6 (int ) ;
 int SAD_PKG7 (int ) ;

__attribute__((used)) static inline int sad_pkg(u32 reg, int interleave)
{
 switch (interleave) {
 case 0:
  return SAD_PKG0(reg);
 case 1:
  return SAD_PKG1(reg);
 case 2:
  return SAD_PKG2(reg);
 case 3:
  return SAD_PKG3(reg);
 case 4:
  return SAD_PKG4(reg);
 case 5:
  return SAD_PKG5(reg);
 case 6:
  return SAD_PKG6(reg);
 case 7:
  return SAD_PKG7(reg);
 default:
  return -EINVAL;
 }
}

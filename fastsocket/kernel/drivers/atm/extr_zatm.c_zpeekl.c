
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zatm_dev {int dummy; } ;


 int CER ;
 int CMR ;
 int uPD98401_IA_BALL ;
 int uPD98401_IA_RW ;
 int uPD98401_IA_TGT_CM ;
 int uPD98401_IA_TGT_SHIFT ;
 int uPD98401_IND_ACC ;
 int zin (int ) ;
 int zout (int,int ) ;
 int zwait ;

__attribute__((used)) static u32 zpeekl(struct zatm_dev *zatm_dev,u32 addr)
{
 zwait;
 zout(uPD98401_IND_ACC | uPD98401_IA_BALL | uPD98401_IA_RW |
   (uPD98401_IA_TGT_CM << uPD98401_IA_TGT_SHIFT) | addr,CMR);
 zwait;
 return zin(CER);
}

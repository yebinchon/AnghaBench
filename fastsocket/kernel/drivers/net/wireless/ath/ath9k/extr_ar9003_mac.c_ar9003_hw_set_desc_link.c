
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ar9003_txc {int ctl10; int link; } ;


 int AR_TxPtrChkSum ;
 int ar9003_calc_ptr_chksum (struct ar9003_txc*) ;

__attribute__((used)) static void ar9003_hw_set_desc_link(void *ds, u32 ds_link)
{
 struct ar9003_txc *ads = ds;

 ads->link = ds_link;
 ads->ctl10 &= ~AR_TxPtrChkSum;
 ads->ctl10 |= ar9003_calc_ptr_chksum(ads);
}

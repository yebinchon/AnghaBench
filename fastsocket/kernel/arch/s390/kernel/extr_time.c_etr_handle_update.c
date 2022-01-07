
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct etr_eacr {int dp; scalar_t__ p1; scalar_t__ p0; int es; int e1; int e0; } ;
struct TYPE_2__ {scalar_t__ q; } ;
struct etr_aib {TYPE_1__ esw; } ;


 int ETR_STEAI_PORT_0 ;
 int ETR_STEAI_PORT_1 ;
 int check_sync_clock () ;
 struct etr_aib etr_port0 ;
 scalar_t__ etr_port0_online ;
 int etr_port0_uptodate ;
 struct etr_aib etr_port1 ;
 int etr_port1_uptodate ;
 scalar_t__ etr_steai_available ;
 int etr_steai_cv (struct etr_aib*,int ) ;

__attribute__((used)) static struct etr_eacr etr_handle_update(struct etr_aib *aib,
      struct etr_eacr eacr)
{

 if (!eacr.e0 && !eacr.e1)
  return eacr;


 if (aib->esw.q == 0) {

  if (eacr.p0 && !etr_port0_uptodate) {
   etr_port0 = *aib;
   if (etr_port0_online)
    etr_port0_uptodate = 1;
  }
 } else {

  if (eacr.p1 && !etr_port1_uptodate) {
   etr_port1 = *aib;
   if (etr_port0_online)
    etr_port1_uptodate = 1;
  }
 }





 if (!eacr.es || !check_sync_clock())
  return eacr;






 if (etr_steai_available) {
  if (eacr.p0 && !etr_port0_uptodate) {
   etr_steai_cv(&etr_port0, ETR_STEAI_PORT_0);
   etr_port0_uptodate = 1;
  }
  if (eacr.p1 && !etr_port1_uptodate) {
   etr_steai_cv(&etr_port1, ETR_STEAI_PORT_1);
   etr_port1_uptodate = 1;
  }
 } else {




  if ((eacr.p0 && !etr_port0_uptodate) ||
      (eacr.p1 && !etr_port1_uptodate))
   eacr.dp ^= 1;
  else
   eacr.dp = 0;
 }
 return eacr;
}

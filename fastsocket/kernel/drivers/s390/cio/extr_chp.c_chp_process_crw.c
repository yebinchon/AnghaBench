
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crw {int erc; int rsid; scalar_t__ slct; int anc; int rsc; int chn; int oflw; } ;
struct chp_id {int id; } ;


 int CIO_CRW_EVENT (int,char*,int,...) ;



 int chp_id_init (struct chp_id*) ;
 int chp_is_registered (struct chp_id) ;
 int chp_new (struct chp_id) ;
 int chsc_chp_offline (struct chp_id) ;
 int chsc_chp_online (struct chp_id) ;
 int css_schedule_eval_all () ;

__attribute__((used)) static void chp_process_crw(struct crw *crw0, struct crw *crw1,
       int overflow)
{
 struct chp_id chpid;

 if (overflow) {
  css_schedule_eval_all();
  return;
 }
 CIO_CRW_EVENT(2, "CRW reports slct=%d, oflw=%d, "
        "chn=%d, rsc=%X, anc=%d, erc=%X, rsid=%X\n",
        crw0->slct, crw0->oflw, crw0->chn, crw0->rsc, crw0->anc,
        crw0->erc, crw0->rsid);





 if (crw0->slct) {
  CIO_CRW_EVENT(2, "solicited machine check for "
         "channel path %02X\n", crw0->rsid);
  return;
 }
 chp_id_init(&chpid);
 chpid.id = crw0->rsid;
 switch (crw0->erc) {
 case 130:
  if (!chp_is_registered(chpid))
   chp_new(chpid);
  chsc_chp_online(chpid);
  break;
 case 129:
 case 128:
  chsc_chp_offline(chpid);
  break;
 default:
  CIO_CRW_EVENT(2, "Don't know how to handle erc=%x\n",
         crw0->erc);
 }
}

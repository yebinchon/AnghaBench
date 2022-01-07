
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chsc_sei_area {int rs; int ccdf; int rsid; } ;
struct chp_id {int id; } ;


 int CIO_CRW_EVENT (int,char*,...) ;
 int __get_chpid_from_lir (int ) ;
 int chp_id_init (struct chp_id*) ;
 int chsc_chp_offline (struct chp_id) ;

__attribute__((used)) static void chsc_process_sei_link_incident(struct chsc_sei_area *sei_area)
{
 struct chp_id chpid;
 int id;

 CIO_CRW_EVENT(4, "chsc: link incident (rs=%02x, rs_id=%04x)\n",
        sei_area->rs, sei_area->rsid);
 if (sei_area->rs != 4)
  return;
 id = __get_chpid_from_lir(sei_area->ccdf);
 if (id < 0)
  CIO_CRW_EVENT(4, "chsc: link incident - invalid LIR\n");
 else {
  chp_id_init(&chpid);
  chpid.id = id;
  chsc_chp_offline(chpid);
 }
}

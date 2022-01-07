
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chsc_sei_area {int flags; int cc; } ;


 int CIO_CRW_EVENT (int,char*,...) ;
 int chsc_process_sei_chp_avail (struct chsc_sei_area*) ;
 int chsc_process_sei_chp_config (struct chsc_sei_area*) ;
 int chsc_process_sei_link_incident (struct chsc_sei_area*) ;
 int chsc_process_sei_res_acc (struct chsc_sei_area*) ;
 int chsc_process_sei_scm_avail (struct chsc_sei_area*) ;
 int chsc_process_sei_scm_change (struct chsc_sei_area*) ;
 int css_schedule_eval_all () ;

__attribute__((used)) static void chsc_process_sei(struct chsc_sei_area *sei_area)
{

 if (sei_area->flags & 0x40) {
  CIO_CRW_EVENT(2, "chsc: event overflow\n");
  css_schedule_eval_all();
 }

 switch (sei_area->cc) {
 case 1:
  chsc_process_sei_link_incident(sei_area);
  break;
 case 2:
  chsc_process_sei_res_acc(sei_area);
  break;
 case 7:
  chsc_process_sei_chp_avail(sei_area);
  break;
 case 8:
  chsc_process_sei_chp_config(sei_area);
  break;
 case 12:
  chsc_process_sei_scm_change(sei_area);
  break;
 case 14:
  chsc_process_sei_scm_avail(sei_area);
  break;
 default:
  CIO_CRW_EVENT(4, "chsc: unhandled sei content code %d\n",
         sei_area->cc);
  break;
 }
}

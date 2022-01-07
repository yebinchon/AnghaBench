
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etr_eacr {scalar_t__ e1; int p1; scalar_t__ e0; int p0; scalar_t__ sl; scalar_t__ es; } ;


 int ETR_EVENT_PORT0_CHANGE ;
 int ETR_EVENT_PORT1_CHANGE ;
 int ETR_EVENT_PORT_ALERT ;
 int ETR_EVENT_SWITCH_LOCAL ;
 int ETR_EVENT_SYNC_CHECK ;
 int ETR_EVENT_UPDATE ;
 int clear_bit (int ,int *) ;
 int etr_events ;
 int etr_port0_online ;
 scalar_t__ etr_port0_uptodate ;
 int etr_port1_online ;
 scalar_t__ etr_port1_uptodate ;
 int etr_tolec ;
 int get_clock () ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static struct etr_eacr etr_handle_events(struct etr_eacr eacr)
{
 if (test_and_clear_bit(ETR_EVENT_SYNC_CHECK, &etr_events))
  eacr.es = 0;
 if (test_and_clear_bit(ETR_EVENT_SWITCH_LOCAL, &etr_events))
  eacr.es = eacr.sl = 0;
 if (test_and_clear_bit(ETR_EVENT_PORT_ALERT, &etr_events))
  etr_port0_uptodate = etr_port1_uptodate = 0;

 if (test_and_clear_bit(ETR_EVENT_PORT0_CHANGE, &etr_events)) {
  if (eacr.e0)





   etr_tolec = get_clock();
  eacr.p0 = etr_port0_online;
  if (!eacr.p0)
   eacr.e0 = 0;
  etr_port0_uptodate = 0;
 }
 if (test_and_clear_bit(ETR_EVENT_PORT1_CHANGE, &etr_events)) {
  if (eacr.e1)





   etr_tolec = get_clock();
  eacr.p1 = etr_port1_online;
  if (!eacr.p1)
   eacr.e1 = 0;
  etr_port1_uptodate = 0;
 }
 clear_bit(ETR_EVENT_UPDATE, &etr_events);
 return eacr;
}

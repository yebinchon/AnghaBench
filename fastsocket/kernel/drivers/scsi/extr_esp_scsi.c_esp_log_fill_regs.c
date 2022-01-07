
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esp_event_ent {int event; int select_state; int ireg; int sreg2; int seqreg; int sreg; } ;
struct esp {int event; int select_state; int ireg; int sreg2; int seqreg; int sreg; } ;



__attribute__((used)) static void esp_log_fill_regs(struct esp *esp,
         struct esp_event_ent *p)
{
 p->sreg = esp->sreg;
 p->seqreg = esp->seqreg;
 p->sreg2 = esp->sreg2;
 p->ireg = esp->ireg;
 p->select_state = esp->select_state;
 p->event = esp->event;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_stack {int a5; } ;
struct sigcontext {unsigned long sc_mask; int sc_formatvec; int sc_pc; int sc_sr; int sc_a5; int sc_a1; int sc_a0; int sc_d1; int sc_d0; int sc_usp; } ;
struct pt_regs {int format; int vector; int pc; int sr; int a1; int a0; int d1; int d0; } ;


 int rdusp () ;
 int save_fpu_state (struct sigcontext*,struct pt_regs*) ;

__attribute__((used)) static void setup_sigcontext(struct sigcontext *sc, struct pt_regs *regs,
        unsigned long mask)
{
 sc->sc_mask = mask;
 sc->sc_usp = rdusp();
 sc->sc_d0 = regs->d0;
 sc->sc_d1 = regs->d1;
 sc->sc_a0 = regs->a0;
 sc->sc_a1 = regs->a1;
 sc->sc_a5 = ((struct switch_stack *)regs - 1)->a5;
 sc->sc_sr = regs->sr;
 sc->sc_pc = regs->pc;
 sc->sc_formatvec = regs->format << 12 | regs->vector;



}

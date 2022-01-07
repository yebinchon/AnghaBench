
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siginfo {unsigned long si_isr; void* si_signo; void* si_code; scalar_t__ si_flags; scalar_t__ si_imm; scalar_t__ si_errno; } ;
struct pt_regs {int dummy; } ;


 void* BUS_ADRALN ;
 void* FPE_FLTDIV ;
 void* FPE_FLTINV ;
 void* FPE_FLTOVF ;
 void* FPE_FLTRES ;
 void* FPE_FLTUND ;
 void* FPE_INTDIV ;
 void* ILL_ILLOPN ;
 void* SIGFPE ;
 void* SIGILL ;
 void* SIGSEGV ;
 void* SIGTRAP ;
 void* TRAP_BRANCH ;
 void* TRAP_BRKPT ;
 void* TRAP_TRACE ;
 int _IA64_REG_AR_FCR ;
 int _IA64_REG_AR_FSR ;
 scalar_t__ __ISR_VALID ;
 int current ;
 int force_sig_info (void*,struct siginfo*,int ) ;
 unsigned long ia64_getreg (int ) ;

int
ia32_exception (struct pt_regs *regs, unsigned long isr)
{
 struct siginfo siginfo;


 siginfo.si_errno = 0;
 siginfo.si_flags = 0;
 siginfo.si_isr = 0;
 siginfo.si_imm = 0;
 switch ((isr >> 16) & 0xff) {
       case 1:
       case 2:
  siginfo.si_signo = SIGTRAP;
  if (isr == 0)
   siginfo.si_code = TRAP_TRACE;
  else if (isr & 0x4)
   siginfo.si_code = TRAP_BRANCH;
  else
   siginfo.si_code = TRAP_BRKPT;
  break;

       case 3:
  siginfo.si_signo = SIGTRAP;
  siginfo.si_code = TRAP_BRKPT;
  break;

       case 0:
  siginfo.si_signo = SIGFPE;
  siginfo.si_code = FPE_INTDIV;
  break;

       case 4:
       case 5:
  siginfo.si_signo = SIGFPE;
  siginfo.si_code = 0;
  break;

       case 6:
  siginfo.si_signo = SIGILL;
  siginfo.si_code = ILL_ILLOPN;
  break;

       case 7:
       case 8:
       case 9:
       case 11:
       case 12:
       case 13:
  siginfo.si_signo = SIGSEGV;
  siginfo.si_code = 0;
  break;

       case 16:
  {
   unsigned long fsr, fcr;

   fsr = ia64_getreg(_IA64_REG_AR_FSR);
   fcr = ia64_getreg(_IA64_REG_AR_FCR);

   siginfo.si_signo = SIGFPE;
   siginfo.si_isr = isr;
   siginfo.si_flags = __ISR_VALID;
   switch(((~fcr) & (fsr & 0x3f)) | (fsr & 0x240)) {
    case 0x000:
    default:
     siginfo.si_code = 0;
     break;
    case 0x001:
    case 0x040:
    case 0x240:
     siginfo.si_code = FPE_FLTINV;
     break;
    case 0x002:
    case 0x010:
     siginfo.si_code = FPE_FLTUND;
     break;
    case 0x004:
     siginfo.si_code = FPE_FLTDIV;
     break;
    case 0x008:
     siginfo.si_code = FPE_FLTOVF;
     break;
    case 0x020:
     siginfo.si_code = FPE_FLTRES;
     break;
   }

   break;
  }

       case 17:
  siginfo.si_signo = SIGSEGV;
  siginfo.si_code = BUS_ADRALN;
  break;

       case 19:
  siginfo.si_signo = SIGFPE;
  siginfo.si_code = 0;
  break;

       default:
  return -1;
 }
 force_sig_info(siginfo.si_signo, &siginfo, current);
 return 0;
}

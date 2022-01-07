
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_regs_struct {int dummy; } ;
struct user_fpxregs_struct {int dummy; } ;
struct user_fpregs_struct {int dummy; } ;


 int CS ;
 int DEFINE (int ,int) ;
 int DEFINE_LONGS (int ,int) ;
 int DS ;
 int EAX ;
 int EBP ;
 int EBX ;
 int ECX ;
 int EDI ;
 int EDX ;
 int EFL ;
 int EIP ;
 int ES ;
 int ESI ;
 int FS ;
 int GS ;
 int HOST_CS ;
 int HOST_DS ;
 int HOST_EAX ;
 int HOST_EBP ;
 int HOST_EBX ;
 int HOST_ECX ;
 int HOST_EDI ;
 int HOST_EDX ;
 int HOST_EFLAGS ;
 int HOST_ES ;
 int HOST_ESI ;
 int HOST_FPX_SIZE ;
 int HOST_FP_SIZE ;
 int HOST_FS ;
 int HOST_GS ;
 int HOST_IP ;
 int HOST_SC_CR2 ;
 int HOST_SC_ERR ;
 int HOST_SC_TRAPNO ;
 int HOST_SP ;
 int HOST_SS ;
 int OFFSET (int ,int ,int ) ;
 int POLLIN ;
 int POLLOUT ;
 int POLLPRI ;
 int PROT_EXEC ;
 int PROT_READ ;
 int PROT_WRITE ;
 int SS ;
 int UESP ;
 int UM_FRAME_SIZE ;
 int UM_POLLIN ;
 int UM_POLLOUT ;
 int UM_POLLPRI ;
 int UM_PROT_EXEC ;
 int UM_PROT_READ ;
 int UM_PROT_WRITE ;
 int cr2 ;
 int err ;
 int sigcontext ;
 int trapno ;

void foo(void)
{
 OFFSET(HOST_SC_TRAPNO, sigcontext, trapno);
 OFFSET(HOST_SC_ERR, sigcontext, err);
 OFFSET(HOST_SC_CR2, sigcontext, cr2);

 DEFINE_LONGS(HOST_FP_SIZE, sizeof(struct user_fpregs_struct));
 DEFINE_LONGS(HOST_FPX_SIZE, sizeof(struct user_fpxregs_struct));

 DEFINE(HOST_IP, EIP);
 DEFINE(HOST_SP, UESP);
 DEFINE(HOST_EFLAGS, EFL);
 DEFINE(HOST_EAX, EAX);
 DEFINE(HOST_EBX, EBX);
 DEFINE(HOST_ECX, ECX);
 DEFINE(HOST_EDX, EDX);
 DEFINE(HOST_ESI, ESI);
 DEFINE(HOST_EDI, EDI);
 DEFINE(HOST_EBP, EBP);
 DEFINE(HOST_CS, CS);
 DEFINE(HOST_SS, SS);
 DEFINE(HOST_DS, DS);
 DEFINE(HOST_FS, FS);
 DEFINE(HOST_ES, ES);
 DEFINE(HOST_GS, GS);
 DEFINE(UM_FRAME_SIZE, sizeof(struct user_regs_struct));


 DEFINE(UM_POLLIN, POLLIN);
 DEFINE(UM_POLLPRI, POLLPRI);
 DEFINE(UM_POLLOUT, POLLOUT);

 DEFINE(UM_PROT_READ, PROT_READ);
 DEFINE(UM_PROT_WRITE, PROT_WRITE);
 DEFINE(UM_PROT_EXEC, PROT_EXEC);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_regs_struct {int dummy; } ;
struct _fpstate {int dummy; } ;


 int CS ;
 int DEFINE (int ,int) ;
 int DEFINE_LONGS (int ,int ) ;
 int DS ;
 int EFLAGS ;
 int ES ;
 int FS ;
 int GS ;
 int HOST_CS ;
 int HOST_DS ;
 int HOST_EFLAGS ;
 int HOST_ES ;
 int HOST_FP_SIZE ;
 int HOST_FS ;
 int HOST_GS ;
 int HOST_IP ;
 int HOST_ORIG_RAX ;
 int HOST_R10 ;
 int HOST_R11 ;
 int HOST_R12 ;
 int HOST_R13 ;
 int HOST_R14 ;
 int HOST_R15 ;
 int HOST_R8 ;
 int HOST_R9 ;
 int HOST_RAX ;
 int HOST_RBP ;
 int HOST_RBX ;
 int HOST_RCX ;
 int HOST_RDI ;
 int HOST_RDX ;
 int HOST_RSI ;
 int HOST_SC_CR2 ;
 int HOST_SC_ERR ;
 int HOST_SC_TRAPNO ;
 int HOST_SP ;
 int HOST_SS ;
 int OFFSET (int ,int ,int ) ;
 int ORIG_RAX ;
 int POLLIN ;
 int POLLOUT ;
 int POLLPRI ;
 int PROT_EXEC ;
 int PROT_READ ;
 int PROT_WRITE ;
 int R10 ;
 int R11 ;
 int R12 ;
 int R13 ;
 int R14 ;
 int R15 ;
 int R8 ;
 int R9 ;
 int RAX ;
 int RBP ;
 int RBX ;
 int RCX ;
 int RDI ;
 int RDX ;
 int RIP ;
 int RSI ;
 int RSP ;
 int SS ;
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
 OFFSET(HOST_SC_CR2, sigcontext, cr2);
 OFFSET(HOST_SC_ERR, sigcontext, err);
 OFFSET(HOST_SC_TRAPNO, sigcontext, trapno);

 DEFINE(HOST_FP_SIZE, sizeof(struct _fpstate) / sizeof(unsigned long));
 DEFINE_LONGS(HOST_RBX, RBX);
 DEFINE_LONGS(HOST_RCX, RCX);
 DEFINE_LONGS(HOST_RDI, RDI);
 DEFINE_LONGS(HOST_RSI, RSI);
 DEFINE_LONGS(HOST_RDX, RDX);
 DEFINE_LONGS(HOST_RBP, RBP);
 DEFINE_LONGS(HOST_RAX, RAX);
 DEFINE_LONGS(HOST_R8, R8);
 DEFINE_LONGS(HOST_R9, R9);
 DEFINE_LONGS(HOST_R10, R10);
 DEFINE_LONGS(HOST_R11, R11);
 DEFINE_LONGS(HOST_R12, R12);
 DEFINE_LONGS(HOST_R13, R13);
 DEFINE_LONGS(HOST_R14, R14);
 DEFINE_LONGS(HOST_R15, R15);
 DEFINE_LONGS(HOST_ORIG_RAX, ORIG_RAX);
 DEFINE_LONGS(HOST_CS, CS);
 DEFINE_LONGS(HOST_SS, SS);
 DEFINE_LONGS(HOST_EFLAGS, EFLAGS);







 DEFINE_LONGS(HOST_IP, RIP);
 DEFINE_LONGS(HOST_SP, RSP);
 DEFINE(UM_FRAME_SIZE, sizeof(struct user_regs_struct));


 DEFINE(UM_POLLIN, POLLIN);
 DEFINE(UM_POLLPRI, POLLPRI);
 DEFINE(UM_POLLOUT, POLLOUT);

 DEFINE(UM_PROT_READ, PROT_READ);
 DEFINE(UM_PROT_WRITE, PROT_WRITE);
 DEFINE(UM_PROT_EXEC, PROT_EXEC);
}

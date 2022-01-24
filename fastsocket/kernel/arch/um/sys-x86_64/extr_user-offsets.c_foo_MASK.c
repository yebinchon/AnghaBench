#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct user_regs_struct {int dummy; } ;
struct _fpstate {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DS ; 
 int /*<<< orphan*/  EFLAGS ; 
 int /*<<< orphan*/  ES ; 
 int /*<<< orphan*/  FS ; 
 int /*<<< orphan*/  GS ; 
 int /*<<< orphan*/  HOST_CS ; 
 int /*<<< orphan*/  HOST_DS ; 
 int /*<<< orphan*/  HOST_EFLAGS ; 
 int /*<<< orphan*/  HOST_ES ; 
 int /*<<< orphan*/  HOST_FP_SIZE ; 
 int /*<<< orphan*/  HOST_FS ; 
 int /*<<< orphan*/  HOST_GS ; 
 int /*<<< orphan*/  HOST_IP ; 
 int /*<<< orphan*/  HOST_ORIG_RAX ; 
 int /*<<< orphan*/  HOST_R10 ; 
 int /*<<< orphan*/  HOST_R11 ; 
 int /*<<< orphan*/  HOST_R12 ; 
 int /*<<< orphan*/  HOST_R13 ; 
 int /*<<< orphan*/  HOST_R14 ; 
 int /*<<< orphan*/  HOST_R15 ; 
 int /*<<< orphan*/  HOST_R8 ; 
 int /*<<< orphan*/  HOST_R9 ; 
 int /*<<< orphan*/  HOST_RAX ; 
 int /*<<< orphan*/  HOST_RBP ; 
 int /*<<< orphan*/  HOST_RBX ; 
 int /*<<< orphan*/  HOST_RCX ; 
 int /*<<< orphan*/  HOST_RDI ; 
 int /*<<< orphan*/  HOST_RDX ; 
 int /*<<< orphan*/  HOST_RSI ; 
 int /*<<< orphan*/  HOST_SC_CR2 ; 
 int /*<<< orphan*/  HOST_SC_ERR ; 
 int /*<<< orphan*/  HOST_SC_TRAPNO ; 
 int /*<<< orphan*/  HOST_SP ; 
 int /*<<< orphan*/  HOST_SS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ORIG_RAX ; 
 int POLLIN ; 
 int POLLOUT ; 
 int POLLPRI ; 
 int PROT_EXEC ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  R10 ; 
 int /*<<< orphan*/  R11 ; 
 int /*<<< orphan*/  R12 ; 
 int /*<<< orphan*/  R13 ; 
 int /*<<< orphan*/  R14 ; 
 int /*<<< orphan*/  R15 ; 
 int /*<<< orphan*/  R8 ; 
 int /*<<< orphan*/  R9 ; 
 int /*<<< orphan*/  RAX ; 
 int /*<<< orphan*/  RBP ; 
 int /*<<< orphan*/  RBX ; 
 int /*<<< orphan*/  RCX ; 
 int /*<<< orphan*/  RDI ; 
 int /*<<< orphan*/  RDX ; 
 int /*<<< orphan*/  RIP ; 
 int /*<<< orphan*/  RSI ; 
 int /*<<< orphan*/  RSP ; 
 int /*<<< orphan*/  SS ; 
 int /*<<< orphan*/  UM_FRAME_SIZE ; 
 int /*<<< orphan*/  UM_POLLIN ; 
 int /*<<< orphan*/  UM_POLLOUT ; 
 int /*<<< orphan*/  UM_POLLPRI ; 
 int /*<<< orphan*/  UM_PROT_EXEC ; 
 int /*<<< orphan*/  UM_PROT_READ ; 
 int /*<<< orphan*/  UM_PROT_WRITE ; 
 int /*<<< orphan*/  cr2 ; 
 int /*<<< orphan*/  err ; 
 int /*<<< orphan*/  sigcontext ; 
 int /*<<< orphan*/  trapno ; 

void FUNC3(void)
{
	FUNC2(HOST_SC_CR2, sigcontext, cr2);
	FUNC2(HOST_SC_ERR, sigcontext, err);
	FUNC2(HOST_SC_TRAPNO, sigcontext, trapno);

	FUNC0(HOST_FP_SIZE, sizeof(struct _fpstate) / sizeof(unsigned long));
	FUNC1(HOST_RBX, RBX);
	FUNC1(HOST_RCX, RCX);
	FUNC1(HOST_RDI, RDI);
	FUNC1(HOST_RSI, RSI);
	FUNC1(HOST_RDX, RDX);
	FUNC1(HOST_RBP, RBP);
	FUNC1(HOST_RAX, RAX);
	FUNC1(HOST_R8, R8);
	FUNC1(HOST_R9, R9);
	FUNC1(HOST_R10, R10);
	FUNC1(HOST_R11, R11);
	FUNC1(HOST_R12, R12);
	FUNC1(HOST_R13, R13);
	FUNC1(HOST_R14, R14);
	FUNC1(HOST_R15, R15);
	FUNC1(HOST_ORIG_RAX, ORIG_RAX);
	FUNC1(HOST_CS, CS);
	FUNC1(HOST_SS, SS);
	FUNC1(HOST_EFLAGS, EFLAGS);
#if 0
	DEFINE_LONGS(HOST_FS, FS);
	DEFINE_LONGS(HOST_GS, GS);
	DEFINE_LONGS(HOST_DS, DS);
	DEFINE_LONGS(HOST_ES, ES);
#endif

	FUNC1(HOST_IP, RIP);
	FUNC1(HOST_SP, RSP);
	FUNC0(UM_FRAME_SIZE, sizeof(struct user_regs_struct));

	/* XXX Duplicated between i386 and x86_64 */
	FUNC0(UM_POLLIN, POLLIN);
	FUNC0(UM_POLLPRI, POLLPRI);
	FUNC0(UM_POLLOUT, POLLOUT);

	FUNC0(UM_PROT_READ, PROT_READ);
	FUNC0(UM_PROT_WRITE, PROT_WRITE);
	FUNC0(UM_PROT_EXEC, PROT_EXEC);
}
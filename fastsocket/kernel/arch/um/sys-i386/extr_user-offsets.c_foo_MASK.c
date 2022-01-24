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
struct user_fpxregs_struct {int dummy; } ;
struct user_fpregs_struct {int dummy; } ;

/* Variables and functions */
 int CS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
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
 int /*<<< orphan*/  HOST_CS ; 
 int /*<<< orphan*/  HOST_DS ; 
 int /*<<< orphan*/  HOST_EAX ; 
 int /*<<< orphan*/  HOST_EBP ; 
 int /*<<< orphan*/  HOST_EBX ; 
 int /*<<< orphan*/  HOST_ECX ; 
 int /*<<< orphan*/  HOST_EDI ; 
 int /*<<< orphan*/  HOST_EDX ; 
 int /*<<< orphan*/  HOST_EFLAGS ; 
 int /*<<< orphan*/  HOST_ES ; 
 int /*<<< orphan*/  HOST_ESI ; 
 int /*<<< orphan*/  HOST_FPX_SIZE ; 
 int /*<<< orphan*/  HOST_FP_SIZE ; 
 int /*<<< orphan*/  HOST_FS ; 
 int /*<<< orphan*/  HOST_GS ; 
 int /*<<< orphan*/  HOST_IP ; 
 int /*<<< orphan*/  HOST_SC_CR2 ; 
 int /*<<< orphan*/  HOST_SC_ERR ; 
 int /*<<< orphan*/  HOST_SC_TRAPNO ; 
 int /*<<< orphan*/  HOST_SP ; 
 int /*<<< orphan*/  HOST_SS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int POLLIN ; 
 int POLLOUT ; 
 int POLLPRI ; 
 int PROT_EXEC ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int SS ; 
 int UESP ; 
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
	FUNC2(HOST_SC_TRAPNO, sigcontext, trapno);
	FUNC2(HOST_SC_ERR, sigcontext, err);
	FUNC2(HOST_SC_CR2, sigcontext, cr2);

	FUNC1(HOST_FP_SIZE, sizeof(struct user_fpregs_struct));
	FUNC1(HOST_FPX_SIZE, sizeof(struct user_fpxregs_struct));

	FUNC0(HOST_IP, EIP);
	FUNC0(HOST_SP, UESP);
	FUNC0(HOST_EFLAGS, EFL);
	FUNC0(HOST_EAX, EAX);
	FUNC0(HOST_EBX, EBX);
	FUNC0(HOST_ECX, ECX);
	FUNC0(HOST_EDX, EDX);
	FUNC0(HOST_ESI, ESI);
	FUNC0(HOST_EDI, EDI);
	FUNC0(HOST_EBP, EBP);
	FUNC0(HOST_CS, CS);
	FUNC0(HOST_SS, SS);
	FUNC0(HOST_DS, DS);
	FUNC0(HOST_FS, FS);
	FUNC0(HOST_ES, ES);
	FUNC0(HOST_GS, GS);
	FUNC0(UM_FRAME_SIZE, sizeof(struct user_regs_struct));

	/* XXX Duplicated between i386 and x86_64 */
	FUNC0(UM_POLLIN, POLLIN);
	FUNC0(UM_POLLPRI, POLLPRI);
	FUNC0(UM_POLLOUT, POLLOUT);

	FUNC0(UM_PROT_READ, PROT_READ);
	FUNC0(UM_PROT_WRITE, PROT_WRITE);
	FUNC0(UM_PROT_EXEC, PROT_EXEC);
}
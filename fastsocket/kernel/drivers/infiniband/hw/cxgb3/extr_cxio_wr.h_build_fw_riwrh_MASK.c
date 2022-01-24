#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  genbit; } ;
union t3_wr {TYPE_1__ genbit; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct fw_riwrh {void* gen_tid_len; void* op_seop_flags; } ;
typedef  enum t3_wr_opcode { ____Placeholder_t3_wr_opcode } t3_wr_opcode ;
typedef  enum t3_wr_flags { ____Placeholder_t3_wr_flags } t3_wr_flags ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static inline void FUNC9(struct fw_riwrh *wqe, enum t3_wr_opcode op,
				  enum t3_wr_flags flags, u8 genbit, u32 tid,
				  u8 len, u8 sopeop)
{
	wqe->op_seop_flags = FUNC6(FUNC3(op) |
					 FUNC4(sopeop) |
					 FUNC0(flags));
	FUNC8();
	wqe->gen_tid_len = FUNC6(FUNC1(genbit) |
				       FUNC5(tid) |
				       FUNC2(len));
	/* 2nd gen bit... */
	((union t3_wr *)wqe)->genbit.genbit = FUNC7(genbit);
}
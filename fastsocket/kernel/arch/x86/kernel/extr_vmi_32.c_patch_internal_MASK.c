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
typedef  int /*<<< orphan*/  u64 ;
struct vmi_relocation_info {int type; scalar_t__ eip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char MNEM_CALL ; 
 char MNEM_JMP ; 
#define  VMI_RELOCATION_CALL_REL 131 
#define  VMI_RELOCATION_JUMP_REL 130 
#define  VMI_RELOCATION_NONE 129 
#define  VMI_RELOCATION_NOP 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  get_reloc ; 
 int /*<<< orphan*/  FUNC3 (void*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  vmi_rom ; 

__attribute__((used)) static unsigned FUNC4(int call, unsigned len, void *insnbuf,
			       unsigned long ip)
{
	u64 reloc;
	struct vmi_relocation_info *const rel = (struct vmi_relocation_info *)&reloc;
	reloc = FUNC2(vmi_rom, get_reloc,	call);
	switch(rel->type) {
		case VMI_RELOCATION_CALL_REL:
			FUNC1(len < 5);
			*(char *)insnbuf = MNEM_CALL;
			FUNC3(insnbuf, ip, (unsigned long)rel->eip);
			return 5;

		case VMI_RELOCATION_JUMP_REL:
			FUNC1(len < 5);
			*(char *)insnbuf = MNEM_JMP;
			FUNC3(insnbuf, ip, (unsigned long)rel->eip);
			return 5;

		case VMI_RELOCATION_NOP:
			/* obliterate the whole thing */
			return 0;

		case VMI_RELOCATION_NONE:
			/* leave native code in place */
			break;

		default:
			FUNC0();
	}
	return len;
}
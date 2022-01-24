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
typedef  int /*<<< orphan*/ * vi_handler_t ;
typedef  int u32 ;
struct TYPE_2__ {int srsets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int VECTORSPACING ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 scalar_t__ cpu_has_veic ; 
 scalar_t__ cpu_has_vint ; 
 scalar_t__ cpu_wait ; 
 TYPE_1__ current_cpu_data ; 
 scalar_t__ do_default_vi ; 
 scalar_t__ ebase ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,char*,int const) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ r4k_wait ; 
 unsigned long* vi_handlers ; 

__attribute__((used)) static void *FUNC6(int n, vi_handler_t addr, int srs)
{
	unsigned long handler;
	unsigned long old_handler = vi_handlers[n];
	int srssets = current_cpu_data.srsets;
	u32 *w;
	unsigned char *b;

	FUNC0(!cpu_has_veic && !cpu_has_vint);

	if (addr == NULL) {
		handler = (unsigned long) do_default_vi;
		srs = 0;
	} else
		handler = (unsigned long) addr;
	vi_handlers[n] = (unsigned long) addr;

	b = (unsigned char *)(ebase + 0x200 + n*VECTORSPACING);

	if (srs >= srssets)
		FUNC5("Shadow register set %d not supported", srs);

	if (cpu_has_veic) {
		if (&board_bind_eic_interrupt)
			FUNC1(n, srs);
	} else if (cpu_has_vint) {
		/* SRSMap is only defined if shadow sets are implemented */
		if (srssets > 1)
			FUNC2(0xf << n*4, srs << n*4);
	}

	if (srs == 0) {
		/*
		 * If no shadow set is selected then use the default handler
		 * that does normal register saving and a standard interrupt exit
		 */

		extern char except_vec_vi, except_vec_vi_lui;
		extern char except_vec_vi_ori, except_vec_vi_end;
		extern char rollback_except_vec_vi;
		char *vec_start = (cpu_wait == r4k_wait) ?
			&rollback_except_vec_vi : &except_vec_vi;
#ifdef CONFIG_MIPS_MT_SMTC
		/*
		 * We need to provide the SMTC vectored interrupt handler
		 * not only with the address of the handler, but with the
		 * Status.IM bit to be masked before going there.
		 */
		extern char except_vec_vi_mori;
		const int mori_offset = &except_vec_vi_mori - vec_start;
#endif /* CONFIG_MIPS_MT_SMTC */
		const int handler_len = &except_vec_vi_end - vec_start;
		const int lui_offset = &except_vec_vi_lui - vec_start;
		const int ori_offset = &except_vec_vi_ori - vec_start;

		if (handler_len > VECTORSPACING) {
			/*
			 * Sigh... panicing won't help as the console
			 * is probably not configured :(
			 */
			FUNC5("VECTORSPACING too small");
		}

		FUNC4(b, vec_start, handler_len);
#ifdef CONFIG_MIPS_MT_SMTC
		BUG_ON(n > 7);	/* Vector index %d exceeds SMTC maximum. */

		w = (u32 *)(b + mori_offset);
		*w = (*w & 0xffff0000) | (0x100 << n);
#endif /* CONFIG_MIPS_MT_SMTC */
		w = (u32 *)(b + lui_offset);
		*w = (*w & 0xffff0000) | (((u32)handler >> 16) & 0xffff);
		w = (u32 *)(b + ori_offset);
		*w = (*w & 0xffff0000) | ((u32)handler & 0xffff);
		FUNC3((unsigned long)b,
					 (unsigned long)(b+handler_len));
	}
	else {
		/*
		 * In other cases jump directly to the interrupt handler
		 *
		 * It is the handlers responsibility to save registers if required
		 * (eg hi/lo) and return from the exception using "eret"
		 */
		w = (u32 *)b;
		*w++ = 0x08000000 | (((u32)handler >> 2) & 0x03fffff); /* j handler */
		*w = 0;
		FUNC3((unsigned long)b,
					 (unsigned long)(b+8));
	}

	return (void *)old_handler;
}
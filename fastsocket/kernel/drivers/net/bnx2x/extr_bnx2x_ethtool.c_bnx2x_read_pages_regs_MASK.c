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
typedef  int u32 ;
struct reg_addr {int size; int addr; int /*<<< orphan*/  presets; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,int const,int const) ; 
 int* FUNC3 (struct bnx2x*) ; 
 struct reg_addr* FUNC4 (struct bnx2x*) ; 
 int FUNC5 (struct bnx2x*) ; 
 int FUNC6 (struct bnx2x*) ; 
 int* FUNC7 (struct bnx2x*) ; 
 int FUNC8 (struct bnx2x*) ; 

__attribute__((used)) static void FUNC9(struct bnx2x *bp, u32 *p, u32 preset)
{
	u32 i, j, k, n;

	/* addresses of the paged registers */
	const u32 *page_addr = FUNC3(bp);
	/* number of paged registers */
	int num_pages = FUNC6(bp);
	/* write addresses */
	const u32 *write_addr = FUNC7(bp);
	/* number of write addresses */
	int write_num = FUNC8(bp);
	/* read addresses info */
	const struct reg_addr *read_addr = FUNC4(bp);
	/* number of read addresses */
	int read_num = FUNC5(bp);
	u32 addr, size;

	for (i = 0; i < num_pages; i++) {
		for (j = 0; j < write_num; j++) {
			FUNC2(bp, write_addr[j], page_addr[i]);

			for (k = 0; k < read_num; k++) {
				if (FUNC0(read_addr[k].presets,
						     preset)) {
					size = read_addr[k].size;
					for (n = 0; n < size; n++) {
						addr = read_addr[k].addr + n*4;
						*p++ = FUNC1(bp, addr);
					}
				}
			}
		}
	}
}
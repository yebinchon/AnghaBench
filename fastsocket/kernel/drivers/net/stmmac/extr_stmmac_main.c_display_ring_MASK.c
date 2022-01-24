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
typedef  int u64 ;
struct dma_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (struct dma_desc*) ; 

__attribute__((used)) static void FUNC2(struct dma_desc *p, int size)
{
	struct tmp_s {
		u64 a;
		unsigned int b;
		unsigned int c;
	};
	int i;
	for (i = 0; i < size; i++) {
		struct tmp_s *x = (struct tmp_s *)(p + i);
		FUNC0("\t%d [0x%x]: DES0=0x%x DES1=0x%x BUF1=0x%x BUF2=0x%x",
		       i, (unsigned int)FUNC1(&p[i]),
		       (unsigned int)(x->a), (unsigned int)((x->a) >> 32),
		       x->b, x->c);
		FUNC0("\n");
	}
}
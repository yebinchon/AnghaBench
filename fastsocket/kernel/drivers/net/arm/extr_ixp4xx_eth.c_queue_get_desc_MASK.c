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
struct port {int dummy; } ;
struct desc {int next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int RX_DESCS ; 
 int TX_DESCS ; 
 int /*<<< orphan*/  FUNC1 (int,struct desc*) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (struct port*,int /*<<< orphan*/ ) ; 
 struct desc* FUNC4 (struct port*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct port*,int /*<<< orphan*/ ) ; 
 struct desc* FUNC6 (struct port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC7(unsigned int queue, struct port *port,
				 int is_tx)
{
	u32 phys, tab_phys, n_desc;
	struct desc *tab;

	if (!(phys = FUNC2(queue)))
		return -1;

	phys &= ~0x1F; /* mask out non-address bits */
	tab_phys = is_tx ? FUNC5(port, 0) : FUNC3(port, 0);
	tab = is_tx ? FUNC6(port, 0) : FUNC4(port, 0);
	n_desc = (phys - tab_phys) / sizeof(struct desc);
	FUNC0(n_desc >= (is_tx ? TX_DESCS : RX_DESCS));
	FUNC1(phys, &tab[n_desc]);
	FUNC0(tab[n_desc].next);
	return n_desc;
}
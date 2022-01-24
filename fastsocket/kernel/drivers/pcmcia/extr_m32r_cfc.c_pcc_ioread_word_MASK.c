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
typedef  int /*<<< orphan*/  u_long ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int,...) ; 
 int /*<<< orphan*/  pcc_lock ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(int sock, unsigned long port, void *buf, size_t size,
	size_t nmemb, int flag)
{
	u_long addr;
	unsigned short *bp = (unsigned short *)buf;
	unsigned long flags;

	FUNC0(3, "m32r_cfc: pcc_ioread_word: sock=%d, port=%#lx, "
		 "buf=%p, size=%u, nmemb=%d, flag=%d\n",
		 sock, port, buf, size, nmemb, flag);

	if (size != 2)
		FUNC2("m32r_cfc: ioread_word :illigal size %u : %#lx\n", size,
			port);
	if (size == 9)
		FUNC2("m32r_cfc: ioread_word :insw \n");

	addr = FUNC1(port, 2);
	if (!addr) {
		FUNC2("m32r_cfc:ioread_word null port :%#lx\n",port);
		return;
	}
	FUNC0(3, "m32r_cfc: pcc_ioread_word: addr=%#lx\n", addr);

	FUNC4(&pcc_lock, flags);
	/* read Word */
	while (nmemb--)
		*bp++ = FUNC3(addr);
	FUNC5(&pcc_lock, flags);
}
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
 int /*<<< orphan*/  FUNC2 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(int sock, unsigned long port, void *buf, size_t size,
	size_t nmemb, int flag)
{
	u_long addr;
	unsigned char *bp = (unsigned char *)buf;
	unsigned long flags;

	FUNC0(3, "m32r_cfc: pcc_ioread_byte: sock=%d, port=%#lx, buf=%p, "
		 "size=%u, nmemb=%d, flag=%d\n",
		  sock, port, buf, size, nmemb, flag);

	addr = FUNC1(port, 1);
	if (!addr) {
		FUNC2("m32r_cfc:ioread_byte null port :%#lx\n",port);
		return;
	}
	FUNC0(3, "m32r_cfc: pcc_ioread_byte: addr=%#lx\n", addr);

	FUNC4(&pcc_lock, flags);
	/* read Byte */
	while (nmemb--)
		*bp++ = FUNC3(addr);
	FUNC5(&pcc_lock, flags);
}
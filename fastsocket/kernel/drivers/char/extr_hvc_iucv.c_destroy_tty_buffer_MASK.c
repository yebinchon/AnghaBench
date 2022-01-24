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
struct iucv_tty_buffer {int /*<<< orphan*/  mbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  hvc_iucv_mempool ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iucv_tty_buffer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct iucv_tty_buffer *bufp)
{
	FUNC0(bufp->mbuf);
	FUNC1(bufp, hvc_iucv_mempool);
}
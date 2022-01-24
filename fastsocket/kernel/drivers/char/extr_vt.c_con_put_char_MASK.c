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
struct tty_struct {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct tty_struct*,unsigned char*,int) ; 
 scalar_t__ FUNC1 () ; 

__attribute__((used)) static int FUNC2(struct tty_struct *tty, unsigned char ch)
{
	if (FUNC1())
		return 0;	/* n_r3964 calls put_char() from interrupt context */
	return FUNC0(tty, &ch, 1);
}
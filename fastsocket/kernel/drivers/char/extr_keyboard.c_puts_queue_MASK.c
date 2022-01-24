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
struct vc_data {struct tty_struct* vc_tty; } ;
struct tty_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*,char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct vc_data *vc, char *cp)
{
	struct tty_struct *tty = vc->vc_tty;

	if (!tty)
		return;

	while (*cp) {
		FUNC1(tty, *cp, 0);
		cp++;
	}
	FUNC0(tty);
}
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
struct tun_struct {struct tun_file* tfile; } ;
struct tun_file {int /*<<< orphan*/  tun; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct tun_struct *tun)
{
	struct tun_file *tfile = tun->tfile;

	if (FUNC0(&tfile->count))
		FUNC1(tfile->tun);
}
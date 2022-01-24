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
struct urfile {int /*<<< orphan*/  urd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct urfile*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct urfile*) ; 

__attribute__((used)) static void FUNC2(struct urfile *urf)
{
	FUNC0("urfile_free: urf=%p urd=%p\n", urf, urf->urd);
	FUNC1(urf);
}
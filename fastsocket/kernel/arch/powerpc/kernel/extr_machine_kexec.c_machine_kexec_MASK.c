#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct kimage {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* machine_kexec ) (struct kimage*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kimage*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__ ppc_md ; 
 int /*<<< orphan*/  FUNC2 (struct kimage*) ; 

void FUNC3(struct kimage *image)
{
	if (ppc_md.machine_kexec)
		ppc_md.machine_kexec(image);
	else
		FUNC0(image);

	/* Fall back to normal restart if we're still alive. */
	FUNC1(NULL);
	for(;;);
}
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
struct TYPE_2__ {int /*<<< orphan*/  (* machine_kexec_cleanup ) (struct kimage*) ;} ;

/* Variables and functions */
 TYPE_1__ ppc_md ; 
 int /*<<< orphan*/  FUNC0 (struct kimage*) ; 

void FUNC1(struct kimage *image)
{
	if (ppc_md.machine_kexec_cleanup)
		ppc_md.machine_kexec_cleanup(image);
}
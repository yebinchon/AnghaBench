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
struct nes_ucontext {int /*<<< orphan*/  usecnt; } ;
struct ib_ucontext {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nes_ucontext*) ; 
 struct nes_ucontext* FUNC2 (struct ib_ucontext*) ; 

__attribute__((used)) static int FUNC3(struct ib_ucontext *context)
{
	/* struct nes_vnic *nesvnic = to_nesvnic(context->device); */
	/* struct nes_device *nesdev = nesvnic->nesdev; */
	struct nes_ucontext *nes_ucontext = FUNC2(context);

	if (!FUNC0(&nes_ucontext->usecnt))
	  return 0;
	FUNC1(nes_ucontext);
	return 0;
}
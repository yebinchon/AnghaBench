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
struct io {unsigned long error_bits; TYPE_1__* client; void* context; int /*<<< orphan*/  (* callback ) (unsigned long,void*) ;scalar_t__ sleeper; int /*<<< orphan*/  count; } ;
typedef  int /*<<< orphan*/  (* io_notify_fn ) (unsigned long,void*) ;
struct TYPE_2__ {int /*<<< orphan*/  pool; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct io*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct io *io, unsigned int region, int error)
{
	if (error)
		FUNC2(region, &io->error_bits);

	if (FUNC0(&io->count)) {
		if (io->sleeper)
			FUNC3(io->sleeper);

		else {
			unsigned long r = io->error_bits;
			io_notify_fn fn = io->callback;
			void *context = io->context;

			FUNC1(io, io->client->pool);
			fn(r, context);
		}
	}
}
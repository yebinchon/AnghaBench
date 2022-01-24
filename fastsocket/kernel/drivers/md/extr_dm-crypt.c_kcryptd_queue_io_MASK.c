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
struct dm_crypt_io {int /*<<< orphan*/  work; TYPE_1__* target; } ;
struct crypt_config {int /*<<< orphan*/  io_queue; } ;
struct TYPE_2__ {struct crypt_config* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kcryptd_io ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct dm_crypt_io *io)
{
	struct crypt_config *cc = io->target->private;

	FUNC0(&io->work, kcryptd_io);
	FUNC1(cc->io_queue, &io->work);
}
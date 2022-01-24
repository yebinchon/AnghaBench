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
struct io {TYPE_1__* client; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bios; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,struct io**,unsigned int*) ; 

__attribute__((used)) static void FUNC2(struct bio *bio)
{
	unsigned region;
	struct io *io;

	FUNC1(bio, &io, &region);

	FUNC0(bio, io->client->bios);
}
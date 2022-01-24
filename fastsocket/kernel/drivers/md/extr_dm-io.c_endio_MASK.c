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
struct io {int dummy; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 scalar_t__ READ ; 
 scalar_t__ FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct io*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,struct io**,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 

__attribute__((used)) static void FUNC5(struct bio *bio, int error)
{
	struct io *io;
	unsigned region;

	if (error && FUNC0(bio) == READ)
		FUNC4(bio);

	/*
	 * The bio destructor in bio_put() may use the io object.
	 */
	FUNC3(bio, &io, &region);

	FUNC1(bio);

	FUNC2(io, region, error);
}
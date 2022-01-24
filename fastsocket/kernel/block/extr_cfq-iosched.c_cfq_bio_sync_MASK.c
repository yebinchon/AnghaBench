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
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_RW_SYNCIO ; 
 scalar_t__ READ ; 
 scalar_t__ FUNC0 (struct bio*) ; 
 scalar_t__ FUNC1 (struct bio*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC2(struct bio *bio)
{
	return FUNC0(bio) == READ || FUNC1(bio, BIO_RW_SYNCIO);
}
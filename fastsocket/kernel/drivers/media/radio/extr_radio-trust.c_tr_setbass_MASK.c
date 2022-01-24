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
struct trust {int curbass; int /*<<< orphan*/  lock; } ;
typedef  int __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  TDA7318_ADDR ; 
 int* basstreble2chip ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct trust*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct trust *tr, __u16 bass)
{
	FUNC0(&tr->lock);
	tr->curbass = bass / 4370;
	FUNC2(tr, 2, TDA7318_ADDR, 0x60 | basstreble2chip[tr->curbass]);
	FUNC1(&tr->lock);
}
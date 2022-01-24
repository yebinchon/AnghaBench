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
struct r5conf {struct r5conf* stripe_hashtbl; struct r5conf* disks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct r5conf*) ; 
 int /*<<< orphan*/  FUNC1 (struct r5conf*) ; 
 int /*<<< orphan*/  FUNC2 (struct r5conf*) ; 

__attribute__((used)) static void FUNC3(struct r5conf *conf)
{
	FUNC2(conf);
	FUNC1(conf);
	FUNC0(conf->disks);
	FUNC0(conf->stripe_hashtbl);
	FUNC0(conf);
}
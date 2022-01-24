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
struct cosa_data {int /*<<< orphan*/  rxbitmap; } ;
struct channel_data {int /*<<< orphan*/  num; struct cosa_data* cosa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cosa_data*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct channel_data *chan)
{
	struct cosa_data *cosa = chan->cosa;

	if (FUNC1(chan->num, &cosa->rxbitmap))
		FUNC0(cosa);
}
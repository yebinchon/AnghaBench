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
struct saa7146 {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct saa7146*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct saa7146*,int) ; 

__attribute__((used)) static void FUNC2(struct saa7146 *saa)
{
	int i;
	for (i = 0; i < 0xff; i += 2)
		if ((FUNC0(saa, i, 0, 0)) >= 0)
			FUNC1(saa, i);
}
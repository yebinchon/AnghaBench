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
 int /*<<< orphan*/  FUNC0 (struct saa7146*,int,int,int,int) ; 

__attribute__((used)) static void FUNC1(struct saa7146 *saa, int left, int right)
{
	FUNC0(saa, 0x22, 0x03, left > 94 ? 94 : left, 2);
	FUNC0(saa, 0x22, 0x04, right > 94 ? 94 : right, 2);
}
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
struct hfc_multi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hfc_multi*,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct hfc_multi*) ; 
 int /*<<< orphan*/  FUNC2 (struct hfc_multi*) ; 
 int /*<<< orphan*/  FUNC3 (struct hfc_multi*,int,unsigned char) ; 

inline void
FUNC4(struct hfc_multi *hc, unsigned char reg, unsigned char val)
{
	FUNC0(hc, reg);

	FUNC2(hc);
	FUNC3(hc, 1, val);
	FUNC1(hc);

	return;
}
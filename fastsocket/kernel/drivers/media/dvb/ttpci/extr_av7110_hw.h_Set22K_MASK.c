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
struct av7110 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMTYPE_AUDIODAC ; 
 int /*<<< orphan*/  OFF22K ; 
 int /*<<< orphan*/  ON22K ; 
 int FUNC0 (struct av7110*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(struct av7110 *av7110, int state)
{
	return FUNC0(av7110, COMTYPE_AUDIODAC, (state ? ON22K : OFF22K), 0);
}
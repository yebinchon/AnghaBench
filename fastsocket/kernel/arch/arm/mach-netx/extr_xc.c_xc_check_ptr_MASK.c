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
struct xc {int /*<<< orphan*/  dev; int /*<<< orphan*/  no; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long XMAC_MEM_SIZE ; 
 unsigned long XPEC_MEM_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(struct xc *x, unsigned long adr, unsigned int size)
{
	if (adr >= FUNC0(x->no) &&
	    adr + size < FUNC0(x->no) + XMAC_MEM_SIZE)
		return 0;

	if (adr >= FUNC1(x->no) &&
	    adr + size < FUNC1(x->no) + XPEC_MEM_SIZE)
		return 0;

	FUNC2(x->dev, "Illegal pointer in firmware found. aborting\n");

	return -1;
}
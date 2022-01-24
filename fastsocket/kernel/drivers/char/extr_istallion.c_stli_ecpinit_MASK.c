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
struct stlibrd {unsigned long memaddr; scalar_t__ iobase; } ;

/* Variables and functions */
 unsigned long ECP_ATADDRMASK ; 
 unsigned long ECP_ATADDRSHFT ; 
 scalar_t__ ECP_ATCONFR ; 
 unsigned long ECP_ATDISABLE ; 
 scalar_t__ ECP_ATMEMAR ; 
 unsigned long ECP_ATSTOP ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct stlibrd *brdp)
{
	unsigned long	memconf;

	FUNC0(ECP_ATSTOP, (brdp->iobase + ECP_ATCONFR));
	FUNC1(10);
	FUNC0(ECP_ATDISABLE, (brdp->iobase + ECP_ATCONFR));
	FUNC1(100);

	memconf = (brdp->memaddr & ECP_ATADDRMASK) >> ECP_ATADDRSHFT;
	FUNC0(memconf, (brdp->iobase + ECP_ATMEMAR));
}
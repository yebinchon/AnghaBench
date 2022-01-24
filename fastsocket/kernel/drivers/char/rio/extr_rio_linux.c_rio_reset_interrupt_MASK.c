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
struct Host {int Type; int /*<<< orphan*/  ResetInt; } ;

/* Variables and functions */
#define  RIO_AT 130 
#define  RIO_MCA 129 
#define  RIO_PCI 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct Host *HostP)
{
	FUNC0();

	switch (HostP->Type) {
	case RIO_AT:
	case RIO_MCA:
	case RIO_PCI:
		FUNC2(0xFF, &HostP->ResetInt);
	}

	FUNC1();
}
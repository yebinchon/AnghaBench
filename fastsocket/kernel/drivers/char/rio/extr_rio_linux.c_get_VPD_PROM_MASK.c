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
struct vpd_prom {int dummy; } ;
struct Host {scalar_t__ Caddr; } ;

/* Variables and functions */
 int RIO_DEBUG_PROBE ; 
 scalar_t__ RIO_VPD_ROM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int rio_debug ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 

__attribute__((used)) static struct vpd_prom *FUNC5(struct Host *hp)
{
	static struct vpd_prom vpdp;
	char *p;
	int i;

	FUNC0();
	FUNC4(RIO_DEBUG_PROBE, "Going to verify vpd prom at %p.\n", hp->Caddr + RIO_VPD_ROM);

	p = (char *) &vpdp;
	for (i = 0; i < sizeof(struct vpd_prom); i++)
		*p++ = FUNC3(hp->Caddr + RIO_VPD_ROM + i * 2);
	/* read_rio_byte (hp, RIO_VPD_ROM + i*2); */

	/* Terminate the identifier string.
	 *** requires one extra byte in struct vpd_prom *** */
	*p++ = 0;

	if (rio_debug & RIO_DEBUG_PROBE)
		FUNC2((char *) &vpdp, 0x20);

	FUNC1();

	return &vpdp;
}
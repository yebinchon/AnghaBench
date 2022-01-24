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
typedef  int u16 ;
struct ssb_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSB_PCMCIA_SPROMCTL_WRITE ; 
 int /*<<< orphan*/  SSB_PCMCIA_SPROM_ADDRHI ; 
 int /*<<< orphan*/  SSB_PCMCIA_SPROM_ADDRLO ; 
 int /*<<< orphan*/  SSB_PCMCIA_SPROM_DATAHI ; 
 int /*<<< orphan*/  SSB_PCMCIA_SPROM_DATALO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct ssb_bus*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct ssb_bus*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ssb_bus *bus, u16 offset, u16 value)
{
	int err;

	offset *= 2; /* Make byte offset */

	err = FUNC1(bus, SSB_PCMCIA_SPROM_ADDRLO,
				   (offset & 0x00FF));
	if (err)
		return err;
	err = FUNC1(bus, SSB_PCMCIA_SPROM_ADDRHI,
				   (offset & 0xFF00) >> 8);
	if (err)
		return err;
	err = FUNC1(bus, SSB_PCMCIA_SPROM_DATALO,
				   (value & 0x00FF));
	if (err)
		return err;
	err = FUNC1(bus, SSB_PCMCIA_SPROM_DATAHI,
				   (value & 0xFF00) >> 8);
	if (err)
		return err;
	err = FUNC2(bus, SSB_PCMCIA_SPROMCTL_WRITE);
	if (err)
		return err;
	FUNC0(20);

	return 0;
}
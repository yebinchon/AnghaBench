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
typedef  int u8 ;
typedef  int u16 ;
struct nouveau_bios {int dummy; } ;
struct bit_entry {int version; int length; int offset; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nouveau_bios*,char,struct bit_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_bios*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_bios*,char*,int,int) ; 

u16
FUNC3(struct nouveau_bios *bios, u8 *ver, u8 *hdr)
{
	struct bit_entry x;

	if (FUNC0(bios, 'x', &x)) {
		FUNC1(bios, "BIT 'x' table not present\n");
		return 0x0000;
	}

	*ver = x.version;
	*hdr = x.length;
	if (*ver != 1 || *hdr < 3) {
		FUNC2(bios, "BIT 'x' table %d/%d unknown\n", *ver, *hdr);
		return 0x0000;
	}

	return x.offset;
}
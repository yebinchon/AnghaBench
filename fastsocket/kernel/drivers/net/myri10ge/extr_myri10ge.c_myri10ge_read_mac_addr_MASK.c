#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct myri10ge_priv {char* eeprom_strings; char* mac_addr_string; char* product_code_string; TYPE_1__* pdev; void* serial_number; void** mac_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENXIO ; 
 int MYRI10GE_EEPROM_STRINGS_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (void const*,char*,int) ; 
 void* FUNC2 (char*,char**,int) ; 

__attribute__((used)) static int FUNC3(struct myri10ge_priv *mgp)
{
	char *ptr, *limit;
	int i;

	ptr = mgp->eeprom_strings;
	limit = mgp->eeprom_strings + MYRI10GE_EEPROM_STRINGS_SIZE;

	while (*ptr != '\0' && ptr < limit) {
		if (FUNC1(ptr, "MAC=", 4) == 0) {
			ptr += 4;
			mgp->mac_addr_string = ptr;
			for (i = 0; i < 6; i++) {
				if ((ptr + 2) > limit)
					goto abort;
				mgp->mac_addr[i] =
				    FUNC2(ptr, &ptr, 16);
				ptr += 1;
			}
		}
		if (FUNC1(ptr, "PC=", 3) == 0) {
			ptr += 3;
			mgp->product_code_string = ptr;
		}
		if (FUNC1((const void *)ptr, "SN=", 3) == 0) {
			ptr += 3;
			mgp->serial_number = FUNC2(ptr, &ptr, 10);
		}
		while (ptr < limit && *ptr++) ;
	}

	return 0;

abort:
	FUNC0(&mgp->pdev->dev, "failed to parse eeprom_strings\n");
	return -ENXIO;
}
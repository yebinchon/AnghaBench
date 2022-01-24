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
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FLASH_DEVICE_16mbit_BOTTOM ; 
 scalar_t__ FLASH_DEVICE_16mbit_TOP ; 
 scalar_t__ FLASH_MANUFACTURER ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  READ_ARRAY ; 
 int /*<<< orphan*/  READ_ID_CODES ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5 (void)
{
   __u32 manufacturer,devtype;

   /* setup "Read Identifier Codes" mode */
   FUNC4 (FUNC1 (READ_ID_CODES),0x00000000);

   /* probe U2. U2/U3 returns the same data since the first 3
	* address lines is mangled in the same way */
   manufacturer = FUNC2 (FUNC3 (FUNC0 (0x00000000)));
   devtype = FUNC2 (FUNC3 (FUNC0 (0x00000001)));

   /* put the flash back into command mode */
   FUNC4 (FUNC1 (READ_ARRAY),0x00000000);

   return (manufacturer == FLASH_MANUFACTURER && (devtype == FLASH_DEVICE_16mbit_TOP || devtype == FLASH_DEVICE_16mbit_BOTTOM));
}
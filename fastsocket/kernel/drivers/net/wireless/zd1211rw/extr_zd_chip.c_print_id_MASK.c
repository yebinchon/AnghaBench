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
struct zd_chip {int dummy; } ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct zd_chip*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct zd_chip*) ; 

__attribute__((used)) static void FUNC3(struct zd_chip *chip)
{
	char buffer[80];

	FUNC1(chip, buffer, sizeof(buffer));
	buffer[sizeof(buffer)-1] = 0;
	FUNC0(FUNC2(chip), "%s\n", buffer);
}
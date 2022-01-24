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
typedef  int /*<<< orphan*/  u8 ;
struct pmf_handlers {int dummy; } ;
struct pmf_cmd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct pmf_cmd*,struct pmf_handlers*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pmf_cmd*) ; 
 int /*<<< orphan*/  write_gpio ; 

__attribute__((used)) static int FUNC3(struct pmf_cmd *cmd, struct pmf_handlers *h)
{
	u8 value = (u8)FUNC2(cmd);
	u8 mask = (u8)FUNC2(cmd);

	FUNC0("pmf: write_gpio(value: %02x, mask: %02x)\n", value, mask);

	FUNC1(write_gpio, cmd, h, value, mask);
}
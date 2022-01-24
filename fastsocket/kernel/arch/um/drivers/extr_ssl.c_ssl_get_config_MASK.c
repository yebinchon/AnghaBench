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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char**) ; 
 int /*<<< orphan*/  serial_lines ; 

__attribute__((used)) static int FUNC2(char *dev, char *str, int size, char **error_out)
{
	return FUNC1(dev, serial_lines, FUNC0(serial_lines), str,
			       size, error_out);
}
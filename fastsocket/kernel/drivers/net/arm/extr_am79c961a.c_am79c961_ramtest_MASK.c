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
struct net_device {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 unsigned char* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static int
FUNC6(struct net_device *dev, unsigned int val)
{
	unsigned char *buffer = FUNC3 (65536, GFP_KERNEL);
	int i, error = 0, errorcount = 0;

	if (!buffer)
		return 0;
	FUNC4 (buffer, val, 65536);
	FUNC1(dev, 0, buffer, 65536);
	FUNC4 (buffer, val ^ 255, 65536);
	FUNC0(dev, 0, buffer, 65536);
	for (i = 0; i < 65536; i++) {
		if (buffer[i] != val && !error) {
			FUNC5 ("%s: buffer error (%02X %02X) %05X - ", dev->name, val, buffer[i], i);
			error = 1;
			errorcount ++;
		} else if (error && buffer[i] == val) {
			FUNC5 ("%05X\n", i);
			error = 0;
		}
	}
	if (error)
		FUNC5 ("10000\n");
	FUNC2 (buffer);
	return errorcount;
}
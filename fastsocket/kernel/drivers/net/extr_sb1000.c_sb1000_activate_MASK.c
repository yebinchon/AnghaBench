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
 int EIO ; 
 int FUNC0 (int const*,char const*,unsigned char const*,unsigned char*) ; 
 int FUNC1 (int const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(const int ioaddr[], const char* name)
{
	static const unsigned char Command0[6] = {0x80, 0x11, 0x00, 0x00, 0x00, 0x00};
	static const unsigned char Command1[6] = {0x80, 0x16, 0x00, 0x00, 0x00, 0x00};

	unsigned char st[7];
	int status;

	FUNC2(1);
	if ((status = FUNC0(ioaddr, name, Command0, st)))
		return status;
	if ((status = FUNC0(ioaddr, name, Command1, st)))
		return status;
	if (st[3] != 0xf1) {
    	if ((status = FUNC1(ioaddr, name)))
			return status;
		return -EIO;
	}
	FUNC3(1000);
    return FUNC1(ioaddr, name);
}
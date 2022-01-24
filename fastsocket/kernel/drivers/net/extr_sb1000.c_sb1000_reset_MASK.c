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
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(const int ioaddr[], const char* name)
{
	static const unsigned char Command0[6] = {0x80, 0x16, 0x00, 0x00, 0x00, 0x00};

	unsigned char st[7];
	int port, status;

	port = ioaddr[1] + 6;
	FUNC2(0x4, port);
	FUNC1(port);
	FUNC4(1000);
	FUNC2(0x0, port);
	FUNC1(port);
	FUNC3(1);
	FUNC2(0x4, port);
	FUNC1(port);
	FUNC4(1000);
	FUNC2(0x0, port);
	FUNC1(port);
	FUNC4(0);

	if ((status = FUNC0(ioaddr, name, Command0, st)))
		return status;
	if (st[3] != 0xf0)
		return -EIO;
	return 0;
}
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
struct TYPE_2__ {int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 char* get_buf ; 
 char FUNC0 (unsigned char) ; 
 char FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 TYPE_1__ ts ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC5(char *buf)
{
	unsigned char checksum = 0;
	int count = 0;
	char ch;

	FUNC3(get_buf, "$");
	FUNC2(get_buf, buf);
	while ((ch = buf[count])) {
		checksum += ch;
		count++;
	}
	FUNC2(get_buf, "#");
	get_buf[count + 2] = FUNC0(checksum);
	get_buf[count + 3] = FUNC1(checksum);
	get_buf[count + 4] = '\0';
	FUNC4("get%i: %s\n", ts.idx, get_buf);
}
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
typedef  int u8 ;
struct TYPE_2__ {int /*<<< orphan*/  programmableDelay; } ;
struct aiptek {TYPE_1__ curSetting; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct aiptek*,unsigned char,unsigned char) ; 
 int FUNC1 (struct aiptek*,int,int,int*,int const) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int) ; 
 int FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int* FUNC5 (int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct aiptek *aiptek, unsigned char command, unsigned char data)
{
	const int sizeof_buf = 3 * sizeof(u8);
	int ret;
	u8 *buf;

	buf = FUNC5(sizeof_buf, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	buf[0] = 2;
	buf[1] = command;
	buf[2] = data;

	if (FUNC0(aiptek, command, data) != 0) {
		FUNC4(buf);
		return -EIO;
	}
	FUNC6(aiptek->curSetting.programmableDelay);

	if ((ret =
	     FUNC1(aiptek, 3, 2, buf, sizeof_buf)) != sizeof_buf) {
		FUNC2("aiptek_query failed: returned 0x%02x 0x%02x 0x%02x",
		    buf[0], buf[1], buf[2]);
		ret = -EIO;
	} else {
		ret = FUNC3(buf + 1);
	}
	FUNC4(buf);
	return ret;
}
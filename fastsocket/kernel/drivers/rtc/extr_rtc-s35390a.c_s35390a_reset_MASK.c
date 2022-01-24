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
struct s35390a {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  S35390A_CMD_STATUS1 ; 
 char S35390A_FLAG_24H ; 
 char S35390A_FLAG_BLD ; 
 char S35390A_FLAG_POC ; 
 char S35390A_FLAG_RESET ; 
 scalar_t__ FUNC0 (struct s35390a*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct s35390a*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC2(struct s35390a *s35390a)
{
	char buf[1];

	if (FUNC0(s35390a, S35390A_CMD_STATUS1, buf, sizeof(buf)) < 0)
		return -EIO;

	if (!(buf[0] & (S35390A_FLAG_POC | S35390A_FLAG_BLD)))
		return 0;

	buf[0] |= (S35390A_FLAG_RESET | S35390A_FLAG_24H);
	buf[0] &= 0xf0;
	return FUNC1(s35390a, S35390A_CMD_STATUS1, buf, sizeof(buf));
}
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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  cpcmd_buf ; 
 int FUNC3 (int) ; 
 int FUNC4 (int,char*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (char const*) ; 

int  FUNC8(const char *cmd, char *response, int rlen, int *response_code)
{
	int cmdlen;
	int rc;
	int response_len;

	cmdlen = FUNC7(cmd);
	FUNC1(cmdlen > 240);
	FUNC5(cpcmd_buf, cmd, cmdlen);
	FUNC0(cpcmd_buf, cmdlen);

	if (response) {
		FUNC6(response, 0, rlen);
		response_len = rlen;
		rc = FUNC4(cmdlen, response, &rlen);
		FUNC2(response, response_len);
        } else {
		rc = FUNC3(cmdlen);
        }
	if (response_code)
		*response_code = rc;
	return rlen;
}
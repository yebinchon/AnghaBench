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
typedef  int /*<<< orphan*/  BufferInfo ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int ETIMEDOUT ; 
 int FUNC0 (int /*<<< orphan*/  const*,char const*,int const,char*) ; 
 scalar_t__ FUNC1 (char const*,char*,int) ; 
 int FUNC2 (char const*) ; 
 int const FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(const BufferInfo *secret_key, const char *file_id, \
		const int timestamp, const char *token, const int ttl)
{
	char true_token[33];
	int result;
	int token_len;

	token_len = FUNC2(token);
	if (token_len != 32)
	{
		return EINVAL;
	}

	if ((timestamp != 0) && (FUNC3(NULL) - timestamp > ttl))
	{
		return ETIMEDOUT;
	}

	if ((result=FUNC0(secret_key, file_id, \
			timestamp, true_token)) != 0)
	{
		return result;
	}

	return (FUNC1(token, true_token, 32) == 0) ? 0 : EPERM;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buff ;
struct TYPE_3__ {int length; char const* buff; } ;
typedef  TYPE_1__ BufferInfo ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,unsigned char*) ; 
 scalar_t__ FUNC3 (char*,char*,int const) ; 
 int FUNC4 (char const*) ; 

int FUNC5(const BufferInfo *secret_key, const char *file_id, \
		const int timestamp, char *token)
{
	char buff[256 + 64];
	unsigned char digit[16];
	int id_len;
	int total_len;

	id_len = FUNC4(file_id);
	if (id_len + secret_key->length + 12 > sizeof(buff))
	{
		return ENOSPC;
	}

	FUNC1(buff, file_id, id_len);
	total_len = id_len;
	FUNC1(buff + total_len, secret_key->buff, secret_key->length);
	total_len += secret_key->length;
	total_len += FUNC3(buff + total_len, "%d", timestamp);

	FUNC2(buff, total_len, digit);
	FUNC0((char *)digit, 16, token);
	return 0;
}
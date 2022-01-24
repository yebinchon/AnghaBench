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
struct chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,char*,int) ; 
 int FUNC1 (struct chan*,char*,int,char**) ; 

__attribute__((used)) static int FUNC2(struct chan *in, struct chan *out,
				   char *str, int size, char **error_out)
{
	int n;

	n = FUNC1(in, str, size, error_out);
	str += n;
	size -= n;

	if (in == out) {
		FUNC0(str, size, n, "", 1);
		return n;
	}

	FUNC0(str, size, n, ",", 1);
	n = FUNC1(out, str, size, error_out);
	str += n;
	size -= n;
	FUNC0(str, size, n, "", 1);

	return n;
}
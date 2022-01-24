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
struct rtas_error_log {scalar_t__ extended_log_length; } ;

/* Variables and functions */
 int rtas_error_log_max ; 
 int FUNC0 () ; 

__attribute__((used)) static int FUNC1(char * buf)
{
	int len;
	struct rtas_error_log *err;

	/* rtas fixed header */
	len = 8;
	err = (struct rtas_error_log *)buf;
	if (err->extended_log_length) {

		/* extended header */
		len += err->extended_log_length;
	}

	if (rtas_error_log_max == 0)
		rtas_error_log_max = FUNC0();

	if (len > rtas_error_log_max)
		len = rtas_error_log_max;

	return len;
}
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
struct aio_context {int reply_fd; } ;
typedef  enum aio_type { ____Placeholder_aio_type } aio_type ;

/* Variables and functions */
 scalar_t__ aio_24 ; 
 int FUNC0 (int,int,char*,int,unsigned long long,struct aio_context*) ; 
 int FUNC1 (int,int,char*,int,unsigned long long,struct aio_context*) ; 

int FUNC2(enum aio_type type, int io_fd, char *buf, int len,
	       unsigned long long offset, int reply_fd,
	       struct aio_context *aio)
{
	aio->reply_fd = reply_fd;
	if (aio_24)
		return FUNC0(type, io_fd, buf, len, offset, aio);
	else
		return FUNC1(type, io_fd, buf, len, offset, aio);
}
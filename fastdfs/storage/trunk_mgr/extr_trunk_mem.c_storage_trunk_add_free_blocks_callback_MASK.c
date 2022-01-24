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
typedef  int /*<<< orphan*/  FDFSTrunkNode ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(void *data, void *args)
{
	/*
	char buff[256];
	logInfo("file: "__FILE__", line: %d"\
		", adding trunk info: %s", __LINE__, \
		trunk_info_dump(&(((FDFSTrunkNode *)data)->trunk), \
		buff, sizeof(buff)));
	*/
	return FUNC0((FDFSTrunkNode *)data);
}
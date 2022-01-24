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
struct ccw_device_id {int cu_type; int cu_model; scalar_t__ dev_type; int dev_model; } ;

/* Variables and functions */
 int FUNC0 (char*,size_t,char*,...) ; 

__attribute__((used)) static int FUNC1(char *buf, size_t size,
			 struct ccw_device_id *id, const char *suffix)
{
	int len;

	len = FUNC0(buf, size, "ccw:t%04Xm%02X", id->cu_type, id->cu_model);
	if (len > size)
		return len;
	buf += len;
	size -= len;

	if (id->dev_type != 0)
		len += FUNC0(buf, size, "dt%04Xdm%02X%s", id->dev_type,
				id->dev_model, suffix);
	else
		len += FUNC0(buf, size, "dtdm%s", suffix);

	return len;
}
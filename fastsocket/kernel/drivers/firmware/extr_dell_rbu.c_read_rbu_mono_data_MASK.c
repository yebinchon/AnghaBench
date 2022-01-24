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
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {scalar_t__ bios_image_size; int /*<<< orphan*/ * image_update_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_1__ rbu_data ; 

__attribute__((used)) static ssize_t FUNC2(char *buffer, loff_t pos, size_t count)
{
	/* check to see if we have something to return */
	if ((rbu_data.image_update_buffer == NULL) ||
		(rbu_data.bios_image_size == 0)) {
		FUNC1("read_rbu_data_mono: image_update_buffer %p ,"
			"bios_image_size %lu\n",
			rbu_data.image_update_buffer,
			rbu_data.bios_image_size);
		return -ENOMEM;
	}

	return FUNC0(buffer, count, &pos,
			rbu_data.image_update_buffer, rbu_data.bios_image_size);
}
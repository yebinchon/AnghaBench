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
struct ni_660x_board {int dummy; } ;
struct comedi_device {struct ni_660x_board const* board_ptr; } ;

/* Variables and functions */

__attribute__((used)) static inline const struct ni_660x_board *FUNC0(struct comedi_device *dev)
{
	return dev->board_ptr;
}
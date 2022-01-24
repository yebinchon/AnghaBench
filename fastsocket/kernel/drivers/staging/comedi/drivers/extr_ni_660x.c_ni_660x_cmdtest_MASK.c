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
struct ni_gpct {int dummy; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ni_gpct*,struct comedi_cmd*) ; 
 struct ni_gpct* FUNC1 (struct comedi_subdevice*) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev,
			   struct comedi_subdevice *s, struct comedi_cmd *cmd)
{
	struct ni_gpct *counter = FUNC1(s);

	return FUNC0(counter, cmd);
}
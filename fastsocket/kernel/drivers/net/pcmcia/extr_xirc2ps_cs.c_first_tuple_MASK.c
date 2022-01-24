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
typedef  int /*<<< orphan*/  tuple_t ;
struct pcmcia_device {int dummy; } ;
typedef  int /*<<< orphan*/  cisparse_t ;

/* Variables and functions */
 int FUNC0 (struct pcmcia_device*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct pcmcia_device*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct pcmcia_device *handle, tuple_t *tuple, cisparse_t *parse)
{
	int err;

	if ((err = FUNC0(handle, tuple)) == 0 &&
			(err = FUNC1(handle, tuple)) == 0)
		err = FUNC2(tuple, parse);
	return err;
}
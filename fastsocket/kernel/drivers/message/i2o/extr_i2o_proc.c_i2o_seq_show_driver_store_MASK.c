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
typedef  int /*<<< orphan*/  work32 ;
typedef  int u32 ;
struct seq_file {scalar_t__ private; } ;
struct i2o_controller {int /*<<< orphan*/  exec; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int,int**,int) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int,int,int,int) ; 

__attribute__((used)) static int FUNC3(struct seq_file *seq, void *v)
{
	struct i2o_controller *c = (struct i2o_controller *)seq->private;
	u32 work32[8];
	int token;

	token =
	    FUNC0(c->exec, 0x0004, -1, &work32, sizeof(work32));
	if (token < 0) {
		FUNC1(seq, token, "0x0004 Driver Store");
		return 0;
	}

	FUNC2(seq, "Module limit  : %d\n"
		   "Module count  : %d\n"
		   "Current space : %d kB\n"
		   "Free space    : %d kB\n",
		   work32[0], work32[1], work32[2] >> 10, work32[3] >> 10);

	return 0;
}
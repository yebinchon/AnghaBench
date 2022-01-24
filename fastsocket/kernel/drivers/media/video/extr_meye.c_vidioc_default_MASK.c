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
struct meye_params {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 long EINVAL ; 
#define  MEYEIOC_G_PARAMS 133 
#define  MEYEIOC_QBUF_CAPT 132 
#define  MEYEIOC_STILLCAPT 131 
#define  MEYEIOC_STILLJCAPT 130 
#define  MEYEIOC_SYNC 129 
#define  MEYEIOC_S_PARAMS 128 
 long FUNC0 (struct meye_params*) ; 
 long FUNC1 (int*) ; 
 long FUNC2 (struct meye_params*) ; 
 long FUNC3 () ; 
 long FUNC4 (int*) ; 
 long FUNC5 (struct file*,void*,int*) ; 

__attribute__((used)) static long FUNC6(struct file *file, void *fh, int cmd, void *arg)
{
	switch (cmd) {
	case MEYEIOC_G_PARAMS:
		return FUNC0((struct meye_params *) arg);

	case MEYEIOC_S_PARAMS:
		return FUNC2((struct meye_params *) arg);

	case MEYEIOC_QBUF_CAPT:
		return FUNC1((int *) arg);

	case MEYEIOC_SYNC:
		return FUNC5(file, fh, (int *) arg);

	case MEYEIOC_STILLCAPT:
		return FUNC3();

	case MEYEIOC_STILLJCAPT:
		return FUNC4((int *) arg);

	default:
		return -EINVAL;
	}

}
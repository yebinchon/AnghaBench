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
struct parport {int dummy; } ;

/* Variables and functions */
 unsigned int ECR_MODE_MASK ; 
 unsigned int ECR_MODE_PS2 ; 
 unsigned int ECR_MODE_SPP ; 
 unsigned int ECR_SERVINTR ; 
 unsigned int ECR_nERRINTR ; 
 unsigned int FUNC0 (struct parport*) ; 
 int /*<<< orphan*/  FUNC1 (struct parport*,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct parport *p, unsigned int mode)
{
	unsigned int omode;

	mode &= ECR_MODE_MASK;
	omode = FUNC0(p) & ECR_MODE_MASK;

	if (!(mode == ECR_MODE_SPP || mode == ECR_MODE_PS2
	      || omode == ECR_MODE_SPP || omode == ECR_MODE_PS2)) {
		/* We have to go through PS2 mode */
		unsigned int ecr = ECR_MODE_PS2 | ECR_nERRINTR | ECR_SERVINTR;
		FUNC1(p, ecr);
	}
	FUNC1(p, mode | ECR_nERRINTR | ECR_SERVINTR);
}
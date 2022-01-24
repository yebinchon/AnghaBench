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
typedef  enum s3c2410_udc_cmd_e { ____Placeholder_s3c2410_udc_cmd_e } s3c2410_udc_cmd_e ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  S3C2410_UDC_P_DISABLE 130 
#define  S3C2410_UDC_P_ENABLE 129 
#define  S3C2410_UDC_P_RESET 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(enum s3c2410_udc_cmd_e cmd)
{
	switch (cmd) {
	case S3C2410_UDC_P_ENABLE :
		FUNC1(FUNC0(3), 1);
		break;
	case S3C2410_UDC_P_DISABLE :
		FUNC1(FUNC0(3), 0);
		break;
	case S3C2410_UDC_P_RESET :
		break;
	default:
		break;
	}
}
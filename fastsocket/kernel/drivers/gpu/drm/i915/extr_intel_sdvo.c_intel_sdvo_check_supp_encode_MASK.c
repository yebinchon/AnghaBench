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
struct intel_sdvo_encode {int dummy; } ;
struct intel_sdvo {int dummy; } ;
typedef  int /*<<< orphan*/  encode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SDVO_CMD_GET_SUPP_ENCODE ; 
 int FUNC1 (struct intel_sdvo*,int /*<<< orphan*/ ,struct intel_sdvo_encode*,int) ; 

__attribute__((used)) static bool FUNC2(struct intel_sdvo *intel_sdvo)
{
	struct intel_sdvo_encode encode;

	FUNC0(sizeof(encode) != 2);
	return FUNC1(intel_sdvo,
				  SDVO_CMD_GET_SUPP_ENCODE,
				  &encode, sizeof(encode));
}
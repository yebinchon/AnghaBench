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
typedef  int u16 ;
struct intel_sdvo_connector {int output_flag; } ;
struct intel_sdvo {int dummy; } ;
struct intel_connector {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 struct intel_sdvo* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_sdvo*,int*) ; 
 struct intel_sdvo_connector* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(struct intel_connector *connector)
{
	struct intel_sdvo_connector *intel_sdvo_connector =
		FUNC2(&connector->base);
	struct intel_sdvo *intel_sdvo = FUNC0(&connector->base);
	u16 active_outputs;

	FUNC1(intel_sdvo, &active_outputs);

	if (active_outputs & intel_sdvo_connector->output_flag)
		return true;
	else
		return false;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  subpixel_order; } ;
struct TYPE_12__ {int interlace_allowed; TYPE_2__ display_info; scalar_t__ doublescan_allowed; int /*<<< orphan*/  connector_type; } ;
struct TYPE_10__ {TYPE_5__ base; int /*<<< orphan*/  get_hw_state; } ;
struct intel_sdvo_connector {TYPE_3__ base; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct TYPE_11__ {TYPE_1__ base; } ;
struct intel_sdvo {TYPE_4__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  SubPixelHorizontalRGB ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  intel_sdvo_connector_funcs ; 
 int /*<<< orphan*/  intel_sdvo_connector_get_hw_state ; 
 int /*<<< orphan*/  intel_sdvo_connector_helper_funcs ; 

__attribute__((used)) static void
FUNC4(struct intel_sdvo_connector *connector,
			  struct intel_sdvo *encoder)
{
	FUNC1(encoder->base.base.dev,
			   &connector->base.base,
			   &intel_sdvo_connector_funcs,
			   connector->base.base.connector_type);

	FUNC0(&connector->base.base,
				 &intel_sdvo_connector_helper_funcs);

	connector->base.base.interlace_allowed = 1;
	connector->base.base.doublescan_allowed = 0;
	connector->base.base.display_info.subpixel_order = SubPixelHorizontalRGB;
	connector->base.get_hw_state = intel_sdvo_connector_get_hw_state;

	FUNC3(&connector->base, &encoder->base);
	FUNC2(&connector->base.base);
}
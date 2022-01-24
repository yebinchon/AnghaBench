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
struct uvc_video_chain {int /*<<< orphan*/  entities; int /*<<< orphan*/  dev; } ;
struct uvc_entity {int bNrInPins; int /*<<< orphan*/  id; int /*<<< orphan*/  chain; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct uvc_entity*) ; 
 int FUNC1 (struct uvc_entity*) ; 
#define  UVC_OTT_DISPLAY 132 
#define  UVC_OTT_MEDIA_TRANSPORT_OUTPUT 131 
#define  UVC_OTT_VENDOR_SPECIFIC 130 
 int /*<<< orphan*/  UVC_TRACE_DESCR ; 
 int UVC_TRACE_PROBE ; 
#define  UVC_TT_STREAMING 129 
#define  UVC_VC_EXTENSION_UNIT 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 struct uvc_entity* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uvc_entity*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int uvc_trace_param ; 

__attribute__((used)) static int FUNC6(struct uvc_video_chain *chain,
	struct uvc_entity *entity, struct uvc_entity *prev)
{
	struct uvc_entity *forward;
	int found;

	/* Forward scan */
	forward = NULL;
	found = 0;

	while (1) {
		forward = FUNC4(chain->dev, entity->id,
			forward);
		if (forward == NULL)
			break;
		if (forward == prev)
			continue;

		switch (FUNC1(forward)) {
		case UVC_VC_EXTENSION_UNIT:
			if (forward->bNrInPins != 1) {
				FUNC5(UVC_TRACE_DESCR, "Extension unit %d "
					  "has more than 1 input pin.\n",
					  entity->id);
				return -EINVAL;
			}

			FUNC2(&forward->chain, &chain->entities);
			if (uvc_trace_param & UVC_TRACE_PROBE) {
				if (!found)
					FUNC3(" (->");

				FUNC3(" XU %d", forward->id);
				found = 1;
			}
			break;

		case UVC_OTT_VENDOR_SPECIFIC:
		case UVC_OTT_DISPLAY:
		case UVC_OTT_MEDIA_TRANSPORT_OUTPUT:
		case UVC_TT_STREAMING:
			if (FUNC0(forward)) {
				FUNC5(UVC_TRACE_DESCR, "Unsupported input "
					"terminal %u.\n", forward->id);
				return -EINVAL;
			}

			FUNC2(&forward->chain, &chain->entities);
			if (uvc_trace_param & UVC_TRACE_PROBE) {
				if (!found)
					FUNC3(" (->");

				FUNC3(" OT %d", forward->id);
				found = 1;
			}
			break;
		}
	}
	if (found)
		FUNC3(")");

	return 0;
}
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
struct uvc_video_chain {int /*<<< orphan*/  entities; struct uvc_entity* selector; struct uvc_entity* processing; } ;
struct uvc_entity {int id; int bNrInPins; int /*<<< orphan*/  chain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uvc_entity*) ; 
 int FUNC1 (struct uvc_entity*) ; 
#define  UVC_ITT_CAMERA 134 
#define  UVC_ITT_MEDIA_TRANSPORT_INPUT 133 
#define  UVC_ITT_VENDOR_SPECIFIC 132 
 int /*<<< orphan*/  UVC_TRACE_DESCR ; 
 int UVC_TRACE_PROBE ; 
#define  UVC_TT_STREAMING 131 
#define  UVC_VC_EXTENSION_UNIT 130 
#define  UVC_VC_PROCESSING_UNIT 129 
#define  UVC_VC_SELECTOR_UNIT 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int uvc_trace_param ; 

__attribute__((used)) static int FUNC5(struct uvc_video_chain *chain,
	struct uvc_entity *entity)
{
	switch (FUNC1(entity)) {
	case UVC_VC_EXTENSION_UNIT:
		if (uvc_trace_param & UVC_TRACE_PROBE)
			FUNC3(" <- XU %d", entity->id);

		if (entity->bNrInPins != 1) {
			FUNC4(UVC_TRACE_DESCR, "Extension unit %d has more "
				"than 1 input pin.\n", entity->id);
			return -1;
		}

		break;

	case UVC_VC_PROCESSING_UNIT:
		if (uvc_trace_param & UVC_TRACE_PROBE)
			FUNC3(" <- PU %d", entity->id);

		if (chain->processing != NULL) {
			FUNC4(UVC_TRACE_DESCR, "Found multiple "
				"Processing Units in chain.\n");
			return -1;
		}

		chain->processing = entity;
		break;

	case UVC_VC_SELECTOR_UNIT:
		if (uvc_trace_param & UVC_TRACE_PROBE)
			FUNC3(" <- SU %d", entity->id);

		/* Single-input selector units are ignored. */
		if (entity->bNrInPins == 1)
			break;

		if (chain->selector != NULL) {
			FUNC4(UVC_TRACE_DESCR, "Found multiple Selector "
				"Units in chain.\n");
			return -1;
		}

		chain->selector = entity;
		break;

	case UVC_ITT_VENDOR_SPECIFIC:
	case UVC_ITT_CAMERA:
	case UVC_ITT_MEDIA_TRANSPORT_INPUT:
		if (uvc_trace_param & UVC_TRACE_PROBE)
			FUNC3(" <- IT %d\n", entity->id);

		break;

	case UVC_TT_STREAMING:
		if (FUNC0(entity)) {
			if (uvc_trace_param & UVC_TRACE_PROBE)
				FUNC3(" <- IT %d\n", entity->id);
		} else {
			if (uvc_trace_param & UVC_TRACE_PROBE)
				FUNC3(" OT %d", entity->id);
		}

		break;

	default:
		FUNC4(UVC_TRACE_DESCR, "Unsupported entity type "
			"0x%04x found in chain.\n", FUNC1(entity));
		return -1;
	}

	FUNC2(&entity->chain, &chain->entities);
	return 0;
}
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
struct uvc_video_chain {int /*<<< orphan*/  dev; int /*<<< orphan*/  entities; struct uvc_entity* selector; } ;
struct uvc_entity {int* baSourceID; int bNrInPins; int /*<<< orphan*/  chain; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct uvc_entity*) ; 
 int /*<<< orphan*/  FUNC1 (struct uvc_entity*) ; 
 int FUNC2 (struct uvc_entity*) ; 
#define  UVC_ITT_CAMERA 137 
#define  UVC_ITT_MEDIA_TRANSPORT_INPUT 136 
#define  UVC_ITT_VENDOR_SPECIFIC 135 
#define  UVC_OTT_DISPLAY 134 
#define  UVC_OTT_MEDIA_TRANSPORT_OUTPUT 133 
#define  UVC_OTT_VENDOR_SPECIFIC 132 
 int /*<<< orphan*/  UVC_TRACE_DESCR ; 
 int UVC_TRACE_PROBE ; 
#define  UVC_TT_STREAMING 131 
#define  UVC_VC_EXTENSION_UNIT 130 
#define  UVC_VC_PROCESSING_UNIT 129 
#define  UVC_VC_SELECTOR_UNIT 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 struct uvc_entity* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct uvc_video_chain*,struct uvc_entity*,struct uvc_entity*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,...) ; 
 int uvc_trace_param ; 

__attribute__((used)) static int FUNC8(struct uvc_video_chain *chain,
	struct uvc_entity **_entity)
{
	struct uvc_entity *entity = *_entity;
	struct uvc_entity *term;
	int id = -EINVAL, i;

	switch (FUNC2(entity)) {
	case UVC_VC_EXTENSION_UNIT:
	case UVC_VC_PROCESSING_UNIT:
		id = entity->baSourceID[0];
		break;

	case UVC_VC_SELECTOR_UNIT:
		/* Single-input selector units are ignored. */
		if (entity->bNrInPins == 1) {
			id = entity->baSourceID[0];
			break;
		}

		if (uvc_trace_param & UVC_TRACE_PROBE)
			FUNC4(" <- IT");

		chain->selector = entity;
		for (i = 0; i < entity->bNrInPins; ++i) {
			id = entity->baSourceID[i];
			term = FUNC5(chain->dev, id);
			if (term == NULL || !FUNC0(term)) {
				FUNC7(UVC_TRACE_DESCR, "Selector unit %d "
					"input %d isn't connected to an "
					"input terminal\n", entity->id, i);
				return -1;
			}

			if (uvc_trace_param & UVC_TRACE_PROBE)
				FUNC4(" %d", term->id);

			FUNC3(&term->chain, &chain->entities);
			FUNC6(chain, term, entity);
		}

		if (uvc_trace_param & UVC_TRACE_PROBE)
			FUNC4("\n");

		id = 0;
		break;

	case UVC_ITT_VENDOR_SPECIFIC:
	case UVC_ITT_CAMERA:
	case UVC_ITT_MEDIA_TRANSPORT_INPUT:
	case UVC_OTT_VENDOR_SPECIFIC:
	case UVC_OTT_DISPLAY:
	case UVC_OTT_MEDIA_TRANSPORT_OUTPUT:
	case UVC_TT_STREAMING:
		id = FUNC1(entity) ? entity->baSourceID[0] : 0;
		break;
	}

	if (id <= 0) {
		*_entity = NULL;
		return id;
	}

	entity = FUNC5(chain->dev, id);
	if (entity == NULL) {
		FUNC7(UVC_TRACE_DESCR, "Found reference to "
			"unknown entity %d.\n", id);
		return -EINVAL;
	}

	*_entity = entity;
	return 0;
}
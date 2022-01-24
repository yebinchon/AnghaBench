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
typedef  int u32 ;
struct input_dev {int dummy; } ;
struct acpi_video_bus {struct input_dev* input; } ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  ACPI_VIDEO_NOTIFY_CYCLE 132 
#define  ACPI_VIDEO_NOTIFY_NEXT_OUTPUT 131 
#define  ACPI_VIDEO_NOTIFY_PREV_OUTPUT 130 
#define  ACPI_VIDEO_NOTIFY_PROBE 129 
#define  ACPI_VIDEO_NOTIFY_SWITCH 128 
 int KEY_SWITCHVIDEOMODE ; 
 int KEY_VIDEO_NEXT ; 
 int KEY_VIDEO_PREV ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device*,int,int /*<<< orphan*/ ) ; 
 struct acpi_video_bus* FUNC2 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_video_bus*) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_video_bus*) ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct input_dev*) ; 

__attribute__((used)) static void FUNC8(struct acpi_device *device, u32 event)
{
	struct acpi_video_bus *video = FUNC2(device);
	struct input_dev *input;
	int keycode = 0;

	if (!video)
		return;

	input = video->input;

	switch (event) {
	case ACPI_VIDEO_NOTIFY_SWITCH:	/* User requested a switch,
					 * most likely via hotkey. */
		FUNC1(device, event, 0);
		if (!FUNC3(device, event, 0))
			keycode = KEY_SWITCHVIDEOMODE;
		break;

	case ACPI_VIDEO_NOTIFY_PROBE:	/* User plugged in or removed a video
					 * connector. */
		FUNC4(video);
		FUNC5(video);
		FUNC1(device, event, 0);
		keycode = KEY_SWITCHVIDEOMODE;
		break;

	case ACPI_VIDEO_NOTIFY_CYCLE:	/* Cycle Display output hotkey pressed. */
		FUNC1(device, event, 0);
		keycode = KEY_SWITCHVIDEOMODE;
		break;
	case ACPI_VIDEO_NOTIFY_NEXT_OUTPUT:	/* Next Display output hotkey pressed. */
		FUNC1(device, event, 0);
		keycode = KEY_VIDEO_NEXT;
		break;
	case ACPI_VIDEO_NOTIFY_PREV_OUTPUT:	/* previous Display output hotkey pressed. */
		FUNC1(device, event, 0);
		keycode = KEY_VIDEO_PREV;
		break;

	default:
		FUNC0((ACPI_DB_INFO,
				  "Unsupported event [0x%x]\n", event));
		break;
	}

	if (event != ACPI_VIDEO_NOTIFY_SWITCH)
		FUNC3(device, event, 0);

	if (keycode) {
		FUNC6(input, keycode, 1);
		FUNC7(input);
		FUNC6(input, keycode, 0);
		FUNC7(input);
	}

	return;
}
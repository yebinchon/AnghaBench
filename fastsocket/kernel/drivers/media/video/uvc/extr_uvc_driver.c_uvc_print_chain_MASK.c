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
struct uvc_video_chain {int /*<<< orphan*/  entities; } ;

/* Variables and functions */
 int /*<<< orphan*/  UVC_TERM_INPUT ; 
 int /*<<< orphan*/  UVC_TERM_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static const char *FUNC2(struct uvc_video_chain *chain)
{
	static char buffer[43];
	char *p = buffer;

	p += FUNC1(&chain->entities, UVC_TERM_INPUT, p);
	p += FUNC0(p, " -> ");
	FUNC1(&chain->entities, UVC_TERM_OUTPUT, p);

	return buffer;
}
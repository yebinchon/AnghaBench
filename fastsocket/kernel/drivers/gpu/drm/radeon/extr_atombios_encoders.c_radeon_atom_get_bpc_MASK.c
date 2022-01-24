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
typedef  int /*<<< orphan*/  u8 ;
struct drm_encoder {int dummy; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PANEL_10BIT_PER_COLOR ; 
 int /*<<< orphan*/  PANEL_12BIT_PER_COLOR ; 
 int /*<<< orphan*/  PANEL_16BIT_PER_COLOR ; 
 int /*<<< orphan*/  PANEL_6BIT_PER_COLOR ; 
 int /*<<< orphan*/  PANEL_8BIT_PER_COLOR ; 
 int /*<<< orphan*/  PANEL_BPC_UNDEFINE ; 
 struct drm_connector* FUNC0 (struct drm_encoder*) ; 
 int FUNC1 (struct drm_connector*) ; 

__attribute__((used)) static u8 FUNC2(struct drm_encoder *encoder)
{
	struct drm_connector *connector = FUNC0(encoder);
	int bpc = 8;

	if (connector)
		bpc = FUNC1(connector);

	switch (bpc) {
	case 0:
		return PANEL_BPC_UNDEFINE;
	case 6:
		return PANEL_6BIT_PER_COLOR;
	case 8:
	default:
		return PANEL_8BIT_PER_COLOR;
	case 10:
		return PANEL_10BIT_PER_COLOR;
	case 12:
		return PANEL_12BIT_PER_COLOR;
	case 16:
		return PANEL_16BIT_PER_COLOR;
	}
}
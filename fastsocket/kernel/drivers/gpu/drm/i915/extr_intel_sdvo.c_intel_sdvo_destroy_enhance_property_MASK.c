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
struct intel_sdvo_connector {scalar_t__ brightness; scalar_t__ dot_crawl; scalar_t__ tv_chroma_filter; scalar_t__ tv_luma_filter; scalar_t__ flicker_filter_adaptive; scalar_t__ flicker_filter_2d; scalar_t__ flicker_filter; scalar_t__ sharpness; scalar_t__ hue; scalar_t__ contrast; scalar_t__ saturation; scalar_t__ vpos; scalar_t__ hpos; scalar_t__ bottom; scalar_t__ top; scalar_t__ right; scalar_t__ left; } ;
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*,scalar_t__) ; 
 struct intel_sdvo_connector* FUNC1 (struct drm_connector*) ; 

__attribute__((used)) static void
FUNC2(struct drm_connector *connector)
{
	struct intel_sdvo_connector *intel_sdvo_connector = FUNC1(connector);
	struct drm_device *dev = connector->dev;

	if (intel_sdvo_connector->left)
		FUNC0(dev, intel_sdvo_connector->left);
	if (intel_sdvo_connector->right)
		FUNC0(dev, intel_sdvo_connector->right);
	if (intel_sdvo_connector->top)
		FUNC0(dev, intel_sdvo_connector->top);
	if (intel_sdvo_connector->bottom)
		FUNC0(dev, intel_sdvo_connector->bottom);
	if (intel_sdvo_connector->hpos)
		FUNC0(dev, intel_sdvo_connector->hpos);
	if (intel_sdvo_connector->vpos)
		FUNC0(dev, intel_sdvo_connector->vpos);
	if (intel_sdvo_connector->saturation)
		FUNC0(dev, intel_sdvo_connector->saturation);
	if (intel_sdvo_connector->contrast)
		FUNC0(dev, intel_sdvo_connector->contrast);
	if (intel_sdvo_connector->hue)
		FUNC0(dev, intel_sdvo_connector->hue);
	if (intel_sdvo_connector->sharpness)
		FUNC0(dev, intel_sdvo_connector->sharpness);
	if (intel_sdvo_connector->flicker_filter)
		FUNC0(dev, intel_sdvo_connector->flicker_filter);
	if (intel_sdvo_connector->flicker_filter_2d)
		FUNC0(dev, intel_sdvo_connector->flicker_filter_2d);
	if (intel_sdvo_connector->flicker_filter_adaptive)
		FUNC0(dev, intel_sdvo_connector->flicker_filter_adaptive);
	if (intel_sdvo_connector->tv_luma_filter)
		FUNC0(dev, intel_sdvo_connector->tv_luma_filter);
	if (intel_sdvo_connector->tv_chroma_filter)
		FUNC0(dev, intel_sdvo_connector->tv_chroma_filter);
	if (intel_sdvo_connector->dot_crawl)
		FUNC0(dev, intel_sdvo_connector->dot_crawl);
	if (intel_sdvo_connector->brightness)
		FUNC0(dev, intel_sdvo_connector->brightness);
}
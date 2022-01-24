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
struct dma_ops_domain {struct dma_ops_domain** aperture; scalar_t__ bitmap; int /*<<< orphan*/  domain; } ;

/* Variables and functions */
 int APERTURE_MAX_RANGES ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_ops_domain*) ; 

__attribute__((used)) static void FUNC3(struct dma_ops_domain *dom)
{
	int i;

	if (!dom)
		return;

	FUNC1(&dom->domain);

	for (i = 0; i < APERTURE_MAX_RANGES; ++i) {
		if (!dom->aperture[i])
			continue;
		FUNC0((unsigned long)dom->aperture[i]->bitmap);
		FUNC2(dom->aperture[i]);
	}

	FUNC2(dom);
}
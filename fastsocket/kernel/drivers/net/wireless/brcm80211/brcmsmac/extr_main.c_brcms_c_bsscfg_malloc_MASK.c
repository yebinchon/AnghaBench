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
typedef  int /*<<< orphan*/  uint ;
struct brcms_bss_info {int dummy; } ;
struct brcms_bss_cfg {int /*<<< orphan*/ * current_bss; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct brcms_bss_cfg*) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct brcms_bss_cfg *FUNC2(uint unit)
{
	struct brcms_bss_cfg *cfg;

	cfg = FUNC1(sizeof(struct brcms_bss_cfg), GFP_ATOMIC);
	if (cfg == NULL)
		goto fail;

	cfg->current_bss = FUNC1(sizeof(struct brcms_bss_info), GFP_ATOMIC);
	if (cfg->current_bss == NULL)
		goto fail;

	return cfg;

 fail:
	FUNC0(cfg);
	return NULL;
}
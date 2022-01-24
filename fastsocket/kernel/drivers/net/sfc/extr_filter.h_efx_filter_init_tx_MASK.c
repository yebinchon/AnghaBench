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
struct efx_filter_spec {unsigned int dmaq_id; int /*<<< orphan*/  flags; int /*<<< orphan*/  priority; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFX_FILTER_FLAG_TX ; 
 int /*<<< orphan*/  EFX_FILTER_PRI_REQUIRED ; 
 int /*<<< orphan*/  EFX_FILTER_UNSPEC ; 

__attribute__((used)) static inline void FUNC0(struct efx_filter_spec *spec,
				      unsigned txq_id)
{
	spec->type = EFX_FILTER_UNSPEC;
	spec->priority = EFX_FILTER_PRI_REQUIRED;
	spec->flags = EFX_FILTER_FLAG_TX;
	spec->dmaq_id = txq_id;
}
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
struct _diva_dma_map_entry {int dummy; } ;
typedef  struct _diva_dma_map_entry diva_dma_map_entry_t ;

/* Variables and functions */
 struct _diva_dma_map_entry* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct _diva_dma_map_entry*,int /*<<< orphan*/ ,int) ; 

struct _diva_dma_map_entry* FUNC2 (void* os_context, int nentries) {
  diva_dma_map_entry_t* pmap = FUNC0(0, sizeof(*pmap)*(nentries+1));
  if (pmap)
	  FUNC1 (pmap, 0, sizeof(*pmap)*(nentries+1));
  return pmap;
}
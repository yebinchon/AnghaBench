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
struct mem_block {int start; int size; struct mem_block* prev; struct mem_block* next; struct drm_file* file_priv; } ;
struct drm_file {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct mem_block*) ; 
 struct mem_block* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct mem_block* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mem_block **heap, int start, int size)
{
	struct mem_block *blocks = FUNC1(sizeof(*blocks), GFP_KERNEL);

	if (!blocks)
		return -ENOMEM;

	*heap = FUNC2(sizeof(**heap), GFP_KERNEL);
	if (!*heap) {
		FUNC0(blocks);
		return -ENOMEM;
	}

	blocks->start = start;
	blocks->size = size;
	blocks->file_priv = NULL;
	blocks->next = blocks->prev = *heap;

	(*heap)->file_priv = (struct drm_file *) - 1;
	(*heap)->next = (*heap)->prev = blocks;
	return 0;
}
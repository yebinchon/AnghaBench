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
struct iser_page_vec {int length; unsigned long data_size; scalar_t__* pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,unsigned long) ; 

__attribute__((used)) static void FUNC1(struct iser_page_vec *page_vec)
{
	int i;

	FUNC0("page vec length %d data size %d\n",
		 page_vec->length, page_vec->data_size);
	for (i = 0; i < page_vec->length; i++)
		FUNC0("%d %lx\n",i,(unsigned long)page_vec->pages[i]);
}
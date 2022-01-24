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
struct page {int dummy; } ;
struct iwl_rx_cmd_buffer {int _page_stolen; struct page* _page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 

__attribute__((used)) static inline struct page *FUNC1(struct iwl_rx_cmd_buffer *r)
{
	r->_page_stolen = true;
	FUNC0(r->_page);
	return r->_page;
}
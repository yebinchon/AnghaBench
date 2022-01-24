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
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct page*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static pte_t FUNC3(struct page *page, pgprot_t pgprot)
{ return FUNC0((FUNC1(page) << (PAGE_SHIFT-4)) | FUNC2(pgprot)); }
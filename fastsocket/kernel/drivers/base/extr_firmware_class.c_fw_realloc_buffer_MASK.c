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
struct firmware_priv {int page_array_size; int nr_pages; struct page** pages; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int __GFP_HIGHMEM ; 
 struct page* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct firmware_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct page**) ; 
 struct page** FUNC4 (int,int) ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct page**,struct page**,int) ; 
 int /*<<< orphan*/  FUNC7 (struct page**,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC8(struct firmware_priv *fw_priv, int min_size)
{
	int pages_needed = FUNC0(min_size, PAGE_SIZE) >> PAGE_SHIFT;

	/* If the array of pages is too small, grow it... */
	if (fw_priv->page_array_size < pages_needed) {
		int new_array_size = FUNC5(pages_needed,
					 fw_priv->page_array_size * 2);
		struct page **new_pages;

		new_pages = FUNC4(new_array_size * sizeof(void *),
				    GFP_KERNEL);
		if (!new_pages) {
			FUNC2(fw_priv);
			return -ENOMEM;
		}
		FUNC6(new_pages, fw_priv->pages,
		       fw_priv->page_array_size * sizeof(void *));
		FUNC7(&new_pages[fw_priv->page_array_size], 0, sizeof(void *) *
		       (new_array_size - fw_priv->page_array_size));
		FUNC3(fw_priv->pages);
		fw_priv->pages = new_pages;
		fw_priv->page_array_size = new_array_size;
	}

	while (fw_priv->nr_pages < pages_needed) {
		fw_priv->pages[fw_priv->nr_pages] =
			FUNC1(GFP_KERNEL | __GFP_HIGHMEM);

		if (!fw_priv->pages[fw_priv->nr_pages]) {
			FUNC2(fw_priv);
			return -ENOMEM;
		}
		fw_priv->nr_pages++;
	}
	return 0;
}
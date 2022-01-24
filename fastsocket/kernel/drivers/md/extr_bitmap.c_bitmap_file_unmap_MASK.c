#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct bitmap_storage {int file_pages; struct page** filemap_attr; struct page* sb_page; struct page** filemap; struct file* file; } ;
struct TYPE_3__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct page**) ; 

__attribute__((used)) static void FUNC4(struct bitmap_storage *store)
{
	struct page **map, *sb_page;
	int pages;
	struct file *file;

	file = store->file;
	map = store->filemap;
	pages = store->file_pages;
	sb_page = store->sb_page;

	while (pages--)
		if (map[pages] != sb_page) /* 0 is sb_page, release it below */
			FUNC1(map[pages]);
	FUNC3(map);
	FUNC3(store->filemap_attr);

	if (sb_page)
		FUNC1(sb_page);

	if (file) {
		struct inode *inode = file->f_path.dentry->d_inode;
		FUNC2(inode->i_mapping, 0, -1);
		FUNC0(file);
	}
}
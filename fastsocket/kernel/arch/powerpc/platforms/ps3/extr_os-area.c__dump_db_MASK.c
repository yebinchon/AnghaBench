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
struct os_area_db {char* version; char* index_64; char* count_64; char* index_32; char* count_32; char* index_16; char* count_16; int /*<<< orphan*/  magic_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int,char*) ; 

__attribute__((used)) static void FUNC2(const struct os_area_db *db, const char *func,
	int line)
{
	char str[sizeof(db->magic_num) + 1];

	FUNC0(str, db->magic_num, sizeof(db->magic_num));
	FUNC1("%s:%d: db.magic_num:      '%s'\n", func, line,
		str);
	FUNC1("%s:%d: db.version:         %u\n", func, line,
		db->version);
	FUNC1("%s:%d: db.index_64:        %u\n", func, line,
		db->index_64);
	FUNC1("%s:%d: db.count_64:        %u\n", func, line,
		db->count_64);
	FUNC1("%s:%d: db.index_32:        %u\n", func, line,
		db->index_32);
	FUNC1("%s:%d: db.count_32:        %u\n", func, line,
		db->count_32);
	FUNC1("%s:%d: db.index_16:        %u\n", func, line,
		db->index_16);
	FUNC1("%s:%d: db.count_16:        %u\n", func, line,
		db->count_16);
}
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
struct zfcp_dbf_dump {int total_size; int offset; scalar_t__ size; int /*<<< orphan*/  data; int /*<<< orphan*/  tag; } ;
typedef  int /*<<< orphan*/  debug_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZFCP_DBF_TAG_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,struct zfcp_dbf_dump*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(debug_info_t *dbf, void *to, int to_len,
			     int level, char *from, int from_len)
{
	int offset;
	struct zfcp_dbf_dump *dump = to;
	int room = to_len - sizeof(*dump);

	for (offset = 0; offset < from_len; offset += dump->size) {
		FUNC2(to, 0, to_len);
		FUNC4(dump->tag, "dump", ZFCP_DBF_TAG_SIZE);
		dump->total_size = from_len;
		dump->offset = offset;
		dump->size = FUNC3(from_len - offset, room);
		FUNC1(dump->data, from + offset, dump->size);
		FUNC0(dbf, level, dump, dump->size + sizeof(*dump));
	}
}
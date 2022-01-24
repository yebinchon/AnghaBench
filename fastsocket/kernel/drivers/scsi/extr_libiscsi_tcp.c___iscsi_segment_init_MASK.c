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
struct iscsi_segment {size_t total_size; struct hash_desc* hash; int /*<<< orphan*/ * done; } ;
struct hash_desc {int dummy; } ;
typedef  int /*<<< orphan*/  iscsi_segment_done_fn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hash_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_segment*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void
FUNC2(struct iscsi_segment *segment, size_t size,
		     iscsi_segment_done_fn_t *done, struct hash_desc *hash)
{
	FUNC1(segment, 0, sizeof(*segment));
	segment->total_size = size;
	segment->done = done;

	if (hash) {
		segment->hash = hash;
		FUNC0(hash);
	}
}
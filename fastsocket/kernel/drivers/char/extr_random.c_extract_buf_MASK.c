#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  workspace ;
struct entropy_store {scalar_t__ pool; TYPE_1__* poolinfo; } ;
typedef  int /*<<< orphan*/  hash ;
typedef  int /*<<< orphan*/  extract ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_2__ {int poolwords; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXTRACT_SIZE ; 
 int SHA_WORKSPACE_WORDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct entropy_store*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct entropy_store *r, __u8 *out)
{
	int i;
	__u32 hash[5], workspace[SHA_WORKSPACE_WORDS];
	__u8 extract[64];

	/* Generate a hash across the pool, 16 words (512 bits) at a time */
	FUNC4(hash);
	for (i = 0; i < r->poolinfo->poolwords; i += 16)
		FUNC5(hash, (__u8 *)(r->pool + i), workspace);

	/*
	 * We mix the hash back into the pool to prevent backtracking
	 * attacks (where the attacker knows the state of the pool
	 * plus the current outputs, and attempts to find previous
	 * ouputs), unless the hash function can be inverted. By
	 * mixing at least a SHA1 worth of hash data back, we make
	 * brute-forcing the feedback as hard as brute-forcing the
	 * hash.
	 */
	FUNC2(r, hash, sizeof(hash), extract);

	/*
	 * To avoid duplicates, we atomically extract a portion of the
	 * pool while mixing, and hash one final time.
	 */
	FUNC5(hash, extract, workspace);
	FUNC1(extract, 0, sizeof(extract));
	FUNC1(workspace, 0, sizeof(workspace));

	/*
	 * In case the hash function has some recognizable output
	 * pattern, we fold it in half. Thus, we always feed back
	 * twice as much data as we output.
	 */
	hash[0] ^= hash[3];
	hash[1] ^= hash[4];
	hash[2] ^= FUNC3(hash[2], 16);
	FUNC0(out, hash, EXTRACT_SIZE);
	FUNC1(hash, 0, sizeof(hash));
}
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
typedef  int /*<<< orphan*/  uint32_t ;
struct drm_prime_member {int /*<<< orphan*/  entry; int /*<<< orphan*/  handle; struct dma_buf* dma_buf; } ;
struct drm_prime_file_private {int /*<<< orphan*/  head; } ;
struct dma_buf {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct dma_buf*) ; 
 struct drm_prime_member* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct drm_prime_file_private *prime_fpriv, struct dma_buf *dma_buf, uint32_t handle)
{
	struct drm_prime_member *member;

	member = FUNC1(sizeof(*member), GFP_KERNEL);
	if (!member)
		return -ENOMEM;

	FUNC0(dma_buf);
	member->dma_buf = dma_buf;
	member->handle = handle;
	FUNC2(&member->entry, &prime_fpriv->head);
	return 0;
}
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
struct drm_file {int /*<<< orphan*/  master; scalar_t__ magic; } ;
struct drm_device {int dummy; } ;
struct drm_auth {scalar_t__ magic; } ;
typedef  scalar_t__ drm_magic_t ;
typedef  int /*<<< orphan*/  DEFINE_SPINLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct drm_file*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
	static drm_magic_t sequence = 0;
	static DEFINE_SPINLOCK(lock);
	struct drm_auth *auth = data;

	/* Find unique magic */
	if (file_priv->magic) {
		auth->magic = file_priv->magic;
	} else {
		do {
			FUNC3(&lock);
			if (!sequence)
				++sequence;	/* reserve 0 */
			auth->magic = sequence++;
			FUNC4(&lock);
		} while (FUNC2(file_priv->master, auth->magic));
		file_priv->magic = auth->magic;
		FUNC1(file_priv->master, file_priv, auth->magic);
	}

	FUNC0("%u\n", auth->magic);

	return 0;
}
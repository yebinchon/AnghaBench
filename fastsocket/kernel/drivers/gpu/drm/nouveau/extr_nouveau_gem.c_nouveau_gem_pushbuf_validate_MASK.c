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
typedef  int /*<<< orphan*/  uint64_t ;
struct validate_op {int /*<<< orphan*/  both_list; int /*<<< orphan*/  gart_list; int /*<<< orphan*/  vram_list; } ;
struct nouveau_cli {int dummy; } ;
struct nouveau_channel {int dummy; } ;
struct drm_nouveau_gem_pushbuf_bo {int dummy; } ;
struct drm_file {int dummy; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_cli*,char*) ; 
 struct nouveau_cli* FUNC2 (struct drm_file*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct validate_op*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct nouveau_channel*,struct drm_file*,struct drm_nouveau_gem_pushbuf_bo*,int,struct validate_op*) ; 
 int FUNC6 (struct nouveau_channel*,struct nouveau_cli*,int /*<<< orphan*/ *,struct drm_nouveau_gem_pushbuf_bo*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct nouveau_channel *chan,
			     struct drm_file *file_priv,
			     struct drm_nouveau_gem_pushbuf_bo *pbbo,
			     uint64_t user_buffers, int nr_buffers,
			     struct validate_op *op, int *apply_relocs)
{
	struct nouveau_cli *cli = FUNC2(file_priv);
	int ret, relocs = 0;

	FUNC0(&op->vram_list);
	FUNC0(&op->gart_list);
	FUNC0(&op->both_list);

	if (nr_buffers == 0)
		return 0;

	ret = FUNC5(chan, file_priv, pbbo, nr_buffers, op);
	if (FUNC3(ret)) {
		if (ret != -ERESTARTSYS)
			FUNC1(cli, "validate_init\n");
		return ret;
	}

	ret = FUNC6(chan, cli, &op->vram_list, pbbo, user_buffers);
	if (FUNC3(ret < 0)) {
		if (ret != -ERESTARTSYS)
			FUNC1(cli, "validate vram_list\n");
		FUNC4(op, NULL);
		return ret;
	}
	relocs += ret;

	ret = FUNC6(chan, cli, &op->gart_list, pbbo, user_buffers);
	if (FUNC3(ret < 0)) {
		if (ret != -ERESTARTSYS)
			FUNC1(cli, "validate gart_list\n");
		FUNC4(op, NULL);
		return ret;
	}
	relocs += ret;

	ret = FUNC6(chan, cli, &op->both_list, pbbo, user_buffers);
	if (FUNC3(ret < 0)) {
		if (ret != -ERESTARTSYS)
			FUNC1(cli, "validate both_list\n");
		FUNC4(op, NULL);
		return ret;
	}
	relocs += ret;

	*apply_relocs = relocs;
	return 0;
}
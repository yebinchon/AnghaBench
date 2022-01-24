#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct b43_request_fw_context {int req_type; char* fwname; TYPE_3__* blob; int /*<<< orphan*/ * errors; TYPE_2__* dev; int /*<<< orphan*/  fw_load_complete; } ;
struct b43_fw_header {int type; int ver; int /*<<< orphan*/  size; } ;
struct b43_firmware_file {char const* filename; int type; TYPE_3__* data; } ;
struct TYPE_7__ {int size; scalar_t__ data; } ;
struct TYPE_6__ {TYPE_1__* dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  B43_FWTYPE_OPENSOURCE 132 
#define  B43_FWTYPE_PROPRIETARY 131 
#define  B43_FW_TYPE_IV 130 
#define  B43_FW_TYPE_PCM 129 
#define  B43_FW_TYPE_UCODE 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOENT ; 
 int ENOSYS ; 
 int EPROTO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC1 (struct b43_firmware_file*) ; 
 int /*<<< orphan*/  b43_fw_cb ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* modparam_fwpostfix ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int FUNC6 (TYPE_3__**,char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct b43_request_fw_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char*,...) ; 
 scalar_t__ FUNC9 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct b43_request_fw_context *ctx,
		      const char *name,
		      struct b43_firmware_file *fw, bool async)
{
	struct b43_fw_header *hdr;
	u32 size;
	int err;

	if (!name) {
		/* Don't fetch anything. Free possibly cached firmware. */
		/* FIXME: We should probably keep it anyway, to save some headache
		 * on suspend/resume with multiband devices. */
		FUNC1(fw);
		return 0;
	}
	if (fw->filename) {
		if ((fw->type == ctx->req_type) &&
		    (FUNC9(fw->filename, name) == 0))
			return 0; /* Already have this fw. */
		/* Free the cached firmware first. */
		/* FIXME: We should probably do this later after we successfully
		 * got the new fw. This could reduce headache with multiband devices.
		 * We could also redesign this to cache the firmware for all possible
		 * bands all the time. */
		FUNC1(fw);
	}

	switch (ctx->req_type) {
	case B43_FWTYPE_PROPRIETARY:
		FUNC8(ctx->fwname, sizeof(ctx->fwname),
			 "b43%s/%s.fw",
			 modparam_fwpostfix, name);
		break;
	case B43_FWTYPE_OPENSOURCE:
		FUNC8(ctx->fwname, sizeof(ctx->fwname),
			 "b43-open%s/%s.fw",
			 modparam_fwpostfix, name);
		break;
	default:
		FUNC0(1);
		return -ENOSYS;
	}
	if (async) {
		/* do this part asynchronously */
		FUNC3(&ctx->fw_load_complete);
		err = FUNC7(THIS_MODULE, 1, ctx->fwname,
					      ctx->dev->dev->dev, GFP_KERNEL,
					      ctx, b43_fw_cb);
		if (err < 0) {
			FUNC4("Unable to load firmware\n");
			return err;
		}
		/* stall here until fw ready */
		FUNC10(&ctx->fw_load_complete);
		if (ctx->blob)
			goto fw_ready;
	/* On some ARM systems, the async request will fail, but the next sync
	 * request works. For this reason, we dall through here
	 */
	}
	err = FUNC6(&ctx->blob, ctx->fwname,
			       ctx->dev->dev->dev);
	if (err == -ENOENT) {
		FUNC8(ctx->errors[ctx->req_type],
			 sizeof(ctx->errors[ctx->req_type]),
			 "Firmware file \"%s\" not found\n",
			 ctx->fwname);
		return err;
	} else if (err) {
		FUNC8(ctx->errors[ctx->req_type],
			 sizeof(ctx->errors[ctx->req_type]),
			 "Firmware file \"%s\" request failed (err=%d)\n",
			 ctx->fwname, err);
		return err;
	}
fw_ready:
	if (ctx->blob->size < sizeof(struct b43_fw_header))
		goto err_format;
	hdr = (struct b43_fw_header *)(ctx->blob->data);
	switch (hdr->type) {
	case B43_FW_TYPE_UCODE:
	case B43_FW_TYPE_PCM:
		size = FUNC2(hdr->size);
		if (size != ctx->blob->size - sizeof(struct b43_fw_header))
			goto err_format;
		/* fallthrough */
	case B43_FW_TYPE_IV:
		if (hdr->ver != 1)
			goto err_format;
		break;
	default:
		goto err_format;
	}

	fw->data = ctx->blob;
	fw->filename = name;
	fw->type = ctx->req_type;

	return 0;

err_format:
	FUNC8(ctx->errors[ctx->req_type],
		 sizeof(ctx->errors[ctx->req_type]),
		 "Firmware file \"%s\" format error.\n", ctx->fwname);
	FUNC5(ctx->blob);

	return -EPROTO;
}
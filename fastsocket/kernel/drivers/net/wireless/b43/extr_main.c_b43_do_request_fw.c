
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct b43_request_fw_context {int req_type; char* fwname; TYPE_3__* blob; int * errors; TYPE_2__* dev; int fw_load_complete; } ;
struct b43_fw_header {int type; int ver; int size; } ;
struct b43_firmware_file {char const* filename; int type; TYPE_3__* data; } ;
struct TYPE_7__ {int size; scalar_t__ data; } ;
struct TYPE_6__ {TYPE_1__* dev; } ;
struct TYPE_5__ {int dev; } ;







 int B43_WARN_ON (int) ;
 int ENOENT ;
 int ENOSYS ;
 int EPROTO ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 int b43_do_release_fw (struct b43_firmware_file*) ;
 int b43_fw_cb ;
 int be32_to_cpu (int ) ;
 int init_completion (int *) ;
 char* modparam_fwpostfix ;
 int pr_err (char*) ;
 int release_firmware (TYPE_3__*) ;
 int request_firmware (TYPE_3__**,char*,int ) ;
 int request_firmware_nowait (int ,int,char*,int ,int ,struct b43_request_fw_context*,int ) ;
 int snprintf (char*,int,char*,char*,...) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int wait_for_completion (int *) ;

int b43_do_request_fw(struct b43_request_fw_context *ctx,
        const char *name,
        struct b43_firmware_file *fw, bool async)
{
 struct b43_fw_header *hdr;
 u32 size;
 int err;

 if (!name) {



  b43_do_release_fw(fw);
  return 0;
 }
 if (fw->filename) {
  if ((fw->type == ctx->req_type) &&
      (strcmp(fw->filename, name) == 0))
   return 0;





  b43_do_release_fw(fw);
 }

 switch (ctx->req_type) {
 case 131:
  snprintf(ctx->fwname, sizeof(ctx->fwname),
    "b43%s/%s.fw",
    modparam_fwpostfix, name);
  break;
 case 132:
  snprintf(ctx->fwname, sizeof(ctx->fwname),
    "b43-open%s/%s.fw",
    modparam_fwpostfix, name);
  break;
 default:
  B43_WARN_ON(1);
  return -ENOSYS;
 }
 if (async) {

  init_completion(&ctx->fw_load_complete);
  err = request_firmware_nowait(THIS_MODULE, 1, ctx->fwname,
           ctx->dev->dev->dev, GFP_KERNEL,
           ctx, b43_fw_cb);
  if (err < 0) {
   pr_err("Unable to load firmware\n");
   return err;
  }

  wait_for_completion(&ctx->fw_load_complete);
  if (ctx->blob)
   goto fw_ready;



 }
 err = request_firmware(&ctx->blob, ctx->fwname,
          ctx->dev->dev->dev);
 if (err == -ENOENT) {
  snprintf(ctx->errors[ctx->req_type],
    sizeof(ctx->errors[ctx->req_type]),
    "Firmware file \"%s\" not found\n",
    ctx->fwname);
  return err;
 } else if (err) {
  snprintf(ctx->errors[ctx->req_type],
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
 case 128:
 case 129:
  size = be32_to_cpu(hdr->size);
  if (size != ctx->blob->size - sizeof(struct b43_fw_header))
   goto err_format;

 case 130:
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
 snprintf(ctx->errors[ctx->req_type],
   sizeof(ctx->errors[ctx->req_type]),
   "Firmware file \"%s\" format error.\n", ctx->fwname);
 release_firmware(ctx->blob);

 return -EPROTO;
}

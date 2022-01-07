
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* data; } ;
struct TYPE_6__ {TYPE_1__* data; } ;
struct b43_firmware {TYPE_4__ initvals_band; TYPE_2__ initvals; } ;
struct b43_wldev {struct b43_firmware fw; } ;
struct b43_iv {int dummy; } ;
struct b43_fw_header {int size; } ;
struct TYPE_7__ {scalar_t__ size; scalar_t__ data; } ;
struct TYPE_5__ {scalar_t__ size; scalar_t__ data; } ;


 int b43_write_initvals (struct b43_wldev*,struct b43_iv const*,size_t,scalar_t__) ;
 size_t be32_to_cpu (int ) ;

__attribute__((used)) static int b43_upload_initvals(struct b43_wldev *dev)
{
 const size_t hdr_len = sizeof(struct b43_fw_header);
 const struct b43_fw_header *hdr;
 struct b43_firmware *fw = &dev->fw;
 const struct b43_iv *ivals;
 size_t count;
 int err;

 hdr = (const struct b43_fw_header *)(fw->initvals.data->data);
 ivals = (const struct b43_iv *)(fw->initvals.data->data + hdr_len);
 count = be32_to_cpu(hdr->size);
 err = b43_write_initvals(dev, ivals, count,
     fw->initvals.data->size - hdr_len);
 if (err)
  goto out;
 if (fw->initvals_band.data) {
  hdr = (const struct b43_fw_header *)(fw->initvals_band.data->data);
  ivals = (const struct b43_iv *)(fw->initvals_band.data->data + hdr_len);
  count = be32_to_cpu(hdr->size);
  err = b43_write_initvals(dev, ivals, count,
      fw->initvals_band.data->size - hdr_len);
  if (err)
   goto out;
 }
out:

 return err;
}

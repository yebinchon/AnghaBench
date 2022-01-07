
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct myri10ge_priv {size_t sram_size; int fw_ver_major; int fw_ver_minor; int fw_ver_tiny; int adopted_rx_filter_bug; scalar_t__ sram; TYPE_1__* pdev; } ;
struct mcp_gen_header {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ MCP_HEADER_PTR_OFFSET ;
 int dev_err (struct device*,char*,...) ;
 int dev_warn (struct device*,char*,int,int,int) ;
 int kfree (struct mcp_gen_header*) ;
 struct mcp_gen_header* kmalloc (size_t const,int ) ;
 int memcpy_fromio (struct mcp_gen_header*,scalar_t__,size_t const) ;
 int myri10ge_validate_firmware (struct myri10ge_priv*,struct mcp_gen_header*) ;
 int readl (scalar_t__) ;
 size_t swab32 (int ) ;

__attribute__((used)) static int myri10ge_adopt_running_firmware(struct myri10ge_priv *mgp)
{
 struct mcp_gen_header *hdr;
 struct device *dev = &mgp->pdev->dev;
 const size_t bytes = sizeof(struct mcp_gen_header);
 size_t hdr_offset;
 int status;


 hdr_offset = swab32(readl(mgp->sram + MCP_HEADER_PTR_OFFSET));

 if ((hdr_offset & 3) || hdr_offset + sizeof(*hdr) > mgp->sram_size) {
  dev_err(dev, "Running firmware has bad header offset (%d)\n",
   (int)hdr_offset);
  return -EIO;
 }



 hdr = kmalloc(bytes, GFP_KERNEL);
 if (hdr == ((void*)0)) {
  dev_err(dev, "could not malloc firmware hdr\n");
  return -ENOMEM;
 }
 memcpy_fromio(hdr, mgp->sram + hdr_offset, bytes);
 status = myri10ge_validate_firmware(mgp, hdr);
 kfree(hdr);




 if (mgp->fw_ver_major == 1 && mgp->fw_ver_minor == 4 &&
     mgp->fw_ver_tiny >= 4 && mgp->fw_ver_tiny <= 11) {
  mgp->adopted_rx_filter_bug = 1;
  dev_warn(dev, "Adopting fw %d.%d.%d: "
    "working around rx filter bug\n",
    mgp->fw_ver_major, mgp->fw_ver_minor,
    mgp->fw_ver_tiny);
 }
 return status;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; int response_code; } ;
struct cpu_configure_sccb {TYPE_1__ header; } ;
typedef int sclp_cmdw_t ;


 int EIO ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int SCLP_HAS_CPU_RECONFIG ;
 int do_sync_request (int ,struct cpu_configure_sccb*) ;
 int kfree (struct cpu_configure_sccb*) ;
 struct cpu_configure_sccb* kzalloc (int,int) ;
 int pr_warning (char*,int ,int) ;

__attribute__((used)) static int do_cpu_configure(sclp_cmdw_t cmd)
{
 struct cpu_configure_sccb *sccb;
 int rc;

 if (!SCLP_HAS_CPU_RECONFIG)
  return -EOPNOTSUPP;




 sccb = kzalloc(sizeof(*sccb), GFP_KERNEL | GFP_DMA);
 if (!sccb)
  return -ENOMEM;
 sccb->header.length = sizeof(*sccb);
 rc = do_sync_request(cmd, sccb);
 if (rc)
  goto out;
 switch (sccb->header.response_code) {
 case 0x0020:
 case 0x0120:
  break;
 default:
  pr_warning("configure cpu failed (cmd=0x%08x, "
      "response=0x%04x)\n", cmd,
      sccb->header.response_code);
  rc = -EIO;
  break;
 }
out:
 kfree(sccb);
 return rc;
}

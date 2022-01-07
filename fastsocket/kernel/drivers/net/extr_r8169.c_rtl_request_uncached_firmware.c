
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl_fw {int fw; } ;
struct rtl8169_private {struct rtl_fw* rtl_fw; int dev; TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ifup ;
 int kfree (struct rtl_fw*) ;
 struct rtl_fw* kzalloc (int,int ) ;
 int netif_warn (struct rtl8169_private*,int ,int ,char*,char const*,int) ;
 int release_firmware (int ) ;
 int request_firmware (int *,char const*,int *) ;
 int rtl_check_firmware (struct rtl8169_private*,struct rtl_fw*) ;
 char* rtl_lookup_firmware_name (struct rtl8169_private*) ;

__attribute__((used)) static void rtl_request_uncached_firmware(struct rtl8169_private *tp)
{
 struct rtl_fw *rtl_fw;
 const char *name;
 int rc = -ENOMEM;

 name = rtl_lookup_firmware_name(tp);
 if (!name)
  goto out_no_firmware;

 rtl_fw = kzalloc(sizeof(*rtl_fw), GFP_KERNEL);
 if (!rtl_fw)
  goto err_warn;

 rc = request_firmware(&rtl_fw->fw, name, &tp->pci_dev->dev);
 if (rc < 0)
  goto err_free;

 rc = rtl_check_firmware(tp, rtl_fw);
 if (rc < 0)
  goto err_release_firmware;

 tp->rtl_fw = rtl_fw;
out:
 return;

err_release_firmware:
 release_firmware(rtl_fw->fw);
err_free:
 kfree(rtl_fw);
err_warn:
 netif_warn(tp, ifup, tp->dev, "unable to load firmware patch %s (%d)\n",
     name, rc);
out_no_firmware:
 tp->rtl_fw = ((void*)0);
 goto out;
}

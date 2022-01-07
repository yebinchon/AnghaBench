
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct netxen_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int CRB_CMDPEG_STATE ;
 int EIO ;
 int NXRD32 (struct netxen_adapter*,int ) ;
 int NXWR32 (struct netxen_adapter*,int ,int const) ;



 int dev_warn (int *,char*) ;
 int msleep (int) ;

int netxen_phantom_init(struct netxen_adapter *adapter, int pegtune_val)
{
 u32 val = 0;
 int retries = 60;

 if (pegtune_val)
  return 0;

 do {
  val = NXRD32(adapter, CRB_CMDPEG_STATE);
  switch (val) {
  case 129:
  case 130:
   return 0;
  case 128:
   goto out_err;
  default:
   break;
  }

  msleep(500);

 } while (--retries);

 NXWR32(adapter, CRB_CMDPEG_STATE, 128);

out_err:
 dev_warn(&adapter->pdev->dev, "firmware init failed\n");
 return -EIO;
}

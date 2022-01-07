
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int name; } ;
struct TYPE_4__ {int dev; struct net_device* ndev; } ;
typedef TYPE_1__ board_info_t ;


 int DM9000_NCR ;
 unsigned int NCR_FDX ;
 unsigned int NSR_SPEED ;
 int dev_info (int ,char*,int ,...) ;
 unsigned int dm9000_read_locked (TYPE_1__*,int ) ;

__attribute__((used)) static void dm9000_show_carrier(board_info_t *db,
    unsigned carrier, unsigned nsr)
{
 struct net_device *ndev = db->ndev;
 unsigned ncr = dm9000_read_locked(db, DM9000_NCR);

 if (carrier)
  dev_info(db->dev, "%s: link up, %dMbps, %s-duplex, no LPA\n",
    ndev->name, (nsr & NSR_SPEED) ? 10 : 100,
    (ncr & NCR_FDX) ? "full" : "half");
 else
  dev_info(db->dev, "%s: link down\n", ndev->name);
}

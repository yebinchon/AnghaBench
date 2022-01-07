
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct bnx2x {int dev; } ;


 int DP (int ,char*,int) ;
 int EINVAL ;
 int NETIF_MSG_LINK ;
 int bnx2x_8073_common_init_phy (struct bnx2x*,int*,int*,int ,int) ;
 int bnx2x_84833_common_init_phy (struct bnx2x*,int*,int*,int ,int) ;
 int bnx2x_8726_common_init_phy (struct bnx2x*,int*,int*,int ,int) ;
 int bnx2x_8727_common_init_phy (struct bnx2x*,int*,int*,int ,int) ;
 int netdev_err (int ,char*,int ) ;

__attribute__((used)) static int bnx2x_ext_phy_common_init(struct bnx2x *bp, u32 shmem_base_path[],
         u32 shmem2_base_path[], u8 phy_index,
         u32 ext_phy_type, u32 chip_id)
{
 int rc = 0;

 switch (ext_phy_type) {
 case 135:
  rc = bnx2x_8073_common_init_phy(bp, shmem_base_path,
      shmem2_base_path,
      phy_index, chip_id);
  break;
 case 132:
 case 130:
 case 129:
  rc = bnx2x_8727_common_init_phy(bp, shmem_base_path,
      shmem2_base_path,
      phy_index, chip_id);
  break;

 case 131:



  rc = bnx2x_8726_common_init_phy(bp, shmem_base_path,
      shmem2_base_path,
      phy_index, chip_id);
  break;
 case 134:
 case 133:



  rc = bnx2x_84833_common_init_phy(bp, shmem_base_path,
      shmem2_base_path,
      phy_index, chip_id);
  break;
 case 128:
  rc = -EINVAL;
  break;
 default:
  DP(NETIF_MSG_LINK,
      "ext_phy 0x%x common init not required\n",
      ext_phy_type);
  break;
 }

 if (rc)
  netdev_err(bp->dev, "Warning: PHY was not initialized,"
          " Port %d\n",
    0);
 return rc;
}

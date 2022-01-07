
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;


 int DCB_CAP_DCBX_HOST ;
 int DCB_CAP_DCBX_LLD_MANAGED ;
 int DCB_CAP_DCBX_VER_CEE ;
 int DCB_CAP_DCBX_VER_IEEE ;

__attribute__((used)) static u8 mlx4_en_dcbnl_setdcbx(struct net_device *dev, u8 mode)
{
 if ((mode & DCB_CAP_DCBX_LLD_MANAGED) ||
     (mode & DCB_CAP_DCBX_VER_CEE) ||
     !(mode & DCB_CAP_DCBX_VER_IEEE) ||
     !(mode & DCB_CAP_DCBX_HOST))
  return 1;

 return 0;
}

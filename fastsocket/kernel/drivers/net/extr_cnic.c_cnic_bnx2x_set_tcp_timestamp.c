
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct cnic_local {int pfid; } ;
struct cnic_dev {int netdev; struct cnic_local* cnic_priv; } ;
struct bnx2x {int dummy; } ;


 scalar_t__ BAR_TSTRORM_INTMEM ;
 scalar_t__ BAR_XSTRORM_INTMEM ;
 int CNIC_WR16 (struct cnic_dev*,scalar_t__,int ) ;
 int CNIC_WR8 (struct cnic_dev*,scalar_t__,int ) ;
 scalar_t__ TSTORM_ISCSI_TCP_VARS_FLAGS_OFFSET (int ) ;
 int TSTORM_L5CM_TCP_FLAGS_TS_ENABLED ;
 scalar_t__ XSTORM_ISCSI_TCP_VARS_FLAGS_OFFSET (int ) ;
 int XSTORM_L5CM_TCP_FLAGS_TS_ENABLED ;
 int XSTORM_L5CM_TCP_FLAGS_WND_SCL_EN ;
 struct bnx2x* netdev_priv (int ) ;

__attribute__((used)) static void cnic_bnx2x_set_tcp_timestamp(struct cnic_dev *dev, int tcp_ts)
{
 struct cnic_local *cp = dev->cnic_priv;
 struct bnx2x *bp = netdev_priv(dev->netdev);
 u8 xstorm_flags = XSTORM_L5CM_TCP_FLAGS_WND_SCL_EN;
 u16 tstorm_flags = 0;

 if (tcp_ts) {
  xstorm_flags |= XSTORM_L5CM_TCP_FLAGS_TS_ENABLED;
  tstorm_flags |= TSTORM_L5CM_TCP_FLAGS_TS_ENABLED;
 }

 CNIC_WR8(dev, BAR_XSTRORM_INTMEM +
   XSTORM_ISCSI_TCP_VARS_FLAGS_OFFSET(cp->pfid), xstorm_flags);

 CNIC_WR16(dev, BAR_TSTRORM_INTMEM +
    TSTORM_ISCSI_TCP_VARS_FLAGS_OFFSET(cp->pfid), tstorm_flags);
}

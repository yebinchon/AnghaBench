
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct mlx4_vhcr {int dummy; } ;
struct TYPE_2__ {scalar_t__ steering_mode; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_cmd_mailbox {struct mlx4_cmd_mailbox* buf; int dma; } ;
struct mlx4_cmd_info {int dummy; } ;


 int MLX4_BMME_FLAG_TYPE_2_WIN ;
 int MLX4_CMD_NATIVE ;
 int MLX4_CMD_QUERY_DEV_CAP ;
 int MLX4_CMD_TIME_CLASS_A ;
 int MLX4_DEV_CAP_FLAG_MEM_WINDOW ;
 int MLX4_DEV_CAP_FLAG_PORT_MNG_CHG_EV ;
 int MLX4_GET (int,struct mlx4_cmd_mailbox*,int ) ;
 int MLX4_PUT (struct mlx4_cmd_mailbox*,int,int ) ;
 scalar_t__ MLX4_STEERING_MODE_DEVICE_MANAGED ;
 int QUERY_DEV_CAP_BF_OFFSET ;
 int QUERY_DEV_CAP_BMME_FLAGS_OFFSET ;
 int QUERY_DEV_CAP_CQ_TS_SUPPORT_OFFSET ;
 int QUERY_DEV_CAP_EXT_FLAGS_OFFSET ;
 int QUERY_DEV_CAP_FLOW_STEERING_RANGE_EN_OFFSET ;
 int mlx4_cmd_box (struct mlx4_dev*,int ,int ,int ,int ,int ,int ,int ) ;

int mlx4_QUERY_DEV_CAP_wrapper(struct mlx4_dev *dev, int slave,
          struct mlx4_vhcr *vhcr,
          struct mlx4_cmd_mailbox *inbox,
          struct mlx4_cmd_mailbox *outbox,
          struct mlx4_cmd_info *cmd)
{
 u64 flags;
 int err = 0;
 u8 field;
 u32 bmme_flags;

 err = mlx4_cmd_box(dev, 0, outbox->dma, 0, 0, MLX4_CMD_QUERY_DEV_CAP,
      MLX4_CMD_TIME_CLASS_A, MLX4_CMD_NATIVE);
 if (err)
  return err;




 MLX4_GET(flags, outbox->buf, QUERY_DEV_CAP_EXT_FLAGS_OFFSET);
 flags |= MLX4_DEV_CAP_FLAG_PORT_MNG_CHG_EV;
 flags &= ~MLX4_DEV_CAP_FLAG_MEM_WINDOW;
 MLX4_PUT(outbox->buf, flags, QUERY_DEV_CAP_EXT_FLAGS_OFFSET);


 MLX4_GET(field, outbox->buf, QUERY_DEV_CAP_CQ_TS_SUPPORT_OFFSET);
 field &= 0x7f;
 MLX4_PUT(outbox->buf, field, QUERY_DEV_CAP_CQ_TS_SUPPORT_OFFSET);


 MLX4_GET(field, outbox->buf, QUERY_DEV_CAP_BF_OFFSET);
 field &= 0x7f;
 MLX4_PUT(outbox->buf, field, QUERY_DEV_CAP_BF_OFFSET);


 MLX4_GET(bmme_flags, outbox, QUERY_DEV_CAP_BMME_FLAGS_OFFSET);
 bmme_flags &= ~MLX4_BMME_FLAG_TYPE_2_WIN;
 MLX4_PUT(outbox->buf, bmme_flags, QUERY_DEV_CAP_BMME_FLAGS_OFFSET);


 if (dev->caps.steering_mode != MLX4_STEERING_MODE_DEVICE_MANAGED) {
  MLX4_GET(field, outbox->buf,
    QUERY_DEV_CAP_FLOW_STEERING_RANGE_EN_OFFSET);
  field &= 0x7f;
  MLX4_PUT(outbox->buf, field,
    QUERY_DEV_CAP_FLOW_STEERING_RANGE_EN_OFFSET);
 }
 return 0;
}

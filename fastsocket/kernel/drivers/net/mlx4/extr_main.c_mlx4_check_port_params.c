
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_ports; int flags; int* supported_type; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
typedef enum mlx4_port_type { ____Placeholder_mlx4_port_type } mlx4_port_type ;


 int EINVAL ;
 int MLX4_DEV_CAP_FLAG_DPDP ;
 int mlx4_err (struct mlx4_dev*,char*,...) ;

int mlx4_check_port_params(struct mlx4_dev *dev,
      enum mlx4_port_type *port_type)
{
 int i;

 for (i = 0; i < dev->caps.num_ports - 1; i++) {
  if (port_type[i] != port_type[i + 1]) {
   if (!(dev->caps.flags & MLX4_DEV_CAP_FLAG_DPDP)) {
    mlx4_err(dev, "Only same port types supported "
      "on this HCA, aborting.\n");
    return -EINVAL;
   }
  }
 }

 for (i = 0; i < dev->caps.num_ports; i++) {
  if (!(port_type[i] & dev->caps.supported_type[i+1])) {
   mlx4_err(dev, "Requested port type for port %d is not "
          "supported on this HCA\n", i + 1);
   return -EINVAL;
  }
 }
 return 0;
}

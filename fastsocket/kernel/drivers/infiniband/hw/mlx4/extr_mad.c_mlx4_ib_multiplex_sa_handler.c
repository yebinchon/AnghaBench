
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int attr_id; } ;
struct ib_sa_mad {TYPE_1__ mad_hdr; } ;
struct ib_device {int dummy; } ;



 int be16_to_cpu (int ) ;
 int mlx4_ib_mcg_multiplex_handler (struct ib_device*,int,int,struct ib_sa_mad*) ;

__attribute__((used)) static int mlx4_ib_multiplex_sa_handler(struct ib_device *ibdev, int port,
  int slave, struct ib_sa_mad *sa_mad)
{
 int ret = 0;


 switch (be16_to_cpu(sa_mad->mad_hdr.attr_id)) {
 case 128:
  ret = mlx4_ib_mcg_multiplex_handler(ibdev, port, slave, sa_mad);
  break;
 default:
  break;
 }
 return ret;
}

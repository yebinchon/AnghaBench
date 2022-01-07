
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ib_device {int dummy; } ;


 int __mlx4_ib_query_pkey (struct ib_device*,int ,int ,int *,int ) ;

__attribute__((used)) static int mlx4_ib_query_pkey(struct ib_device *ibdev, u8 port, u16 index, u16 *pkey)
{
 return __mlx4_ib_query_pkey(ibdev, port, index, pkey, 0);
}

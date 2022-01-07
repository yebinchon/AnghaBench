
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct skb_shared_hwtstamps {int hwtstamp; } ;
struct mlx4_en_dev {int clock; } ;


 int memset (struct skb_shared_hwtstamps*,int ,int) ;
 int ns_to_ktime (int ) ;
 int timecounter_cyc2time (int *,int ) ;

void mlx4_en_fill_hwtstamps(struct mlx4_en_dev *mdev,
       struct skb_shared_hwtstamps *hwts,
       u64 timestamp)
{
 u64 nsec;

 nsec = timecounter_cyc2time(&mdev->clock, timestamp);

 memset(hwts, 0, sizeof(struct skb_shared_hwtstamps));
 hwts->hwtstamp = ns_to_ktime(nsec);
}

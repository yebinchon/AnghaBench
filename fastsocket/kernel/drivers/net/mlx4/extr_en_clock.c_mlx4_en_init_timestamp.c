
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_6__ {int shift; int mask; int mult; int read; } ;
struct mlx4_en_dev {int overflow_period; TYPE_2__ cycles; int clock; struct mlx4_dev* dev; } ;
struct TYPE_5__ {int hca_core_clock; } ;
struct mlx4_dev {TYPE_1__ caps; } ;


 int CLOCKSOURCE_MASK (int) ;
 int HZ ;
 int NSEC_PER_SEC ;
 int clocksource_khz2mult (int,int) ;
 int cyclecounter_cyc2ns (TYPE_2__*,int ) ;
 int do_div (int ,int) ;
 int ktime_get_real () ;
 int ktime_to_ns (int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int mlx4_en_read_clock ;
 int timecounter_init (int *,TYPE_2__*,int ) ;

void mlx4_en_init_timestamp(struct mlx4_en_dev *mdev)
{
 struct mlx4_dev *dev = mdev->dev;
 u64 ns;

 memset(&mdev->cycles, 0, sizeof(mdev->cycles));
 mdev->cycles.read = mlx4_en_read_clock;
 mdev->cycles.mask = CLOCKSOURCE_MASK(48);





 mdev->cycles.shift = 14;
 mdev->cycles.mult =
  clocksource_khz2mult(1000 * dev->caps.hca_core_clock, mdev->cycles.shift);

 timecounter_init(&mdev->clock, &mdev->cycles,
    ktime_to_ns(ktime_get_real()));




 ns = cyclecounter_cyc2ns(&mdev->cycles, mdev->cycles.mask);
 do_div(ns, NSEC_PER_SEC / 2 / HZ);
 mdev->overflow_period = ns;
}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_get_stats_count.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_get_stats_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.niu = type { i32, i32, i32 }

@NIU_FLAGS_XMAC = common dso_local global i32 0, align 4
@NUM_XMAC_STAT_KEYS = common dso_local global i32 0, align 4
@NUM_BMAC_STAT_KEYS = common dso_local global i32 0, align 4
@NUM_RXCHAN_STAT_KEYS = common dso_local global i32 0, align 4
@NUM_TXCHAN_STAT_KEYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @niu_get_stats_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_get_stats_count(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.niu*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.niu* @netdev_priv(%struct.net_device* %4)
  store %struct.niu* %5, %struct.niu** %3, align 8
  %6 = load %struct.niu*, %struct.niu** %3, align 8
  %7 = getelementptr inbounds %struct.niu, %struct.niu* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @NIU_FLAGS_XMAC, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @NUM_XMAC_STAT_KEYS, align 4
  br label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @NUM_BMAC_STAT_KEYS, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  %18 = load %struct.niu*, %struct.niu** %3, align 8
  %19 = getelementptr inbounds %struct.niu, %struct.niu* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @NUM_RXCHAN_STAT_KEYS, align 4
  %22 = mul nsw i32 %20, %21
  %23 = add nsw i32 %17, %22
  %24 = load %struct.niu*, %struct.niu** %3, align 8
  %25 = getelementptr inbounds %struct.niu, %struct.niu* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @NUM_TXCHAN_STAT_KEYS, align 4
  %28 = mul nsw i32 %26, %27
  %29 = add nsw i32 %23, %28
  ret i32 %29
}

declare dso_local %struct.niu* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

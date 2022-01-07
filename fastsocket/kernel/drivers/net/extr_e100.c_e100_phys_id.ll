; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_e100_phys_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_e100_phys_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nic = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@phy_82552_v = common dso_local global i64 0, align 8
@E100_82552_LED_OVERRIDE = common dso_local global i32 0, align 4
@MII_LED_CONTROL = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @e100_phys_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e100_phys_id(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nic*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.nic* @netdev_priv(%struct.net_device* %7)
  store %struct.nic* %8, %struct.nic** %5, align 8
  %9 = load %struct.nic*, %struct.nic** %5, align 8
  %10 = getelementptr inbounds %struct.nic, %struct.nic* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @phy_82552_v, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @E100_82552_LED_OVERRIDE, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @MII_LED_CONTROL, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %25 = load i32, i32* @HZ, align 4
  %26 = sdiv i32 %24, %25
  %27 = icmp sgt i32 %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22, %18
  %29 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %30 = load i32, i32* @HZ, align 4
  %31 = sdiv i32 %29, %30
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %28, %22
  %33 = load %struct.nic*, %struct.nic** %5, align 8
  %34 = getelementptr inbounds %struct.nic, %struct.nic* %33, i32 0, i32 2
  %35 = load i32, i32* @jiffies, align 4
  %36 = call i32 @mod_timer(i32* %34, i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = mul nsw i32 %37, 1000
  %39 = call i32 @msleep_interruptible(i32 %38)
  %40 = load %struct.nic*, %struct.nic** %5, align 8
  %41 = getelementptr inbounds %struct.nic, %struct.nic* %40, i32 0, i32 2
  %42 = call i32 @del_timer_sync(i32* %41)
  %43 = load %struct.net_device*, %struct.net_device** %3, align 8
  %44 = load %struct.nic*, %struct.nic** %5, align 8
  %45 = getelementptr inbounds %struct.nic, %struct.nic* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @mdio_write(%struct.net_device* %43, i32 %47, i32 %48, i32 0)
  ret i32 0
}

declare dso_local %struct.nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @mdio_write(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

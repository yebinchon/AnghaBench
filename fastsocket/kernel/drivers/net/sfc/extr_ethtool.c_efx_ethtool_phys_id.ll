; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_ethtool.c_efx_ethtool_phys_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_ethtool.c_efx_ethtool_phys_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.efx_nic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.efx_nic*, i32)* }

@EFX_LED_ON = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@EFX_LED_OFF = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EFX_LED_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i64)* @efx_ethtool_phys_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ethtool_phys_id(%struct.net_device* %0, i64 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.efx_nic*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.efx_nic* @netdev_priv(%struct.net_device* %6)
  store %struct.efx_nic* %7, %struct.efx_nic** %5, align 8
  br label %8

8:                                                ; preds = %39, %2
  %9 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %10 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.efx_nic*, i32)*, i32 (%struct.efx_nic*, i32)** %12, align 8
  %14 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %15 = load i32, i32* @EFX_LED_ON, align 4
  %16 = call i32 %13(%struct.efx_nic* %14, i32 %15)
  %17 = load i32, i32* @HZ, align 4
  %18 = sdiv i32 %17, 2
  %19 = call i32 @schedule_timeout_interruptible(i32 %18)
  %20 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %21 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.efx_nic*, i32)*, i32 (%struct.efx_nic*, i32)** %23, align 8
  %25 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %26 = load i32, i32* @EFX_LED_OFF, align 4
  %27 = call i32 %24(%struct.efx_nic* %25, i32 %26)
  %28 = load i32, i32* @HZ, align 4
  %29 = sdiv i32 %28, 2
  %30 = call i32 @schedule_timeout_interruptible(i32 %29)
  br label %31

31:                                               ; preds = %8
  %32 = load i32, i32* @current, align 4
  %33 = call i32 @signal_pending(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* %4, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, i64* %4, align 8
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i1 [ false, %31 ], [ %38, %35 ]
  br i1 %40, label %8, label %41

41:                                               ; preds = %39
  %42 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %43 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32 (%struct.efx_nic*, i32)*, i32 (%struct.efx_nic*, i32)** %45, align 8
  %47 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %48 = load i32, i32* @EFX_LED_DEFAULT, align 4
  %49 = call i32 %46(%struct.efx_nic* %47, i32 %48)
  ret i32 0
}

declare dso_local %struct.efx_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @signal_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

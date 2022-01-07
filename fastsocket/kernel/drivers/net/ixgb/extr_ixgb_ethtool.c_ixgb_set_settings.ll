; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_ethtool.c_ixgb_set_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_ethtool.c_ixgb_set_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i64, i64, i64 }
%struct.ixgb_adapter = type { i32 }

@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@SPEED_10000 = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @ixgb_set_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgb_set_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_cmd*, align 8
  %6 = alloca %struct.ixgb_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.ixgb_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.ixgb_adapter* %8, %struct.ixgb_adapter** %6, align 8
  %9 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %10 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @AUTONEG_ENABLE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %26, label %14

14:                                               ; preds = %2
  %15 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %19 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %17, %20
  %22 = load i64, i64* @SPEED_10000, align 8
  %23 = load i64, i64* @DUPLEX_FULL, align 8
  %24 = add nsw i64 %22, %23
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %14, %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %48

29:                                               ; preds = %14
  %30 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %6, align 8
  %31 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @netif_running(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %6, align 8
  %37 = call i32 @ixgb_down(%struct.ixgb_adapter* %36, i32 1)
  %38 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %6, align 8
  %39 = call i32 @ixgb_reset(%struct.ixgb_adapter* %38)
  %40 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %6, align 8
  %41 = call i32 @ixgb_up(%struct.ixgb_adapter* %40)
  %42 = load %struct.net_device*, %struct.net_device** %4, align 8
  %43 = call i32 @ixgb_set_speed_duplex(%struct.net_device* %42)
  br label %47

44:                                               ; preds = %29
  %45 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %6, align 8
  %46 = call i32 @ixgb_reset(%struct.ixgb_adapter* %45)
  br label %47

47:                                               ; preds = %44, %35
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %26
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.ixgb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @ixgb_down(%struct.ixgb_adapter*, i32) #1

declare dso_local i32 @ixgb_reset(%struct.ixgb_adapter*) #1

declare dso_local i32 @ixgb_up(%struct.ixgb_adapter*) #1

declare dso_local i32 @ixgb_set_speed_duplex(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

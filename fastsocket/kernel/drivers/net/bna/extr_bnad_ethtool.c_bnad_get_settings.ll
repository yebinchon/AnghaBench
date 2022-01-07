; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad_ethtool.c_bnad_get_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad_ethtool.c_bnad_get_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i32, i64, i64, i32, i64, i32, i32, i32, i32 }

@SUPPORTED_10000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_10000baseT_Full = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@ADVERTISED_FIBRE = common dso_local global i32 0, align 4
@PORT_FIBRE = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@XCVR_EXTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @bnad_get_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnad_get_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_cmd*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %4, align 8
  %5 = load i32, i32* @SUPPORTED_10000baseT_Full, align 4
  %6 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %7 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %6, i32 0, i32 7
  store i32 %5, i32* %7, align 8
  %8 = load i32, i32* @ADVERTISED_10000baseT_Full, align 4
  %9 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %10 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %9, i32 0, i32 6
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @AUTONEG_DISABLE, align 4
  %12 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %13 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %12, i32 0, i32 8
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %15 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %16 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %20 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %21 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* @PORT_FIBRE, align 4
  %25 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %26 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 8
  %27 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %28 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %27, i32 0, i32 4
  store i64 0, i64* %28, align 8
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = call i64 @netif_carrier_ok(%struct.net_device* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %2
  %33 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %34 = load i32, i32* @SPEED_10000, align 4
  %35 = call i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd* %33, i32 %34)
  %36 = load i32, i32* @DUPLEX_FULL, align 4
  %37 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %38 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %44

39:                                               ; preds = %2
  %40 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %41 = call i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd* %40, i32 -1)
  %42 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %43 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %42, i32 0, i32 0
  store i32 -1, i32* %43, align 8
  br label %44

44:                                               ; preds = %39, %32
  %45 = load i32, i32* @XCVR_EXTERNAL, align 4
  %46 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %47 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  %48 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %49 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %51 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  ret i32 0
}

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

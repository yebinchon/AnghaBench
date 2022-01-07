; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_ethtool.c_igbvf_get_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_ethtool.c_igbvf_get_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i32, i32, i32, i32, i32, i32 }
%struct.igbvf_adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { i32 }

@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@XCVR_DUMMY1 = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_LU = common dso_local global i32 0, align 4
@E1000_STATUS_SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@E1000_STATUS_SPEED_100 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@E1000_STATUS_FD = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @igbvf_get_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igbvf_get_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_cmd*, align 8
  %5 = alloca %struct.igbvf_adapter*, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.igbvf_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.igbvf_adapter* %9, %struct.igbvf_adapter** %5, align 8
  %10 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %5, align 8
  %11 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %10, i32 0, i32 0
  store %struct.e1000_hw* %11, %struct.e1000_hw** %6, align 8
  %12 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %13 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %14 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %16 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %17 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  %18 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %19 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %18, i32 0, i32 0
  store i32 -1, i32* %19, align 4
  %20 = load i32, i32* @XCVR_DUMMY1, align 4
  %21 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %22 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @STATUS, align 4
  %24 = call i32 @er32(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @E1000_STATUS_LU, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %66

29:                                               ; preds = %2
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @E1000_STATUS_SPEED_1000, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %36 = load i32, i32* @SPEED_1000, align 4
  %37 = call i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd* %35, i32 %36)
  br label %52

38:                                               ; preds = %29
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @E1000_STATUS_SPEED_100, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %45 = load i32, i32* @SPEED_100, align 4
  %46 = call i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd* %44, i32 %45)
  br label %51

47:                                               ; preds = %38
  %48 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %49 = load i32, i32* @SPEED_10, align 4
  %50 = call i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %43
  br label %52

52:                                               ; preds = %51, %34
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @E1000_STATUS_FD, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* @DUPLEX_FULL, align 4
  %59 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %60 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %65

61:                                               ; preds = %52
  %62 = load i32, i32* @DUPLEX_HALF, align 4
  %63 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %64 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %61, %57
  br label %71

66:                                               ; preds = %2
  %67 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %68 = call i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd* %67, i32 -1)
  %69 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %70 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %69, i32 0, i32 1
  store i32 -1, i32* %70, align 4
  br label %71

71:                                               ; preds = %66, %65
  %72 = load i32, i32* @AUTONEG_DISABLE, align 4
  %73 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %74 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  ret i32 0
}

declare dso_local %struct.igbvf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ethtool_cmd_speed_set(%struct.ethtool_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

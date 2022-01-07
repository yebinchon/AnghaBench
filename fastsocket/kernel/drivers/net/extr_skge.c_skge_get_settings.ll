; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_get_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_get_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.skge_port = type { i32, i32, i32, i32, %struct.skge_hw* }
%struct.skge_hw = type { i32, i64 }

@XCVR_INTERNAL = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i32 0, align 4
@PORT_FIBRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @skge_get_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skge_get_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_cmd*, align 8
  %5 = alloca %struct.skge_port*, align 8
  %6 = alloca %struct.skge_hw*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.skge_port* @netdev_priv(%struct.net_device* %7)
  store %struct.skge_port* %8, %struct.skge_port** %5, align 8
  %9 = load %struct.skge_port*, %struct.skge_port** %5, align 8
  %10 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %9, i32 0, i32 4
  %11 = load %struct.skge_hw*, %struct.skge_hw** %10, align 8
  store %struct.skge_hw* %11, %struct.skge_hw** %6, align 8
  %12 = load i32, i32* @XCVR_INTERNAL, align 4
  %13 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %14 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %13, i32 0, i32 7
  store i32 %12, i32* %14, align 4
  %15 = load %struct.skge_hw*, %struct.skge_hw** %6, align 8
  %16 = call i32 @skge_supported_modes(%struct.skge_hw* %15)
  %17 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %18 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %17, i32 0, i32 6
  store i32 %16, i32* %18, align 4
  %19 = load %struct.skge_hw*, %struct.skge_hw** %6, align 8
  %20 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %2
  %24 = load i32, i32* @PORT_TP, align 4
  %25 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %26 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load %struct.skge_hw*, %struct.skge_hw** %6, align 8
  %28 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %31 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 4
  br label %36

32:                                               ; preds = %2
  %33 = load i32, i32* @PORT_FIBRE, align 4
  %34 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %35 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %32, %23
  %37 = load %struct.skge_port*, %struct.skge_port** %5, align 8
  %38 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %41 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.skge_port*, %struct.skge_port** %5, align 8
  %43 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %46 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.skge_port*, %struct.skge_port** %5, align 8
  %48 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %51 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.skge_port*, %struct.skge_port** %5, align 8
  %53 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %56 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  ret i32 0
}

declare dso_local %struct.skge_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skge_supported_modes(%struct.skge_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

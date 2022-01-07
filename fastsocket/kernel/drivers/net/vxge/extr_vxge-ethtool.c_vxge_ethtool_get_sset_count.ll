; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-ethtool.c_vxge_ethtool_get_sset_count.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-ethtool.c_vxge_ethtool_get_sset_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vxgedev = type { i32, i32 }

@VXGE_TITLE_LEN = common dso_local global i32 0, align 4
@VXGE_HW_VPATH_STATS_LEN = common dso_local global i32 0, align 4
@VXGE_HW_AGGR_STATS_LEN = common dso_local global i32 0, align 4
@VXGE_HW_PORT_STATS_LEN = common dso_local global i32 0, align 4
@VXGE_HW_VPATH_TX_STATS_LEN = common dso_local global i32 0, align 4
@VXGE_HW_VPATH_RX_STATS_LEN = common dso_local global i32 0, align 4
@VXGE_SW_STATS_LEN = common dso_local global i32 0, align 4
@DRIVER_STAT_LEN = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @vxge_ethtool_get_sset_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxge_ethtool_get_sset_count(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vxgedev*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call i64 @netdev_priv(%struct.net_device* %7)
  %9 = inttoptr i64 %8 to %struct.vxgedev*
  store %struct.vxgedev* %9, %struct.vxgedev** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %51 [
    i32 128, label %11
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @VXGE_TITLE_LEN, align 4
  %13 = load %struct.vxgedev*, %struct.vxgedev** %6, align 8
  %14 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @VXGE_HW_VPATH_STATS_LEN, align 4
  %17 = mul nsw i32 %15, %16
  %18 = add nsw i32 %12, %17
  %19 = load %struct.vxgedev*, %struct.vxgedev** %6, align 8
  %20 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @VXGE_HW_AGGR_STATS_LEN, align 4
  %23 = mul nsw i32 %21, %22
  %24 = add nsw i32 %18, %23
  %25 = load %struct.vxgedev*, %struct.vxgedev** %6, align 8
  %26 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @VXGE_HW_PORT_STATS_LEN, align 4
  %29 = mul nsw i32 %27, %28
  %30 = add nsw i32 %24, %29
  %31 = load %struct.vxgedev*, %struct.vxgedev** %6, align 8
  %32 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @VXGE_HW_VPATH_TX_STATS_LEN, align 4
  %35 = mul nsw i32 %33, %34
  %36 = add nsw i32 %30, %35
  %37 = load %struct.vxgedev*, %struct.vxgedev** %6, align 8
  %38 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @VXGE_HW_VPATH_RX_STATS_LEN, align 4
  %41 = mul nsw i32 %39, %40
  %42 = add nsw i32 %36, %41
  %43 = load %struct.vxgedev*, %struct.vxgedev** %6, align 8
  %44 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @VXGE_SW_STATS_LEN, align 4
  %47 = mul nsw i32 %45, %46
  %48 = add nsw i32 %42, %47
  %49 = load i32, i32* @DRIVER_STAT_LEN, align 4
  %50 = add nsw i32 %48, %49
  store i32 %50, i32* %3, align 4
  br label %54

51:                                               ; preds = %2
  %52 = load i32, i32* @EOPNOTSUPP, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %51, %11
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

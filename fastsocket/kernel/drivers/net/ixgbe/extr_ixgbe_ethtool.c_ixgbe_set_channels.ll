; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_set_channels.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_set_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_channels = type { i32, i64, i64, i64 }
%struct.ixgbe_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NON_Q_VECTORS = common dso_local global i64 0, align 8
@RING_F_FDIR = common dso_local global i64 0, align 8
@IXGBE_MAX_RSS_INDICES = common dso_local global i32 0, align 4
@RING_F_RSS = common dso_local global i64 0, align 8
@IXGBE_FCRETA_SIZE = common dso_local global i32 0, align 4
@RING_F_FCOE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_channels*)* @ixgbe_set_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_set_channels(%struct.net_device* %0, %struct.ethtool_channels* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_channels*, align 8
  %6 = alloca %struct.ixgbe_adapter*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_channels* %1, %struct.ethtool_channels** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.ixgbe_adapter* %9, %struct.ixgbe_adapter** %6, align 8
  %10 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %11 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %22 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20, %15, %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %70

28:                                               ; preds = %20
  %29 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %30 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NON_Q_VECTORS, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %70

37:                                               ; preds = %28
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %40 = call i32 @ixgbe_max_channels(%struct.ixgbe_adapter* %39)
  %41 = icmp ugt i32 %38, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %70

45:                                               ; preds = %37
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %48 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i64, i64* @RING_F_FDIR, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 %46, i32* %52, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @IXGBE_MAX_RSS_INDICES, align 4
  %55 = icmp ugt i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %45
  %57 = load i32, i32* @IXGBE_MAX_RSS_INDICES, align 4
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %56, %45
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %61 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i64, i64* @RING_F_RSS, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 %59, i32* %65, align 4
  %66 = load %struct.net_device*, %struct.net_device** %4, align 8
  %67 = load %struct.net_device*, %struct.net_device** %4, align 8
  %68 = call i32 @netdev_get_num_tc(%struct.net_device* %67)
  %69 = call i32 @ixgbe_setup_tc(%struct.net_device* %66, i32 %68)
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %58, %42, %34, %25
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ixgbe_max_channels(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_setup_tc(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_get_num_tc(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

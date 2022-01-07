; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ethtool.c_qlcnic_set_ringparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ethtool.c_qlcnic_set_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i64 }
%struct.qlcnic_adapter = type { i64, i64, i64, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@MIN_RCV_DESCRIPTORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@MIN_JUMBO_DESCRIPTORS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"rx jumbo\00", align 1
@MIN_CMD_DESCRIPTORS = common dso_local global i32 0, align 4
@MAX_CMD_DESCRIPTORS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ringparam*)* @qlcnic_set_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_set_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ringparam*, align 8
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.qlcnic_adapter* %11, %struct.qlcnic_adapter** %6, align 8
  %12 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %13 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %72

19:                                               ; preds = %2
  %20 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @MIN_RCV_DESCRIPTORS, align 4
  %24 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %25 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @qlcnic_validate_ringparam(i32 %22, i32 %23, i32 %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i64 %27, i64* %7, align 8
  %28 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %29 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MIN_JUMBO_DESCRIPTORS, align 4
  %32 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %33 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @qlcnic_validate_ringparam(i32 %30, i32 %31, i32 %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i64 %35, i64* %8, align 8
  %36 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %37 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @MIN_CMD_DESCRIPTORS, align 4
  %40 = load i32, i32* @MAX_CMD_DESCRIPTORS, align 4
  %41 = call i64 @qlcnic_validate_ringparam(i32 %38, i32 %39, i32 %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %44 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %19
  %48 = load i64, i64* %9, align 8
  %49 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %50 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load i64, i64* %8, align 8
  %55 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %56 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %72

60:                                               ; preds = %53, %47, %19
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %63 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %66 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  %67 = load i64, i64* %9, align 8
  %68 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %69 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  %70 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %71 = call i32 @qlcnic_reset_context(%struct.qlcnic_adapter* %70)
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %60, %59, %16
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @qlcnic_validate_ringparam(i32, i32, i32, i8*) #1

declare dso_local i32 @qlcnic_reset_context(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

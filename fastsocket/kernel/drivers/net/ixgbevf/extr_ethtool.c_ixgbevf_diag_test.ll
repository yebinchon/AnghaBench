; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ethtool.c_ixgbevf_diag_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ethtool.c_ixgbevf_diag_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_test = type { i32 }
%struct.ixgbevf_adapter = type { i32, i32 }

@__IXGBEVF_TESTING = common dso_local global i32 0, align 4
@ETH_TEST_FL_OFFLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"offline testing starting\0A\00", align 1
@ETH_TEST_FL_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"register testing starting\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"online testing starting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_test*, i32*)* @ixgbevf_diag_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_diag_test(%struct.net_device* %0, %struct.ethtool_test* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_test*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ixgbevf_adapter*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_test* %1, %struct.ethtool_test** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.ixgbevf_adapter* %10, %struct.ixgbevf_adapter** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call i32 @netif_running(%struct.net_device* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @__IXGBEVF_TESTING, align 4
  %14 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %15 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %14, i32 0, i32 0
  %16 = call i32 @set_bit(i32 %13, i32* %15)
  %17 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %18 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ETH_TEST_FL_OFFLINE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %74

22:                                               ; preds = %3
  %23 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %24 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %23, i32 0, i32 1
  %25 = call i32 @hw_dbg(i32* %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = call i64 @ixgbevf_link_test(%struct.ixgbevf_adapter* %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %33 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %34 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %31, %22
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = call i32 @dev_close(%struct.net_device* %41)
  br label %46

43:                                               ; preds = %37
  %44 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %45 = call i32 @ixgbevf_reset(%struct.ixgbevf_adapter* %44)
  br label %46

46:                                               ; preds = %43, %40
  %47 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %48 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %47, i32 0, i32 1
  %49 = call i32 @hw_dbg(i32* %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = call i64 @ixgbevf_reg_test(%struct.ixgbevf_adapter* %50, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %46
  %56 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %57 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %58 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %55, %46
  %62 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %63 = call i32 @ixgbevf_reset(%struct.ixgbevf_adapter* %62)
  %64 = load i32, i32* @__IXGBEVF_TESTING, align 4
  %65 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %66 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %65, i32 0, i32 0
  %67 = call i32 @clear_bit(i32 %64, i32* %66)
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = load %struct.net_device*, %struct.net_device** %4, align 8
  %72 = call i32 @dev_open(%struct.net_device* %71)
  br label %73

73:                                               ; preds = %70, %61
  br label %96

74:                                               ; preds = %3
  %75 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %76 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %75, i32 0, i32 1
  %77 = call i32 @hw_dbg(i32* %76, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %78 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = call i64 @ixgbevf_link_test(%struct.ixgbevf_adapter* %78, i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %74
  %84 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %85 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %86 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %83, %74
  %90 = load i32*, i32** %6, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  store i32 0, i32* %91, align 4
  %92 = load i32, i32* @__IXGBEVF_TESTING, align 4
  %93 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %94 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %93, i32 0, i32 0
  %95 = call i32 @clear_bit(i32 %92, i32* %94)
  br label %96

96:                                               ; preds = %89, %73
  %97 = call i32 @msleep_interruptible(i32 4000)
  ret void
}

declare dso_local %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @hw_dbg(i32*, i8*) #1

declare dso_local i64 @ixgbevf_link_test(%struct.ixgbevf_adapter*, i32*) #1

declare dso_local i32 @dev_close(%struct.net_device*) #1

declare dso_local i32 @ixgbevf_reset(%struct.ixgbevf_adapter*) #1

declare dso_local i64 @ixgbevf_reg_test(%struct.ixgbevf_adapter*, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @dev_open(%struct.net_device*) #1

declare dso_local i32 @msleep_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

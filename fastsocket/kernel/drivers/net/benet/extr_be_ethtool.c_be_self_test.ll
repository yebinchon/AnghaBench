; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_ethtool.c_be_self_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_ethtool.c_be_self_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_test = type { i32 }
%struct.be_adapter = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BE_FUNCTION_CAPS_SUPER_NIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Self test not supported\0A\00", align 1
@ETH_TEST_FL_FAILED = common dso_local global i32 0, align 4
@ETHTOOL_TESTS_NUM = common dso_local global i32 0, align 4
@ETH_TEST_FL_OFFLINE = common dso_local global i32 0, align 4
@BE_MAC_LOOPBACK = common dso_local global i32 0, align 4
@BE_PHY_LOOPBACK = common dso_local global i32 0, align 4
@BE_ONE_PORT_EXT_LOOPBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_test*, i32*)* @be_self_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_self_test(%struct.net_device* %0, %struct.ethtool_test* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_test*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.be_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_test* %1, %struct.ethtool_test** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.be_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.be_adapter* %11, %struct.be_adapter** %7, align 8
  store i64 0, i64* %9, align 8
  %12 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %13 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @BE_FUNCTION_CAPS_SUPER_NIC, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %3
  %19 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %20 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %25 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %26 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %123

29:                                               ; preds = %3
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* @ETHTOOL_TESTS_NUM, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 4, %32
  %34 = trunc i64 %33 to i32
  %35 = call i32 @memset(i32* %30, i32 0, i32 %34)
  %36 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %37 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ETH_TEST_FL_OFFLINE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %82

42:                                               ; preds = %29
  %43 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %44 = load i32, i32* @BE_MAC_LOOPBACK, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = call i64 @be_loopback_test(%struct.be_adapter* %43, i32 %44, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %51 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %52 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %49, %42
  %56 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %57 = load i32, i32* @BE_PHY_LOOPBACK, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = call i64 @be_loopback_test(%struct.be_adapter* %56, i32 %57, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %64 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %65 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %62, %55
  %69 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %70 = load i32, i32* @BE_ONE_PORT_EXT_LOOPBACK, align 4
  %71 = load i32*, i32** %6, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  %73 = call i64 @be_loopback_test(%struct.be_adapter* %69, i32 %70, i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %77 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %78 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %75, %68
  br label %82

82:                                               ; preds = %81, %29
  %83 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %84 = call i32 @lancer_chip(%struct.be_adapter* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %98, label %86

86:                                               ; preds = %82
  %87 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %88 = call i64 @be_test_ddr_dma(%struct.be_adapter* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  %91 = load i32*, i32** %6, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 3
  store i32 1, i32* %92, align 4
  %93 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %94 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %95 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %90, %86, %82
  %99 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %100 = call i32 @be_cmd_link_status_query(%struct.be_adapter* %99, i32* null, i64* %9, i32 0)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %98
  %104 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %105 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %106 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 4
  %109 = load i32*, i32** %6, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 4
  store i32 -1, i32* %110, align 4
  br label %123

111:                                              ; preds = %98
  %112 = load i64, i64* %9, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %122, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %116 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %117 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 4
  %120 = load i32*, i32** %6, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 4
  store i32 1, i32* %121, align 4
  br label %122

122:                                              ; preds = %114, %111
  br label %123

123:                                              ; preds = %18, %122, %103
  ret void
}

declare dso_local %struct.be_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @be_loopback_test(%struct.be_adapter*, i32, i32*) #1

declare dso_local i32 @lancer_chip(%struct.be_adapter*) #1

declare dso_local i64 @be_test_ddr_dma(%struct.be_adapter*) #1

declare dso_local i32 @be_cmd_link_status_query(%struct.be_adapter*, i32*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

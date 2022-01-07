; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_self_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_self_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_test = type { i32 }
%struct.bnx2 = type { i32, i64 }

@PCI_D0 = common dso_local global i32 0, align 4
@BNX2_NUM_TESTS = common dso_local global i32 0, align 4
@ETH_TEST_FL_OFFLINE = common dso_local global i32 0, align 4
@BNX2_DRV_MSG_CODE_DIAG = common dso_local global i32 0, align 4
@ETH_TEST_FL_FAILED = common dso_local global i32 0, align 4
@PCI_D3hot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_test*, i32*)* @bnx2_self_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_self_test(%struct.net_device* %0, %struct.ethtool_test* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_test*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bnx2*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_test* %1, %struct.ethtool_test** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.bnx2* @netdev_priv(%struct.net_device* %9)
  store %struct.bnx2* %10, %struct.bnx2** %7, align 8
  %11 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %12 = load i32, i32* @PCI_D0, align 4
  %13 = call i32 @bnx2_set_power_state(%struct.bnx2* %11, i32 %12)
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* @BNX2_NUM_TESTS, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 4, %16
  %18 = trunc i64 %17 to i32
  %19 = call i32 @memset(i32* %14, i32 0, i32 %18)
  %20 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ETH_TEST_FL_OFFLINE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %99

26:                                               ; preds = %3
  %27 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %28 = call i32 @bnx2_netif_stop(%struct.bnx2* %27, i32 1)
  %29 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %30 = load i32, i32* @BNX2_DRV_MSG_CODE_DIAG, align 4
  %31 = call i32 @bnx2_reset_chip(%struct.bnx2* %29, i32 %30)
  %32 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %33 = call i32 @bnx2_free_skbs(%struct.bnx2* %32)
  %34 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %35 = call i64 @bnx2_test_registers(%struct.bnx2* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %26
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 1, i32* %39, align 4
  %40 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %41 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %42 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %37, %26
  %46 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %47 = call i64 @bnx2_test_memory(%struct.bnx2* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load i32*, i32** %6, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  store i32 1, i32* %51, align 4
  %52 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %53 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %54 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %49, %45
  %58 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %59 = call i32 @bnx2_test_loopback(%struct.bnx2* %58)
  %60 = load i32*, i32** %6, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  store i32 %59, i32* %61, align 4
  %62 = icmp ne i32 %59, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %65 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %66 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %63, %57
  %70 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %71 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @netif_running(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %69
  %76 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %77 = call i32 @bnx2_shutdown_chip(%struct.bnx2* %76)
  br label %83

78:                                               ; preds = %69
  %79 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %80 = call i32 @bnx2_init_nic(%struct.bnx2* %79, i32 1)
  %81 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %82 = call i32 @bnx2_netif_start(%struct.bnx2* %81, i32 1)
  br label %83

83:                                               ; preds = %78, %75
  store i32 0, i32* %8, align 4
  br label %84

84:                                               ; preds = %95, %83
  %85 = load i32, i32* %8, align 4
  %86 = icmp slt i32 %85, 7
  br i1 %86, label %87, label %98

87:                                               ; preds = %84
  %88 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %89 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %98

93:                                               ; preds = %87
  %94 = call i32 @msleep_interruptible(i32 1000)
  br label %95

95:                                               ; preds = %93
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %84

98:                                               ; preds = %92, %84
  br label %99

99:                                               ; preds = %98, %3
  %100 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %101 = call i64 @bnx2_test_nvram(%struct.bnx2* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %99
  %104 = load i32*, i32** %6, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 3
  store i32 1, i32* %105, align 4
  %106 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %107 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %108 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %103, %99
  %112 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %113 = call i64 @bnx2_test_intr(%struct.bnx2* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %111
  %116 = load i32*, i32** %6, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 4
  store i32 1, i32* %117, align 4
  %118 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %119 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %120 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %115, %111
  %124 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %125 = call i64 @bnx2_test_link(%struct.bnx2* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %123
  %128 = load i32*, i32** %6, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 5
  store i32 1, i32* %129, align 4
  %130 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %131 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %132 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %127, %123
  %136 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %137 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @netif_running(i32 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %135
  %142 = load %struct.bnx2*, %struct.bnx2** %7, align 8
  %143 = load i32, i32* @PCI_D3hot, align 4
  %144 = call i32 @bnx2_set_power_state(%struct.bnx2* %142, i32 %143)
  br label %145

145:                                              ; preds = %141, %135
  ret void
}

declare dso_local %struct.bnx2* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bnx2_set_power_state(%struct.bnx2*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @bnx2_netif_stop(%struct.bnx2*, i32) #1

declare dso_local i32 @bnx2_reset_chip(%struct.bnx2*, i32) #1

declare dso_local i32 @bnx2_free_skbs(%struct.bnx2*) #1

declare dso_local i64 @bnx2_test_registers(%struct.bnx2*) #1

declare dso_local i64 @bnx2_test_memory(%struct.bnx2*) #1

declare dso_local i32 @bnx2_test_loopback(%struct.bnx2*) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @bnx2_shutdown_chip(%struct.bnx2*) #1

declare dso_local i32 @bnx2_init_nic(%struct.bnx2*, i32) #1

declare dso_local i32 @bnx2_netif_start(%struct.bnx2*, i32) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i64 @bnx2_test_nvram(%struct.bnx2*) #1

declare dso_local i64 @bnx2_test_intr(%struct.bnx2*) #1

declare dso_local i64 @bnx2_test_link(%struct.bnx2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

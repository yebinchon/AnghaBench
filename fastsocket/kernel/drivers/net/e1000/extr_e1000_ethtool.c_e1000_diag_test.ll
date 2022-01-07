; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_ethtool.c_e1000_diag_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_ethtool.c_e1000_diag_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_test = type { i32 }
%struct.e1000_adapter = type { i32, %struct.e1000_hw }
%struct.e1000_hw = type { i8*, i8*, i32 }

@__E1000_TESTING = common dso_local global i32 0, align 4
@ETH_TEST_FL_OFFLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"offline testing starting\0A\00", align 1
@ETH_TEST_FL_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"online testing starting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_test*, i32*)* @e1000_diag_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_diag_test(%struct.net_device* %0, %struct.ethtool_test* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_test*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.e1000_adapter*, align 8
  %8 = alloca %struct.e1000_hw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_test* %1, %struct.ethtool_test** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %13)
  store %struct.e1000_adapter* %14, %struct.e1000_adapter** %7, align 8
  %15 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %16 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %15, i32 0, i32 1
  store %struct.e1000_hw* %16, %struct.e1000_hw** %8, align 8
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = call i32 @netif_running(%struct.net_device* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* @__E1000_TESTING, align 4
  %20 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %21 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %20, i32 0, i32 0
  %22 = call i32 @set_bit(i32 %19, i32* %21)
  %23 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %24 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ETH_TEST_FL_OFFLINE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %138

28:                                               ; preds = %3
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %30 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %10, align 4
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %33 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %11, align 8
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %36 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %12, align 8
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %39 = call i32 @e_info(%struct.e1000_hw* %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 4
  %43 = call i64 @e1000_link_test(%struct.e1000_adapter* %40, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %28
  %46 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %47 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %48 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %45, %28
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.net_device*, %struct.net_device** %4, align 8
  %56 = call i32 @dev_close(%struct.net_device* %55)
  br label %60

57:                                               ; preds = %51
  %58 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %59 = call i32 @e1000_reset(%struct.e1000_adapter* %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = call i64 @e1000_reg_test(%struct.e1000_adapter* %61, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %68 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %69 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %66, %60
  %73 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %74 = call i32 @e1000_reset(%struct.e1000_adapter* %73)
  %75 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = call i64 @e1000_eeprom_test(%struct.e1000_adapter* %75, i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %72
  %81 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %82 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %83 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %80, %72
  %87 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %88 = call i32 @e1000_reset(%struct.e1000_adapter* %87)
  %89 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %90 = load i32*, i32** %6, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  %92 = call i64 @e1000_intr_test(%struct.e1000_adapter* %89, i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %86
  %95 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %96 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %97 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %94, %86
  %101 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %102 = call i32 @e1000_reset(%struct.e1000_adapter* %101)
  %103 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %104 = call i32 @e1000_power_up_phy(%struct.e1000_adapter* %103)
  %105 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %106 = load i32*, i32** %6, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 3
  %108 = call i64 @e1000_loopback_test(%struct.e1000_adapter* %105, i32* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %100
  %111 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %112 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %113 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %110, %100
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %119 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  %120 = load i8*, i8** %11, align 8
  %121 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %122 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %121, i32 0, i32 1
  store i8* %120, i8** %122, align 8
  %123 = load i8*, i8** %12, align 8
  %124 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %125 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %124, i32 0, i32 0
  store i8* %123, i8** %125, align 8
  %126 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %127 = call i32 @e1000_reset(%struct.e1000_adapter* %126)
  %128 = load i32, i32* @__E1000_TESTING, align 4
  %129 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %130 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %129, i32 0, i32 0
  %131 = call i32 @clear_bit(i32 %128, i32* %130)
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %116
  %135 = load %struct.net_device*, %struct.net_device** %4, align 8
  %136 = call i32 @dev_open(%struct.net_device* %135)
  br label %137

137:                                              ; preds = %134, %116
  br label %165

138:                                              ; preds = %3
  %139 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %140 = call i32 @e_info(%struct.e1000_hw* %139, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %141 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %142 = load i32*, i32** %6, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 4
  %144 = call i64 @e1000_link_test(%struct.e1000_adapter* %141, i32* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %138
  %147 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %148 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %149 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %146, %138
  %153 = load i32*, i32** %6, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  store i32 0, i32* %154, align 4
  %155 = load i32*, i32** %6, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  store i32 0, i32* %156, align 4
  %157 = load i32*, i32** %6, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 2
  store i32 0, i32* %158, align 4
  %159 = load i32*, i32** %6, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 3
  store i32 0, i32* %160, align 4
  %161 = load i32, i32* @__E1000_TESTING, align 4
  %162 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %163 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %162, i32 0, i32 0
  %164 = call i32 @clear_bit(i32 %161, i32* %163)
  br label %165

165:                                              ; preds = %152, %137
  %166 = call i32 @msleep_interruptible(i32 4000)
  ret void
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @e_info(%struct.e1000_hw*, i8*) #1

declare dso_local i64 @e1000_link_test(%struct.e1000_adapter*, i32*) #1

declare dso_local i32 @dev_close(%struct.net_device*) #1

declare dso_local i32 @e1000_reset(%struct.e1000_adapter*) #1

declare dso_local i64 @e1000_reg_test(%struct.e1000_adapter*, i32*) #1

declare dso_local i64 @e1000_eeprom_test(%struct.e1000_adapter*, i32*) #1

declare dso_local i64 @e1000_intr_test(%struct.e1000_adapter*, i32*) #1

declare dso_local i32 @e1000_power_up_phy(%struct.e1000_adapter*) #1

declare dso_local i64 @e1000_loopback_test(%struct.e1000_adapter*, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @dev_open(%struct.net_device*) #1

declare dso_local i32 @msleep_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

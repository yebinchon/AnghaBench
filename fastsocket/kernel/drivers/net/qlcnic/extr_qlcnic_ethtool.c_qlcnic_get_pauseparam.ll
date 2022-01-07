; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ethtool.c_qlcnic_get_pauseparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ethtool.c_qlcnic_get_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i32, i32 }
%struct.qlcnic_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@QLCNIC_GBE = common dso_local global i64 0, align 8
@QLCNIC_NIU_MAX_GBE_PORTS = common dso_local global i32 0, align 4
@QLCNIC_NIU_GB_PAUSE_CTL = common dso_local global i32 0, align 4
@QLCNIC_XGBE = common dso_local global i64 0, align 8
@QLCNIC_NIU_MAX_XG_PORTS = common dso_local global i32 0, align 4
@QLCNIC_NIU_XG_PAUSE_CTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unknown board type: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_pauseparam*)* @qlcnic_get_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_get_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.qlcnic_adapter* %9, %struct.qlcnic_adapter** %5, align 8
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %16 = call i64 @qlcnic_83xx_check(%struct.qlcnic_adapter* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %20 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %21 = call i32 @qlcnic_83xx_get_pauseparam(%struct.qlcnic_adapter* %19, %struct.ethtool_pauseparam* %20)
  br label %136

22:                                               ; preds = %2
  %23 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %24 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @QLCNIC_GBE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %85

30:                                               ; preds = %22
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @QLCNIC_NIU_MAX_GBE_PORTS, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %30
  br label %136

38:                                               ; preds = %33
  %39 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @QLCNIC_NIU_GB_MAC_CONFIG_0(i32 %40)
  %42 = call i32 @QLCRD32(%struct.qlcnic_adapter* %39, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @qlcnic_gb_get_rx_flowctl(i32 %43)
  %45 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %46 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %48 = load i32, i32* @QLCNIC_NIU_GB_PAUSE_CTL, align 4
  %49 = call i32 @QLCRD32(%struct.qlcnic_adapter* %47, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %6, align 4
  switch i32 %50, label %76 [
    i32 0, label %51
    i32 1, label %59
    i32 2, label %67
    i32 3, label %75
  ]

51:                                               ; preds = %38
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @qlcnic_gb_get_gb0_mask(i32 %52)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %58 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  br label %84

59:                                               ; preds = %38
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @qlcnic_gb_get_gb1_mask(i32 %60)
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %66 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %84

67:                                               ; preds = %38
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @qlcnic_gb_get_gb2_mask(i32 %68)
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %74 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %84

75:                                               ; preds = %38
  br label %76

76:                                               ; preds = %38, %75
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @qlcnic_gb_get_gb3_mask(i32 %77)
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %83 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %76, %67, %59, %51
  br label %136

85:                                               ; preds = %22
  %86 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %87 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @QLCNIC_XGBE, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %126

93:                                               ; preds = %85
  %94 = load i32, i32* %6, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @QLCNIC_NIU_MAX_XG_PORTS, align 4
  %99 = icmp sgt i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96, %93
  br label %136

101:                                              ; preds = %96
  %102 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %103 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %102, i32 0, i32 0
  store i32 1, i32* %103, align 4
  %104 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %105 = load i32, i32* @QLCNIC_NIU_XG_PAUSE_CTL, align 4
  %106 = call i32 @QLCRD32(%struct.qlcnic_adapter* %104, i32 %105)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %101
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @qlcnic_xg_get_xg0_mask(i32 %110)
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %116 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  br label %125

117:                                              ; preds = %101
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @qlcnic_xg_get_xg1_mask(i32 %118)
  %120 = icmp ne i32 %119, 0
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  %123 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %124 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  br label %125

125:                                              ; preds = %117, %109
  br label %135

126:                                              ; preds = %85
  %127 = load %struct.net_device*, %struct.net_device** %3, align 8
  %128 = getelementptr inbounds %struct.net_device, %struct.net_device* %127, i32 0, i32 0
  %129 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %130 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %129, i32 0, i32 0
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @dev_err(i32* %128, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %133)
  br label %135

135:                                              ; preds = %126, %125
  br label %136

136:                                              ; preds = %18, %37, %100, %135, %84
  ret void
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @qlcnic_83xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_get_pauseparam(%struct.qlcnic_adapter*, %struct.ethtool_pauseparam*) #1

declare dso_local i32 @QLCRD32(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @QLCNIC_NIU_GB_MAC_CONFIG_0(i32) #1

declare dso_local i32 @qlcnic_gb_get_rx_flowctl(i32) #1

declare dso_local i32 @qlcnic_gb_get_gb0_mask(i32) #1

declare dso_local i32 @qlcnic_gb_get_gb1_mask(i32) #1

declare dso_local i32 @qlcnic_gb_get_gb2_mask(i32) #1

declare dso_local i32 @qlcnic_gb_get_gb3_mask(i32) #1

declare dso_local i32 @qlcnic_xg_get_xg0_mask(i32) #1

declare dso_local i32 @qlcnic_xg_get_xg1_mask(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

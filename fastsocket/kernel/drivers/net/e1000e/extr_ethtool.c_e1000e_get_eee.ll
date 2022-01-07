; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ethtool.c_e1000e_get_eee.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ethtool.c_e1000e_get_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eee = type { i32, i32, i32, i32, i8*, i8*, i32 }
%struct.e1000_adapter = type { i32, i32, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@FLAG2_HAS_EEE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@I82579_EEE_CAPABILITY = common dso_local global i32 0, align 4
@I82579_EEE_LP_ABILITY = common dso_local global i32 0, align 4
@I82579_EEE_PCS_STATUS = common dso_local global i32 0, align 4
@I217_EEE_CAPABILITY = common dso_local global i32 0, align 4
@I217_EEE_LP_ABILITY = common dso_local global i32 0, align 4
@I217_EEE_PCS_STATUS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@E1000_EEE_TX_LPI_RCVD = common dso_local global i32 0, align 4
@E1000_EEE_RX_LPI_RCVD = common dso_local global i32 0, align 4
@LPIC = common dso_local global i32 0, align 4
@E1000_LPIC_LPIET_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eee*)* @e1000e_get_eee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000e_get_eee(%struct.net_device* %0, %struct.ethtool_eee* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_eee*, align 8
  %6 = alloca %struct.e1000_adapter*, align 8
  %7 = alloca %struct.e1000_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_eee* %1, %struct.ethtool_eee** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %13)
  store %struct.e1000_adapter* %14, %struct.e1000_adapter** %6, align 8
  %15 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %16 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %15, i32 0, i32 2
  store %struct.e1000_hw* %16, %struct.e1000_hw** %7, align 8
  %17 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %18 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @FLAG2_HAS_EEE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %140

26:                                               ; preds = %2
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %28 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %39 [
    i32 129, label %31
    i32 128, label %35
  ]

31:                                               ; preds = %26
  %32 = load i32, i32* @I82579_EEE_CAPABILITY, align 4
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* @I82579_EEE_LP_ABILITY, align 4
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* @I82579_EEE_PCS_STATUS, align 4
  store i32 %34, i32* %10, align 4
  br label %42

35:                                               ; preds = %26
  %36 = load i32, i32* @I217_EEE_CAPABILITY, align 4
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* @I217_EEE_LP_ABILITY, align 4
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* @I217_EEE_PCS_STATUS, align 4
  store i32 %38, i32* %10, align 4
  br label %42

39:                                               ; preds = %26
  %40 = load i32, i32* @EOPNOTSUPP, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %140

42:                                               ; preds = %35, %31
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %44 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %46, align 8
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %49 = bitcast %struct.e1000_hw* %48 to %struct.e1000_hw.1*
  %50 = call i64 %47(%struct.e1000_hw.1* %49)
  store i64 %50, i64* %12, align 8
  %51 = load i64, i64* %12, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %42
  %54 = load i32, i32* @EBUSY, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %140

56:                                               ; preds = %42
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i64 @e1000_read_emi_reg_locked(%struct.e1000_hw* %57, i32 %58, i32* %11)
  store i64 %59, i64* %12, align 8
  %60 = load i64, i64* %12, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %97

63:                                               ; preds = %56
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @mmd_eee_cap_to_ethtool_sup_t(i32 %64)
  %66 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %67 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %66, i32 0, i32 6
  store i32 %65, i32* %67, align 8
  %68 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %69 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @mmd_eee_adv_to_ethtool_adv_t(i32 %70)
  %72 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %73 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %72, i32 0, i32 5
  store i8* %71, i8** %73, align 8
  %74 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i64 @e1000_read_emi_reg_locked(%struct.e1000_hw* %74, i32 %75, i32* %11)
  store i64 %76, i64* %12, align 8
  %77 = load i64, i64* %12, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %63
  br label %97

80:                                               ; preds = %63
  %81 = load i32, i32* %11, align 4
  %82 = call i8* @mmd_eee_adv_to_ethtool_adv_t(i32 %81)
  %83 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %84 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %83, i32 0, i32 4
  store i8* %82, i8** %84, align 8
  %85 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i64 @e1000_read_emi_reg_locked(%struct.e1000_hw* %85, i32 %86, i32* %11)
  store i64 %87, i64* %12, align 8
  %88 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %89 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %91, 129
  br i1 %92, label %93, label %96

93:                                               ; preds = %80
  %94 = load i32, i32* %11, align 4
  %95 = shl i32 %94, 8
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %93, %80
  br label %97

97:                                               ; preds = %96, %79, %62
  %98 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %99 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %101, align 8
  %103 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %104 = bitcast %struct.e1000_hw* %103 to %struct.e1000_hw.0*
  %105 = call i32 %102(%struct.e1000_hw.0* %104)
  %106 = load i64, i64* %12, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %97
  %109 = load i32, i32* @ENODATA, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %140

111:                                              ; preds = %97
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* @E1000_EEE_TX_LPI_RCVD, align 4
  %114 = load i32, i32* @E1000_EEE_RX_LPI_RCVD, align 4
  %115 = or i32 %113, %114
  %116 = and i32 %112, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %111
  %119 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %120 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %119, i32 0, i32 0
  store i32 1, i32* %120, align 8
  br label %121

121:                                              ; preds = %118, %111
  %122 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %123 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %131 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %133 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %132, i32 0, i32 2
  store i32 1, i32* %133, align 8
  %134 = load i32, i32* @LPIC, align 4
  %135 = call i32 @er32(i32 %134)
  %136 = load i32, i32* @E1000_LPIC_LPIET_SHIFT, align 4
  %137 = ashr i32 %135, %136
  %138 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %139 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 4
  store i32 0, i32* %3, align 4
  br label %140

140:                                              ; preds = %121, %108, %53, %39, %23
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @e1000_read_emi_reg_locked(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @mmd_eee_cap_to_ethtool_sup_t(i32) #1

declare dso_local i8* @mmd_eee_adv_to_ethtool_adv_t(i32) #1

declare dso_local i32 @er32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

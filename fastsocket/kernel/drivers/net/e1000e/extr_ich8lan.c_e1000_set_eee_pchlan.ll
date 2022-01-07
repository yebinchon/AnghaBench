; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_set_eee_pchlan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_set_eee_pchlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.TYPE_4__ = type { %struct.e1000_dev_spec_ich8lan }
%struct.e1000_dev_spec_ich8lan = type { i32, i32 }

@I82579_EEE_LP_ABILITY = common dso_local global i32 0, align 4
@I82579_EEE_PCS_STATUS = common dso_local global i32 0, align 4
@I82579_EEE_ADVERTISEMENT = common dso_local global i32 0, align 4
@I217_EEE_LP_ABILITY = common dso_local global i32 0, align 4
@I217_EEE_PCS_STATUS = common dso_local global i32 0, align 4
@I217_EEE_ADVERTISEMENT = common dso_local global i32 0, align 4
@I82579_LPI_CTRL = common dso_local global i32 0, align 4
@I82579_LPI_CTRL_ENABLE_MASK = common dso_local global i32 0, align 4
@I82579_EEE_1000_SUPPORTED = common dso_local global i32 0, align 4
@I82579_LPI_CTRL_1000_ENABLE = common dso_local global i32 0, align 4
@I82579_EEE_100_SUPPORTED = common dso_local global i32 0, align 4
@MII_LPA = common dso_local global i32 0, align 4
@LPA_100FULL = common dso_local global i32 0, align 4
@I82579_LPI_CTRL_100_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_set_eee_pchlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_set_eee_pchlan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_dev_spec_ich8lan*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.e1000_dev_spec_ich8lan* %14, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %27 [
    i32 129, label %19
    i32 128, label %23
  ]

19:                                               ; preds = %1
  %20 = load i32, i32* @I82579_EEE_LP_ABILITY, align 4
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @I82579_EEE_PCS_STATUS, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @I82579_EEE_ADVERTISEMENT, align 4
  store i32 %22, i32* %9, align 4
  br label %28

23:                                               ; preds = %1
  %24 = load i32, i32* @I217_EEE_LP_ABILITY, align 4
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @I217_EEE_PCS_STATUS, align 4
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @I217_EEE_ADVERTISEMENT, align 4
  store i32 %26, i32* %9, align 4
  br label %28

27:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %138

28:                                               ; preds = %23, %19
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %30 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %32, align 8
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %35 = bitcast %struct.e1000_hw* %34 to %struct.e1000_hw.1*
  %36 = call i64 %33(%struct.e1000_hw.1* %35)
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i64, i64* %5, align 8
  store i64 %40, i64* %2, align 8
  br label %138

41:                                               ; preds = %28
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %43 = load i32, i32* @I82579_LPI_CTRL, align 4
  %44 = call i64 @e1e_rphy_locked(%struct.e1000_hw* %42, i32 %43, i32* %10)
  store i64 %44, i64* %5, align 8
  %45 = load i64, i64* %5, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %128

48:                                               ; preds = %41
  %49 = load i32, i32* @I82579_LPI_CTRL_ENABLE_MASK, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %10, align 4
  %53 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %54 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %116, label %57

57:                                               ; preds = %48
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %61 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %60, i32 0, i32 0
  %62 = call i64 @e1000_read_emi_reg_locked(%struct.e1000_hw* %58, i32 %59, i32* %61)
  store i64 %62, i64* %5, align 8
  %63 = load i64, i64* %5, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %128

66:                                               ; preds = %57
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i64 @e1000_read_emi_reg_locked(%struct.e1000_hw* %67, i32 %68, i32* %8)
  store i64 %69, i64* %5, align 8
  %70 = load i64, i64* %5, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %128

73:                                               ; preds = %66
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %76 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %74, %77
  %79 = load i32, i32* @I82579_EEE_1000_SUPPORTED, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %73
  %83 = load i32, i32* @I82579_LPI_CTRL_1000_ENABLE, align 4
  %84 = load i32, i32* %10, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %82, %73
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %89 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %87, %90
  %92 = load i32, i32* @I82579_EEE_100_SUPPORTED, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %115

95:                                               ; preds = %86
  %96 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %97 = load i32, i32* @MII_LPA, align 4
  %98 = call i64 @e1e_rphy_locked(%struct.e1000_hw* %96, i32 %97, i32* %11)
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* @LPA_100FULL, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %95
  %104 = load i32, i32* @I82579_LPI_CTRL_100_ENABLE, align 4
  %105 = load i32, i32* %10, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %10, align 4
  br label %114

107:                                              ; preds = %95
  %108 = load i32, i32* @I82579_EEE_100_SUPPORTED, align 4
  %109 = xor i32 %108, -1
  %110 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %4, align 8
  %111 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, %109
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %107, %103
  br label %115

115:                                              ; preds = %114, %86
  br label %116

116:                                              ; preds = %115, %48
  %117 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %118 = load i32, i32* %7, align 4
  %119 = call i64 @e1000_read_emi_reg_locked(%struct.e1000_hw* %117, i32 %118, i32* %11)
  store i64 %119, i64* %5, align 8
  %120 = load i64, i64* %5, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  br label %128

123:                                              ; preds = %116
  %124 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %125 = load i32, i32* @I82579_LPI_CTRL, align 4
  %126 = load i32, i32* %10, align 4
  %127 = call i64 @e1e_wphy_locked(%struct.e1000_hw* %124, i32 %125, i32 %126)
  store i64 %127, i64* %5, align 8
  br label %128

128:                                              ; preds = %123, %122, %72, %65, %47
  %129 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %130 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %132, align 8
  %134 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %135 = bitcast %struct.e1000_hw* %134 to %struct.e1000_hw.0*
  %136 = call i32 %133(%struct.e1000_hw.0* %135)
  %137 = load i64, i64* %5, align 8
  store i64 %137, i64* %2, align 8
  br label %138

138:                                              ; preds = %128, %39, %27
  %139 = load i64, i64* %2, align 8
  ret i64 %139
}

declare dso_local i64 @e1e_rphy_locked(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000_read_emi_reg_locked(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1e_wphy_locked(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

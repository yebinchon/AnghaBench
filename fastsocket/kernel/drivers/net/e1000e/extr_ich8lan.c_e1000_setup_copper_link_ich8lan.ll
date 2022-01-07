; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_setup_copper_link_ich8lan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_setup_copper_link_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_SLU = common dso_local global i32 0, align 4
@E1000_CTRL_FRCSPD = common dso_local global i32 0, align 4
@E1000_CTRL_FRCDPX = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_TIMEOUTS = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_INBAND_PARAM = common dso_local global i32 0, align 4
@IFE_PHY_MDIX_CONTROL = common dso_local global i32 0, align 4
@IFE_PMC_AUTO_MDIX = common dso_local global i32 0, align 4
@IFE_PMC_FORCE_MDIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_setup_copper_link_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_setup_copper_link_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = load i32, i32* @CTRL, align 4
  %8 = call i32 @er32(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @E1000_CTRL_SLU, align 4
  %10 = load i32, i32* %4, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @E1000_CTRL_FRCSPD, align 4
  %13 = load i32, i32* @E1000_CTRL_FRCDPX, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @CTRL, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @ew32(i32 %18, i32 %19)
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %22 = load i32, i32* @E1000_KMRNCTRLSTA_TIMEOUTS, align 4
  %23 = call i64 @e1000e_write_kmrn_reg(%struct.e1000_hw* %21, i32 %22, i32 65535)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i64, i64* %5, align 8
  store i64 %27, i64* %2, align 8
  br label %121

28:                                               ; preds = %1
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %30 = load i32, i32* @E1000_KMRNCTRLSTA_INBAND_PARAM, align 4
  %31 = call i64 @e1000e_read_kmrn_reg(%struct.e1000_hw* %29, i32 %30, i32* %6)
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i64, i64* %5, align 8
  store i64 %35, i64* %2, align 8
  br label %121

36:                                               ; preds = %28
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, 63
  store i32 %38, i32* %6, align 4
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %40 = load i32, i32* @E1000_KMRNCTRLSTA_INBAND_PARAM, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @e1000e_write_kmrn_reg(%struct.e1000_hw* %39, i32 %40, i32 %41)
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %5, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i64, i64* %5, align 8
  store i64 %46, i64* %2, align 8
  br label %121

47:                                               ; preds = %36
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %49 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %117 [
    i32 128, label %52
    i32 130, label %60
    i32 132, label %60
    i32 133, label %68
    i32 131, label %68
    i32 129, label %76
  ]

52:                                               ; preds = %47
  %53 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %54 = call i64 @e1000e_copper_link_setup_igp(%struct.e1000_hw* %53)
  store i64 %54, i64* %5, align 8
  %55 = load i64, i64* %5, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i64, i64* %5, align 8
  store i64 %58, i64* %2, align 8
  br label %121

59:                                               ; preds = %52
  br label %118

60:                                               ; preds = %47, %47
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %62 = call i64 @e1000e_copper_link_setup_m88(%struct.e1000_hw* %61)
  store i64 %62, i64* %5, align 8
  %63 = load i64, i64* %5, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i64, i64* %5, align 8
  store i64 %66, i64* %2, align 8
  br label %121

67:                                               ; preds = %60
  br label %118

68:                                               ; preds = %47, %47
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %70 = call i64 @e1000_copper_link_setup_82577(%struct.e1000_hw* %69)
  store i64 %70, i64* %5, align 8
  %71 = load i64, i64* %5, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i64, i64* %5, align 8
  store i64 %74, i64* %2, align 8
  br label %121

75:                                               ; preds = %68
  br label %118

76:                                               ; preds = %47
  %77 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %78 = load i32, i32* @IFE_PHY_MDIX_CONTROL, align 4
  %79 = call i64 @e1e_rphy(%struct.e1000_hw* %77, i32 %78, i32* %6)
  store i64 %79, i64* %5, align 8
  %80 = load i64, i64* %5, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i64, i64* %5, align 8
  store i64 %83, i64* %2, align 8
  br label %121

84:                                               ; preds = %76
  %85 = load i32, i32* @IFE_PMC_AUTO_MDIX, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %6, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %6, align 4
  %89 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %90 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  switch i32 %92, label %103 [
    i32 1, label %93
    i32 2, label %98
    i32 0, label %102
  ]

93:                                               ; preds = %84
  %94 = load i32, i32* @IFE_PMC_FORCE_MDIX, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %6, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %6, align 4
  br label %107

98:                                               ; preds = %84
  %99 = load i32, i32* @IFE_PMC_FORCE_MDIX, align 4
  %100 = load i32, i32* %6, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %6, align 4
  br label %107

102:                                              ; preds = %84
  br label %103

103:                                              ; preds = %84, %102
  %104 = load i32, i32* @IFE_PMC_AUTO_MDIX, align 4
  %105 = load i32, i32* %6, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %103, %98, %93
  %108 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %109 = load i32, i32* @IFE_PHY_MDIX_CONTROL, align 4
  %110 = load i32, i32* %6, align 4
  %111 = call i64 @e1e_wphy(%struct.e1000_hw* %108, i32 %109, i32 %110)
  store i64 %111, i64* %5, align 8
  %112 = load i64, i64* %5, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = load i64, i64* %5, align 8
  store i64 %115, i64* %2, align 8
  br label %121

116:                                              ; preds = %107
  br label %118

117:                                              ; preds = %47
  br label %118

118:                                              ; preds = %117, %116, %75, %67, %59
  %119 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %120 = call i64 @e1000e_setup_copper_link(%struct.e1000_hw* %119)
  store i64 %120, i64* %2, align 8
  br label %121

121:                                              ; preds = %118, %114, %82, %73, %65, %57, %45, %34, %26
  %122 = load i64, i64* %2, align 8
  ret i64 %122
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i64 @e1000e_write_kmrn_reg(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @e1000e_read_kmrn_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000e_copper_link_setup_igp(%struct.e1000_hw*) #1

declare dso_local i64 @e1000e_copper_link_setup_m88(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_copper_link_setup_82577(%struct.e1000_hw*) #1

declare dso_local i64 @e1e_rphy(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1e_wphy(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @e1000e_setup_copper_link(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

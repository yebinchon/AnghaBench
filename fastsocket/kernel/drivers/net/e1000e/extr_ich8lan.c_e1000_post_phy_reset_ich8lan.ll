; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_post_phy_reset_ich8lan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_post_phy_reset_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.2*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque
%struct.TYPE_4__ = type { i32 }

@BM_PORT_GEN_CFG = common dso_local global i32 0, align 4
@BM_WUC_HOST_WU_BIT = common dso_local global i32 0, align 4
@FWSM = common dso_local global i32 0, align 4
@E1000_ICH_FWSM_FW_VALID = common dso_local global i32 0, align 4
@I82579_LPI_UPDATE_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_post_phy_reset_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_post_phy_reset_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i64 0, i64* %4, align 8
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  %10 = load i64 (%struct.e1000_hw.2*)*, i64 (%struct.e1000_hw.2*)** %9, align 8
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %12 = bitcast %struct.e1000_hw* %11 to %struct.e1000_hw.2*
  %13 = call i64 %10(%struct.e1000_hw.2* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %109

16:                                               ; preds = %1
  %17 = call i32 @usleep_range(i32 10000, i32 20000)
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %19 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %38 [
    i32 128, label %22
    i32 129, label %30
  ]

22:                                               ; preds = %16
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %24 = call i64 @e1000_hv_phy_workarounds_ich8lan(%struct.e1000_hw* %23)
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i64, i64* %4, align 8
  store i64 %28, i64* %2, align 8
  br label %109

29:                                               ; preds = %22
  br label %39

30:                                               ; preds = %16
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %32 = call i64 @e1000_lv_phy_workarounds_ich8lan(%struct.e1000_hw* %31)
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* %4, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i64, i64* %4, align 8
  store i64 %36, i64* %2, align 8
  br label %109

37:                                               ; preds = %30
  br label %39

38:                                               ; preds = %16
  br label %39

39:                                               ; preds = %38, %37, %29
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %41 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sge i32 %43, 128
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %47 = load i32, i32* @BM_PORT_GEN_CFG, align 4
  %48 = call i32 @e1e_rphy(%struct.e1000_hw* %46, i32 %47, i32* %5)
  %49 = load i32, i32* @BM_WUC_HOST_WU_BIT, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %54 = load i32, i32* @BM_PORT_GEN_CFG, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @e1e_wphy(%struct.e1000_hw* %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %45, %39
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %59 = call i64 @e1000_sw_lcd_config_ich8lan(%struct.e1000_hw* %58)
  store i64 %59, i64* %4, align 8
  %60 = load i64, i64* %4, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i64, i64* %4, align 8
  store i64 %63, i64* %2, align 8
  br label %109

64:                                               ; preds = %57
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %66 = call i64 @e1000_oem_bits_config_ich8lan(%struct.e1000_hw* %65, i32 1)
  store i64 %66, i64* %4, align 8
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %68 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 129
  br i1 %71, label %72, label %107

72:                                               ; preds = %64
  %73 = load i32, i32* @FWSM, align 4
  %74 = call i32 @er32(i32 %73)
  %75 = load i32, i32* @E1000_ICH_FWSM_FW_VALID, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %72
  %79 = call i32 @usleep_range(i32 10000, i32 20000)
  %80 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %81 = call i32 @e1000_gate_hw_phy_config_ich8lan(%struct.e1000_hw* %80, i32 0)
  br label %82

82:                                               ; preds = %78, %72
  %83 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %84 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %86, align 8
  %88 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %89 = bitcast %struct.e1000_hw* %88 to %struct.e1000_hw.1*
  %90 = call i64 %87(%struct.e1000_hw.1* %89)
  store i64 %90, i64* %4, align 8
  %91 = load i64, i64* %4, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %82
  %94 = load i64, i64* %4, align 8
  store i64 %94, i64* %2, align 8
  br label %109

95:                                               ; preds = %82
  %96 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %97 = load i32, i32* @I82579_LPI_UPDATE_TIMER, align 4
  %98 = call i64 @e1000_write_emi_reg_locked(%struct.e1000_hw* %96, i32 %97, i32 4999)
  store i64 %98, i64* %4, align 8
  %99 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %100 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %102, align 8
  %104 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %105 = bitcast %struct.e1000_hw* %104 to %struct.e1000_hw.0*
  %106 = call i32 %103(%struct.e1000_hw.0* %105)
  br label %107

107:                                              ; preds = %95, %64
  %108 = load i64, i64* %4, align 8
  store i64 %108, i64* %2, align 8
  br label %109

109:                                              ; preds = %107, %93, %62, %35, %27, %15
  %110 = load i64, i64* %2, align 8
  ret i64 %110
}

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @e1000_hv_phy_workarounds_ich8lan(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_lv_phy_workarounds_ich8lan(%struct.e1000_hw*) #1

declare dso_local i32 @e1e_rphy(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @e1e_wphy(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @e1000_sw_lcd_config_ich8lan(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_oem_bits_config_ich8lan(%struct.e1000_hw*, i32) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @e1000_gate_hw_phy_config_ich8lan(%struct.e1000_hw*, i32) #1

declare dso_local i64 @e1000_write_emi_reg_locked(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

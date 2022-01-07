; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_k1_workaround_lv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_k1_workaround_lv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@e1000_pch2lan = common dso_local global i64 0, align 8
@HV_M_STATUS = common dso_local global i32 0, align 4
@HV_M_STATUS_LINK_UP = common dso_local global i32 0, align 4
@HV_M_STATUS_AUTONEG_COMPLETE = common dso_local global i32 0, align 4
@FEXTNVM4 = common dso_local global i32 0, align 4
@E1000_FEXTNVM4_BEACON_DURATION_MASK = common dso_local global i32 0, align 4
@I82579_LPI_CTRL = common dso_local global i32 0, align 4
@HV_M_STATUS_SPEED_1000 = common dso_local global i32 0, align 4
@E1000_FEXTNVM4_BEACON_DURATION_8USEC = common dso_local global i32 0, align 4
@I82579_LPI_CTRL_FORCE_PLL_LOCK_COUNT = common dso_local global i32 0, align 4
@HV_PM_CTRL = common dso_local global i32 0, align 4
@HV_PM_CTRL_PLL_STOP_IN_K1_GIGA = common dso_local global i32 0, align 4
@E1000_FEXTNVM4_BEACON_DURATION_16USEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_k1_workaround_lv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_k1_workaround_lv(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @e1000_pch2lan, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %99

16:                                               ; preds = %1
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %18 = load i32, i32* @HV_M_STATUS, align 4
  %19 = call i64 @e1e_rphy(%struct.e1000_hw* %17, i32 %18, i32* %5)
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i64, i64* %4, align 8
  store i64 %23, i64* %2, align 8
  br label %99

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @HV_M_STATUS_LINK_UP, align 4
  %27 = load i32, i32* @HV_M_STATUS_AUTONEG_COMPLETE, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = load i32, i32* @HV_M_STATUS_LINK_UP, align 4
  %31 = load i32, i32* @HV_M_STATUS_AUTONEG_COMPLETE, align 4
  %32 = or i32 %30, %31
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %97

34:                                               ; preds = %24
  %35 = load i32, i32* @FEXTNVM4, align 4
  %36 = call i32 @er32(i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* @E1000_FEXTNVM4_BEACON_DURATION_MASK, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %42 = load i32, i32* @I82579_LPI_CTRL, align 4
  %43 = call i64 @e1e_rphy(%struct.e1000_hw* %41, i32 %42, i32* %7)
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %4, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %34
  %47 = load i64, i64* %4, align 8
  store i64 %47, i64* %2, align 8
  br label %99

48:                                               ; preds = %34
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @HV_M_STATUS_SPEED_1000, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %82

53:                                               ; preds = %48
  %54 = load i32, i32* @E1000_FEXTNVM4_BEACON_DURATION_8USEC, align 4
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* @I82579_LPI_CTRL_FORCE_PLL_LOCK_COUNT, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %7, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %7, align 4
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %62 = load i32, i32* @HV_PM_CTRL, align 4
  %63 = call i64 @e1e_rphy(%struct.e1000_hw* %61, i32 %62, i32* %8)
  store i64 %63, i64* %4, align 8
  %64 = load i64, i64* %4, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %53
  %67 = load i64, i64* %4, align 8
  store i64 %67, i64* %2, align 8
  br label %99

68:                                               ; preds = %53
  %69 = load i32, i32* @HV_PM_CTRL_PLL_STOP_IN_K1_GIGA, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %8, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %8, align 4
  %73 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %74 = load i32, i32* @HV_PM_CTRL, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i64 @e1e_wphy(%struct.e1000_hw* %73, i32 %74, i32 %75)
  store i64 %76, i64* %4, align 8
  %77 = load i64, i64* %4, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %68
  %80 = load i64, i64* %4, align 8
  store i64 %80, i64* %2, align 8
  br label %99

81:                                               ; preds = %68
  br label %89

82:                                               ; preds = %48
  %83 = load i32, i32* @E1000_FEXTNVM4_BEACON_DURATION_16USEC, align 4
  %84 = load i32, i32* %6, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* @I82579_LPI_CTRL_FORCE_PLL_LOCK_COUNT, align 4
  %87 = load i32, i32* %7, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %82, %81
  %90 = load i32, i32* @FEXTNVM4, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @ew32(i32 %90, i32 %91)
  %93 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %94 = load i32, i32* @I82579_LPI_CTRL, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i64 @e1e_wphy(%struct.e1000_hw* %93, i32 %94, i32 %95)
  store i64 %96, i64* %4, align 8
  br label %97

97:                                               ; preds = %89, %24
  %98 = load i64, i64* %4, align 8
  store i64 %98, i64* %2, align 8
  br label %99

99:                                               ; preds = %97, %79, %66, %46, %22, %15
  %100 = load i64, i64* %2, align 8
  ret i64 %100
}

declare dso_local i64 @e1e_rphy(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i64 @e1e_wphy(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @ew32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

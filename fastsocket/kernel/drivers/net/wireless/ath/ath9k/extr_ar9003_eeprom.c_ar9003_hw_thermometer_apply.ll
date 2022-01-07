; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_thermometer_apply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_thermometer_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AR_PHY_65NM_CH0_RXTX4 = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH0_RXTX4_THERM_ON_OVR = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH1_RXTX4 = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH2_RXTX4 = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH0_RXTX4_THERM_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ar9003_hw_thermometer_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_thermometer_apply(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %5 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %6 = call i32 @ar9003_hw_get_thermometer(%struct.ath_hw* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 0, i32 1
  store i32 %10, i32* %4, align 4
  %11 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %12 = load i32, i32* @AR_PHY_65NM_CH0_RXTX4, align 4
  %13 = load i32, i32* @AR_PHY_65NM_CH0_RXTX4_THERM_ON_OVR, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %11, i32 %12, i32 %13, i32 %14)
  %16 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %17 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @BIT(i32 1)
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %25 = load i32, i32* @AR_PHY_65NM_CH1_RXTX4, align 4
  %26 = load i32, i32* @AR_PHY_65NM_CH0_RXTX4_THERM_ON_OVR, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %24, i32 %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %23, %1
  %30 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %31 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @BIT(i32 2)
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %39 = load i32, i32* @AR_PHY_65NM_CH2_RXTX4, align 4
  %40 = load i32, i32* @AR_PHY_65NM_CH0_RXTX4_THERM_ON_OVR, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %38, i32 %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %37, %29
  %44 = load i32, i32* %3, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %51

47:                                               ; preds = %43
  %48 = load i32, i32* %3, align 4
  %49 = icmp eq i32 %48, 0
  %50 = zext i1 %49 to i32
  br label %51

51:                                               ; preds = %47, %46
  %52 = phi i32 [ 0, %46 ], [ %50, %47 ]
  store i32 %52, i32* %4, align 4
  %53 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %54 = load i32, i32* @AR_PHY_65NM_CH0_RXTX4, align 4
  %55 = load i32, i32* @AR_PHY_65NM_CH0_RXTX4_THERM_ON, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %53, i32 %54, i32 %55, i32 %56)
  %58 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %59 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @BIT(i32 1)
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %51
  %66 = load i32, i32* %3, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %73

69:                                               ; preds = %65
  %70 = load i32, i32* %3, align 4
  %71 = icmp eq i32 %70, 1
  %72 = zext i1 %71 to i32
  br label %73

73:                                               ; preds = %69, %68
  %74 = phi i32 [ 0, %68 ], [ %72, %69 ]
  store i32 %74, i32* %4, align 4
  %75 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %76 = load i32, i32* @AR_PHY_65NM_CH1_RXTX4, align 4
  %77 = load i32, i32* @AR_PHY_65NM_CH0_RXTX4_THERM_ON, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %75, i32 %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %73, %51
  %81 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %82 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @BIT(i32 2)
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %80
  %89 = load i32, i32* %3, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  br label %96

92:                                               ; preds = %88
  %93 = load i32, i32* %3, align 4
  %94 = icmp eq i32 %93, 2
  %95 = zext i1 %94 to i32
  br label %96

96:                                               ; preds = %92, %91
  %97 = phi i32 [ 0, %91 ], [ %95, %92 ]
  store i32 %97, i32* %4, align 4
  %98 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %99 = load i32, i32* @AR_PHY_65NM_CH2_RXTX4, align 4
  %100 = load i32, i32* @AR_PHY_65NM_CH0_RXTX4_THERM_ON, align 4
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %98, i32 %99, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %96, %80
  ret void
}

declare dso_local i32 @ar9003_hw_get_thermometer(%struct.ath_hw*) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

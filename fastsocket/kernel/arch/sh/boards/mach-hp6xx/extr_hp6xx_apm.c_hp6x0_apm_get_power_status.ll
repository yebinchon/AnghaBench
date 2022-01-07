; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-hp6xx/extr_hp6xx_apm.c_hp6x0_apm_get_power_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-hp6xx/extr_hp6xx_apm.c_hp6x0_apm_get_power_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apm_power_info = type { i32, i32, i32, i32, i32, i64 }

@ADC_CHANNEL_BATTERY = common dso_local global i32 0, align 4
@ADC_CHANNEL_BACKUP = common dso_local global i32 0, align 4
@ADC_CHANNEL_CHARGE = common dso_local global i32 0, align 4
@HP680_BATTERY_MIN = common dso_local global i32 0, align 4
@HP680_BATTERY_MAX = common dso_local global i32 0, align 4
@HP680_BATTERY_AC_ON = common dso_local global i32 0, align 4
@APM_AC_ONLINE = common dso_local global i32 0, align 4
@APM_AC_OFFLINE = common dso_local global i32 0, align 4
@PGDR = common dso_local global i32 0, align 4
@PGDR_MAIN_BATTERY_OUT = common dso_local global i32 0, align 4
@APM_BATTERY_STATUS_NOT_PRESENT = common dso_local global i32 0, align 4
@APM_BATTERY_STATUS_CHARGING = common dso_local global i32 0, align 4
@APM_CRITICAL = common dso_local global i32 0, align 4
@APM_BATTERY_STATUS_CRITICAL = common dso_local global i32 0, align 4
@APM_LOW = common dso_local global i32 0, align 4
@APM_BATTERY_STATUS_LOW = common dso_local global i32 0, align 4
@APM_BATTERY_STATUS_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.apm_power_info*)* @hp6x0_apm_get_power_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hp6x0_apm_get_power_status(%struct.apm_power_info* %0) #0 {
  %2 = alloca %struct.apm_power_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.apm_power_info* %0, %struct.apm_power_info** %2, align 8
  %8 = load i32, i32* @ADC_CHANNEL_BATTERY, align 4
  %9 = call i32 @adc_single(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @ADC_CHANNEL_BACKUP, align 4
  %11 = call i32 @adc_single(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @ADC_CHANNEL_CHARGE, align 4
  %13 = call i32 @adc_single(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @HP680_BATTERY_MIN, align 4
  %16 = sub nsw i32 %14, %15
  %17 = mul nsw i32 100, %16
  %18 = load i32, i32* @HP680_BATTERY_MAX, align 4
  %19 = load i32, i32* @HP680_BATTERY_MIN, align 4
  %20 = sub nsw i32 %18, %19
  %21 = sdiv i32 %17, %20
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %24 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %26 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %25, i32 0, i32 5
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* %3, align 4
  %28 = mul nsw i32 2, %27
  %29 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %30 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @HP680_BATTERY_AC_ON, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %1
  %35 = load i32, i32* @APM_AC_ONLINE, align 4
  br label %38

36:                                               ; preds = %1
  %37 = load i32, i32* @APM_AC_OFFLINE, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %41 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @PGDR, align 4
  %43 = call i32 @ctrl_inb(i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @PGDR_MAIN_BATTERY_OUT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %38
  %49 = load i32, i32* @APM_BATTERY_STATUS_NOT_PRESENT, align 4
  %50 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %51 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %53 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %52, i32 0, i32 3
  store i32 128, i32* %53, align 4
  br label %94

54:                                               ; preds = %38
  %55 = load i32, i32* %5, align 4
  %56 = icmp slt i32 %55, 8
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load i32, i32* @APM_BATTERY_STATUS_CHARGING, align 4
  %59 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %60 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %62 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %61, i32 0, i32 3
  store i32 8, i32* %62, align 4
  %63 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %64 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %63, i32 0, i32 2
  store i32 1, i32* %64, align 8
  br label %93

65:                                               ; preds = %54
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @APM_CRITICAL, align 4
  %68 = icmp sle i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load i32, i32* @APM_BATTERY_STATUS_CRITICAL, align 4
  %71 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %72 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  %73 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %74 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %73, i32 0, i32 3
  store i32 4, i32* %74, align 4
  br label %92

75:                                               ; preds = %65
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @APM_LOW, align 4
  %78 = icmp sle i32 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load i32, i32* @APM_BATTERY_STATUS_LOW, align 4
  %81 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %82 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  %83 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %84 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %83, i32 0, i32 3
  store i32 2, i32* %84, align 4
  br label %91

85:                                               ; preds = %75
  %86 = load i32, i32* @APM_BATTERY_STATUS_HIGH, align 4
  %87 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %88 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 8
  %89 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %90 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %89, i32 0, i32 3
  store i32 1, i32* %90, align 4
  br label %91

91:                                               ; preds = %85, %79
  br label %92

92:                                               ; preds = %91, %69
  br label %93

93:                                               ; preds = %92, %57
  br label %94

94:                                               ; preds = %93, %48
  ret void
}

declare dso_local i32 @adc_single(i32) #1

declare dso_local i32 @ctrl_inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_sharpsl_pm.c_sharpsl_apm_get_power_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_sharpsl_pm.c_sharpsl_apm_get_power_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.apm_power_info = type { i32, i32, i32, i32 }

@sharpsl_pm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@CHRG_ON = common dso_local global i64 0, align 8
@APM_BATTERY_STATUS_CHARGING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.apm_power_info*)* @sharpsl_apm_get_power_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sharpsl_apm_get_power_status(%struct.apm_power_info* %0) #0 {
  %2 = alloca %struct.apm_power_info*, align 8
  store %struct.apm_power_info* %0, %struct.apm_power_info** %2, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 1, i32 2), align 8
  %4 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %5 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %4, i32 0, i32 3
  store i32 %3, i32* %5, align 4
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 0), align 8
  %7 = load i64, i64* @CHRG_ON, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @APM_BATTERY_STATUS_CHARGING, align 4
  %11 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %12 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  br label %17

13:                                               ; preds = %1
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 1, i32 0), align 8
  %15 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %16 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  br label %17

17:                                               ; preds = %13, %9
  %18 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %19 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 1, %20
  %22 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %23 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 1, i32 1), align 4
  %25 = load %struct.apm_power_info*, %struct.apm_power_info** %2, align 8
  %26 = getelementptr inbounds %struct.apm_power_info, %struct.apm_power_info* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

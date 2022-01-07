; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_spitz_pm.c_spitz_should_wakeup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_spitz_pm.c_spitz_should_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 (i32)*, i32 (i32)* }

@sharpsl_pm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@SHARPSL_STATUS_ACIN = common dso_local global i32 0, align 4
@spitz_last_ac_status = common dso_local global i32 0, align 4
@SHARPSL_DO_OFFLINE_CHRG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"AC Inserted\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"AC Removed\0A\00", align 1
@SHARPSL_LED_OFF = common dso_local global i32 0, align 4
@CHRG_OFF = common dso_local global i32 0, align 4
@PEDR = common dso_local global i32 0, align 4
@SPITZ_GPIO_KEY_INT = common dso_local global i32 0, align 4
@PKSR = common dso_local global i32 0, align 4
@SPITZ_GPIO_SYNC = common dso_local global i32 0, align 4
@PWER_RTC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"is_resume: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @spitz_should_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spitz_should_wakeup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 2), align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32 (i32)*, i32 (i32)** %7, align 8
  %9 = load i32, i32* @SHARPSL_STATUS_ACIN, align 4
  %10 = call i32 %8(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @spitz_last_ac_status, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i32, i32* @SHARPSL_DO_OFFLINE_CHRG, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 3), align 8
  %20 = or i32 %19, %18
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 3), align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 0), align 8
  %22 = call i32 (i32, i8*, ...) @dev_dbg(i32 %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %33

23:                                               ; preds = %14
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 0), align 8
  %25 = call i32 (i32, i8*, ...) @dev_dbg(i32 %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @SHARPSL_LED_OFF, align 4
  %27 = call i32 @sharpsl_pm_led(i32 %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 2), align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32 (i32)*, i32 (i32)** %29, align 8
  %31 = call i32 %30(i32 0)
  %32 = load i32, i32* @CHRG_OFF, align 4
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 1), align 4
  br label %33

33:                                               ; preds = %23, %17
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* @spitz_last_ac_status, align 4
  store i32 0, i32* %2, align 4
  br label %74

35:                                               ; preds = %1
  %36 = load i32, i32* @PEDR, align 4
  %37 = load i32, i32* @SPITZ_GPIO_KEY_INT, align 4
  %38 = call i32 @GPIO_bit(i32 %37)
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load i32, i32* @SPITZ_GPIO_KEY_INT, align 4
  %43 = call i32 @GPIO_bit(i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %41, %35
  %47 = load i32, i32* @PKSR, align 4
  %48 = load i32, i32* @SPITZ_GPIO_SYNC, align 4
  %49 = call i32 @GPIO_bit(i32 %48)
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load i32, i32* @SPITZ_GPIO_SYNC, align 4
  %54 = call i32 @GPIO_bit(i32 %53)
  %55 = load i32, i32* %4, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %52, %46
  %58 = load i32, i32* %3, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load i32, i32* @PEDR, align 4
  %62 = load i32, i32* @PWER_RTC, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* @PWER_RTC, align 4
  %67 = load i32, i32* %4, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %65, %60, %57
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 0), align 8
  %71 = load i32, i32* %4, align 4
  %72 = call i32 (i32, i8*, ...) @dev_dbg(i32 %70, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %4, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %69, %33
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @sharpsl_pm_led(i32) #1

declare dso_local i32 @GPIO_bit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

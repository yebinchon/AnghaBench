; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_corgi_pm.c_corgi_should_wakeup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_corgi_pm.c_corgi_should_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 (i32)*, i64 (i32)* }

@sharpsl_pm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [15 x i8] c"GPLR0 = %x,%x\0A\00", align 1
@GPLR0 = common dso_local global i32 0, align 4
@PEDR = common dso_local global i32 0, align 4
@CORGI_GPIO_AC_IN = common dso_local global i32 0, align 4
@SHARPSL_STATUS_ACIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"ac insert\0A\00", align 1
@SHARPSL_DO_OFFLINE_CHRG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"ac remove\0A\00", align 1
@SHARPSL_LED_OFF = common dso_local global i32 0, align 4
@CHRG_OFF = common dso_local global i32 0, align 4
@CORGI_GPIO_CHRG_FULL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Charge full interrupt\0A\00", align 1
@CORGI_GPIO_KEY_INT = common dso_local global i32 0, align 4
@CORGI_GPIO_WAKEUP = common dso_local global i32 0, align 4
@PWER_RTC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"is_resume: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @corgi_should_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @corgi_should_wakeup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 0), align 8
  %5 = load i32, i32* @GPLR0, align 4
  %6 = load i32, i32* @PEDR, align 4
  %7 = call i32 (i32, i8*, ...) @dev_dbg(i32 %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %6)
  %8 = load i32, i32* @PEDR, align 4
  %9 = load i32, i32* @CORGI_GPIO_AC_IN, align 4
  %10 = call i32 @GPIO_bit(i32 %9)
  %11 = and i32 %8, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 2), align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i64 (i32)*, i64 (i32)** %15, align 8
  %17 = load i32, i32* @SHARPSL_STATUS_ACIN, align 4
  %18 = call i64 %16(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 0), align 8
  %22 = call i32 (i32, i8*, ...) @dev_dbg(i32 %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @SHARPSL_DO_OFFLINE_CHRG, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 3), align 8
  %25 = or i32 %24, %23
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 3), align 8
  br label %36

26:                                               ; preds = %13
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 0), align 8
  %28 = call i32 (i32, i8*, ...) @dev_dbg(i32 %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32, i32* @SHARPSL_LED_OFF, align 4
  %30 = call i32 @sharpsl_pm_led(i32 %29)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 2), align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32 (i32)*, i32 (i32)** %32, align 8
  %34 = call i32 %33(i32 0)
  %35 = load i32, i32* @CHRG_OFF, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 1), align 4
  br label %36

36:                                               ; preds = %26, %20
  br label %37

37:                                               ; preds = %36, %1
  %38 = load i32, i32* @PEDR, align 4
  %39 = load i32, i32* @CORGI_GPIO_CHRG_FULL, align 4
  %40 = call i32 @GPIO_bit(i32 %39)
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 0), align 8
  %45 = call i32 (i32, i8*, ...) @dev_dbg(i32 %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %37
  %47 = load i32, i32* @PEDR, align 4
  %48 = load i32, i32* @CORGI_GPIO_KEY_INT, align 4
  %49 = call i32 @GPIO_bit(i32 %48)
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load i32, i32* @CORGI_GPIO_KEY_INT, align 4
  %54 = call i32 @GPIO_bit(i32 %53)
  %55 = load i32, i32* %3, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %52, %46
  %58 = load i32, i32* @PEDR, align 4
  %59 = load i32, i32* @CORGI_GPIO_WAKEUP, align 4
  %60 = call i32 @GPIO_bit(i32 %59)
  %61 = and i32 %58, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load i32, i32* @CORGI_GPIO_WAKEUP, align 4
  %65 = call i32 @GPIO_bit(i32 %64)
  %66 = load i32, i32* %3, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %63, %57
  %69 = load i32, i32* %2, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = load i32, i32* @PEDR, align 4
  %73 = load i32, i32* @PWER_RTC, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32, i32* @PWER_RTC, align 4
  %78 = load i32, i32* %3, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %76, %71, %68
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 0), align 8
  %82 = load i32, i32* %3, align 4
  %83 = call i32 (i32, i8*, ...) @dev_dbg(i32 %81, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @GPIO_bit(i32) #1

declare dso_local i32 @sharpsl_pm_led(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

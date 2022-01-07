; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_therm_pm72.c_tickle_fcu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_therm_pm72.c_tickle_fcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SLOTS_FAN_PWM_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"FCU Tickle, slots fan is: %d\0A\00", align 1
@rackmac = common dso_local global i32 0, align 4
@SLOTS_FAN_DEFAULT_PWM = common dso_local global i32 0, align 4
@SLOTS_PID_OUTPUT_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tickle_fcu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tickle_fcu() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @SLOTS_FAN_PWM_INDEX, align 4
  %3 = call i32 @get_pwm_fan(i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = call i32 @DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i32 100, i32* %1, align 4
  br label %9

9:                                                ; preds = %8, %0
  %10 = load i32, i32* @rackmac, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* @SLOTS_FAN_DEFAULT_PWM, align 4
  store i32 %13, i32* %1, align 4
  br label %21

14:                                               ; preds = %9
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* @SLOTS_PID_OUTPUT_MIN, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @SLOTS_PID_OUTPUT_MIN, align 4
  store i32 %19, i32* %1, align 4
  br label %20

20:                                               ; preds = %18, %14
  br label %21

21:                                               ; preds = %20, %12
  %22 = load i32, i32* @SLOTS_FAN_PWM_INDEX, align 4
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @set_pwm_fan(i32 %22, i32 %23)
  ret void
}

declare dso_local i32 @get_pwm_fan(i32) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i32 @set_pwm_fan(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

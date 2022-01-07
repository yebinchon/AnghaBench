; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_lm8323.c_lm8323_write_pwm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_lm8323.c_lm8323_write_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm8323_pwm = type { i32, i32, i32 }

@LM8323_CMD_START_PWM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lm8323_pwm*, i32, i32, i32*)* @lm8323_write_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lm8323_write_pwm(%struct.lm8323_pwm* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.lm8323_pwm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.lm8323_pwm* %0, %struct.lm8323_pwm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %23, %4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %10
  %15 = load %struct.lm8323_pwm*, %struct.lm8323_pwm** %5, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @lm8323_write_pwm_one(%struct.lm8323_pwm* %15, i32 %16, i32 %21)
  br label %23

23:                                               ; preds = %14
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %9, align 4
  br label %10

26:                                               ; preds = %10
  %27 = load %struct.lm8323_pwm*, %struct.lm8323_pwm** %5, align 8
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @PWM_END(i32 %30)
  %32 = call i32 @lm8323_write_pwm_one(%struct.lm8323_pwm* %27, i32 %28, i32 %31)
  %33 = load %struct.lm8323_pwm*, %struct.lm8323_pwm** %5, align 8
  %34 = getelementptr inbounds %struct.lm8323_pwm, %struct.lm8323_pwm* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @LM8323_CMD_START_PWM, align 4
  %37 = load %struct.lm8323_pwm*, %struct.lm8323_pwm** %5, align 8
  %38 = getelementptr inbounds %struct.lm8323_pwm, %struct.lm8323_pwm* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @lm8323_write(i32 %35, i32 2, i32 %36, i32 %39)
  %41 = load %struct.lm8323_pwm*, %struct.lm8323_pwm** %5, align 8
  %42 = getelementptr inbounds %struct.lm8323_pwm, %struct.lm8323_pwm* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  ret void
}

declare dso_local i32 @lm8323_write_pwm_one(%struct.lm8323_pwm*, i32, i32) #1

declare dso_local i32 @PWM_END(i32) #1

declare dso_local i32 @lm8323_write(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_lm8323.c_lm8323_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_lm8323.c_lm8323_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm8323_chip = type { i32, i32, i32, i32 }

@CLK_SLOWCLKEN = common dso_local global i32 0, align 4
@CLK_RCPWM_EXTERNAL = common dso_local global i32 0, align 4
@LM8323_CMD_WRITE_CFG = common dso_local global i32 0, align 4
@LM8323_CMD_WRITE_CLOCK = common dso_local global i32 0, align 4
@LM8323_CMD_SET_KEY_SIZE = common dso_local global i32 0, align 4
@LM8323_CMD_SET_DEBOUNCE = common dso_local global i32 0, align 4
@LM8323_CMD_WRITE_PORT_STATE = common dso_local global i32 0, align 4
@LM8323_CMD_WRITE_PORT_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm8323_chip*)* @lm8323_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm8323_configure(%struct.lm8323_chip* %0) #0 {
  %2 = alloca %struct.lm8323_chip*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lm8323_chip* %0, %struct.lm8323_chip** %2, align 8
  %7 = load %struct.lm8323_chip*, %struct.lm8323_chip** %2, align 8
  %8 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = shl i32 %9, 4
  %11 = load %struct.lm8323_chip*, %struct.lm8323_chip** %2, align 8
  %12 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %10, %13
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @CLK_SLOWCLKEN, align 4
  %16 = load i32, i32* @CLK_RCPWM_EXTERNAL, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %4, align 4
  %18 = load %struct.lm8323_chip*, %struct.lm8323_chip** %2, align 8
  %19 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 2
  store i32 %21, i32* %5, align 4
  %22 = load %struct.lm8323_chip*, %struct.lm8323_chip** %2, align 8
  %23 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 2
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 3
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %29, %1
  %33 = load %struct.lm8323_chip*, %struct.lm8323_chip** %2, align 8
  %34 = load i32, i32* @LM8323_CMD_WRITE_CFG, align 4
  %35 = call i32 (%struct.lm8323_chip*, i32, i32, i32, ...) @lm8323_write(%struct.lm8323_chip* %33, i32 2, i32 %34, i32 0)
  %36 = load %struct.lm8323_chip*, %struct.lm8323_chip** %2, align 8
  %37 = load i32, i32* @LM8323_CMD_WRITE_CLOCK, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 (%struct.lm8323_chip*, i32, i32, i32, ...) @lm8323_write(%struct.lm8323_chip* %36, i32 2, i32 %37, i32 %38)
  %40 = load %struct.lm8323_chip*, %struct.lm8323_chip** %2, align 8
  %41 = load i32, i32* @LM8323_CMD_SET_KEY_SIZE, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 (%struct.lm8323_chip*, i32, i32, i32, ...) @lm8323_write(%struct.lm8323_chip* %40, i32 2, i32 %41, i32 %42)
  %44 = load %struct.lm8323_chip*, %struct.lm8323_chip** %2, align 8
  %45 = load %struct.lm8323_chip*, %struct.lm8323_chip** %2, align 8
  %46 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @lm8323_set_active_time(%struct.lm8323_chip* %44, i32 %47)
  %49 = load %struct.lm8323_chip*, %struct.lm8323_chip** %2, align 8
  %50 = load i32, i32* @LM8323_CMD_SET_DEBOUNCE, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 (%struct.lm8323_chip*, i32, i32, i32, ...) @lm8323_write(%struct.lm8323_chip* %49, i32 2, i32 %50, i32 %51)
  %53 = load %struct.lm8323_chip*, %struct.lm8323_chip** %2, align 8
  %54 = load i32, i32* @LM8323_CMD_WRITE_PORT_STATE, align 4
  %55 = call i32 (%struct.lm8323_chip*, i32, i32, i32, ...) @lm8323_write(%struct.lm8323_chip* %53, i32 3, i32 %54, i32 255, i32 255)
  %56 = load %struct.lm8323_chip*, %struct.lm8323_chip** %2, align 8
  %57 = load i32, i32* @LM8323_CMD_WRITE_PORT_SEL, align 4
  %58 = call i32 (%struct.lm8323_chip*, i32, i32, i32, ...) @lm8323_write(%struct.lm8323_chip* %56, i32 3, i32 %57, i32 0, i32 0)
  ret i32 0
}

declare dso_local i32 @lm8323_write(%struct.lm8323_chip*, i32, i32, i32, ...) #1

declare dso_local i32 @lm8323_set_active_time(%struct.lm8323_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

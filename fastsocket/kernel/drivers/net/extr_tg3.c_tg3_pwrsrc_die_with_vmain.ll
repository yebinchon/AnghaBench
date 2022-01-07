; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_pwrsrc_die_with_vmain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_pwrsrc_die_with_vmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@IS_NIC = common dso_local global i32 0, align 4
@ASIC_REV_5700 = common dso_local global i64 0, align 8
@ASIC_REV_5701 = common dso_local global i64 0, align 8
@GRC_LCLCTRL_GPIO_OE1 = common dso_local global i32 0, align 4
@GRC_LOCAL_CTRL = common dso_local global i32 0, align 4
@GRC_LCLCTRL_GPIO_OUTPUT1 = common dso_local global i32 0, align 4
@TG3_GRC_LCLCTL_PWRSW_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_pwrsrc_die_with_vmain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_pwrsrc_die_with_vmain(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  %3 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  %4 = load %struct.tg3*, %struct.tg3** %2, align 8
  %5 = load i32, i32* @IS_NIC, align 4
  %6 = call i32 @tg3_flag(%struct.tg3* %4, i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load %struct.tg3*, %struct.tg3** %2, align 8
  %10 = call i64 @tg3_asic_rev(%struct.tg3* %9)
  %11 = load i64, i64* @ASIC_REV_5700, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = load %struct.tg3*, %struct.tg3** %2, align 8
  %15 = call i64 @tg3_asic_rev(%struct.tg3* %14)
  %16 = load i64, i64* @ASIC_REV_5701, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %8, %1
  br label %41

19:                                               ; preds = %13
  %20 = load %struct.tg3*, %struct.tg3** %2, align 8
  %21 = getelementptr inbounds %struct.tg3, %struct.tg3* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @GRC_LCLCTRL_GPIO_OE1, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @GRC_LOCAL_CTRL, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @GRC_LCLCTRL_GPIO_OUTPUT1, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @TG3_GRC_LCLCTL_PWRSW_DELAY, align 4
  %30 = call i32 @tw32_wait_f(i32 %25, i32 %28, i32 %29)
  %31 = load i32, i32* @GRC_LOCAL_CTRL, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @TG3_GRC_LCLCTL_PWRSW_DELAY, align 4
  %34 = call i32 @tw32_wait_f(i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* @GRC_LOCAL_CTRL, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @GRC_LCLCTRL_GPIO_OUTPUT1, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @TG3_GRC_LCLCTL_PWRSW_DELAY, align 4
  %40 = call i32 @tw32_wait_f(i32 %35, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i64 @tg3_asic_rev(%struct.tg3*) #1

declare dso_local i32 @tw32_wait_f(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

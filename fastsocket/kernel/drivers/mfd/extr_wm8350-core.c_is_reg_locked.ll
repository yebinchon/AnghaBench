; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm8350-core.c_is_reg_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm8350-core.c_is_reg_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8350 = type { i64* }

@WM8350_SECURITY = common dso_local global i64 0, align 8
@WM8350_UNLOCK_KEY = common dso_local global i64 0, align 8
@WM8350_GPIO_FUNCTION_SELECT_1 = common dso_local global i64 0, align 8
@WM8350_GPIO_FUNCTION_SELECT_4 = common dso_local global i64 0, align 8
@WM8350_BATTERY_CHARGER_CONTROL_1 = common dso_local global i64 0, align 8
@WM8350_BATTERY_CHARGER_CONTROL_3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm8350*, i64)* @is_reg_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_reg_locked(%struct.wm8350* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wm8350*, align 8
  %5 = alloca i64, align 8
  store %struct.wm8350* %0, %struct.wm8350** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @WM8350_SECURITY, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  %10 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %11 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = load i64, i64* @WM8350_SECURITY, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @WM8350_UNLOCK_KEY, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %9, %2
  store i32 0, i32* %3, align 4
  br label %37

19:                                               ; preds = %9
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @WM8350_GPIO_FUNCTION_SELECT_1, align 8
  %22 = icmp uge i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @WM8350_GPIO_FUNCTION_SELECT_4, align 8
  %26 = icmp ule i64 %24, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %23, %19
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @WM8350_BATTERY_CHARGER_CONTROL_1, align 8
  %30 = icmp uge i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @WM8350_BATTERY_CHARGER_CONTROL_3, align 8
  %34 = icmp ule i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %23
  store i32 1, i32* %3, align 4
  br label %37

36:                                               ; preds = %31, %27
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %35, %18
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

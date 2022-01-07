; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm831x-dcdc.c_wm831x_dcdc_set_mode_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm831x-dcdc.c_wm831x_dcdc_set_mode_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm831x = type { i32 }

@WM831X_DCDC_MODE_FAST = common dso_local global i32 0, align 4
@WM831X_DCDC_MODE_NORMAL = common dso_local global i32 0, align 4
@WM831X_DCDC_MODE_STANDBY = common dso_local global i32 0, align 4
@WM831X_DCDC_MODE_IDLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WM831X_DC1_ON_MODE_MASK = common dso_local global i32 0, align 4
@WM831X_DC1_ON_MODE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm831x*, i32, i32)* @wm831x_dcdc_set_mode_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_dcdc_set_mode_int(%struct.wm831x* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm831x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wm831x* %0, %struct.wm831x** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  switch i32 %9, label %18 [
    i32 131, label %10
    i32 129, label %12
    i32 128, label %14
    i32 130, label %16
  ]

10:                                               ; preds = %3
  %11 = load i32, i32* @WM831X_DCDC_MODE_FAST, align 4
  store i32 %11, i32* %8, align 4
  br label %21

12:                                               ; preds = %3
  %13 = load i32, i32* @WM831X_DCDC_MODE_NORMAL, align 4
  store i32 %13, i32* %8, align 4
  br label %21

14:                                               ; preds = %3
  %15 = load i32, i32* @WM831X_DCDC_MODE_STANDBY, align 4
  store i32 %15, i32* %8, align 4
  br label %21

16:                                               ; preds = %3
  %17 = load i32, i32* @WM831X_DCDC_MODE_IDLE, align 4
  store i32 %17, i32* %8, align 4
  br label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %29

21:                                               ; preds = %16, %14, %12, %10
  %22 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @WM831X_DC1_ON_MODE_MASK, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @WM831X_DC1_ON_MODE_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = call i32 @wm831x_set_bits(%struct.wm831x* %22, i32 %23, i32 %24, i32 %27)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %21, %18
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @wm831x_set_bits(%struct.wm831x*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

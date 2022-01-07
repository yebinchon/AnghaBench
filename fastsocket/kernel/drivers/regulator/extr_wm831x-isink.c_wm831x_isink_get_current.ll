; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm831x-isink.c_wm831x_isink_get_current.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm831x-isink.c_wm831x_isink_get_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.wm831x_isink = type { i32, %struct.wm831x* }
%struct.wm831x = type { i32 }

@WM831X_CS1_ISEL_MASK = common dso_local global i32 0, align 4
@WM831X_ISINK_MAX_ISEL = common dso_local global i32 0, align 4
@wm831x_isinkv_values = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @wm831x_isink_get_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_isink_get_current(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.wm831x_isink*, align 8
  %5 = alloca %struct.wm831x*, align 8
  %6 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %8 = call %struct.wm831x_isink* @rdev_get_drvdata(%struct.regulator_dev* %7)
  store %struct.wm831x_isink* %8, %struct.wm831x_isink** %4, align 8
  %9 = load %struct.wm831x_isink*, %struct.wm831x_isink** %4, align 8
  %10 = getelementptr inbounds %struct.wm831x_isink, %struct.wm831x_isink* %9, i32 0, i32 1
  %11 = load %struct.wm831x*, %struct.wm831x** %10, align 8
  store %struct.wm831x* %11, %struct.wm831x** %5, align 8
  %12 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %13 = load %struct.wm831x_isink*, %struct.wm831x_isink** %4, align 8
  %14 = getelementptr inbounds %struct.wm831x_isink, %struct.wm831x_isink* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @wm831x_reg_read(%struct.wm831x* %12, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %36

21:                                               ; preds = %1
  %22 = load i32, i32* @WM831X_CS1_ISEL_MASK, align 4
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @WM831X_ISINK_MAX_ISEL, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @WM831X_ISINK_MAX_ISEL, align 4
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %28, %21
  %31 = load i32*, i32** @wm831x_isinkv_values, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %30, %19
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.wm831x_isink* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @wm831x_reg_read(%struct.wm831x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

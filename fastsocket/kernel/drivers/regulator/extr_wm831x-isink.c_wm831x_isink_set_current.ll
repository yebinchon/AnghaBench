; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm831x-isink.c_wm831x_isink_set_current.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm831x-isink.c_wm831x_isink_set_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.wm831x_isink = type { i32, %struct.wm831x* }
%struct.wm831x = type { i32 }

@wm831x_isinkv_values = common dso_local global i32* null, align 8
@WM831X_CS1_ISEL_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @wm831x_isink_set_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_isink_set_current(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wm831x_isink*, align 8
  %9 = alloca %struct.wm831x*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %14 = call %struct.wm831x_isink* @rdev_get_drvdata(%struct.regulator_dev* %13)
  store %struct.wm831x_isink* %14, %struct.wm831x_isink** %8, align 8
  %15 = load %struct.wm831x_isink*, %struct.wm831x_isink** %8, align 8
  %16 = getelementptr inbounds %struct.wm831x_isink, %struct.wm831x_isink* %15, i32 0, i32 1
  %17 = load %struct.wm831x*, %struct.wm831x** %16, align 8
  store %struct.wm831x* %17, %struct.wm831x** %9, align 8
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %46, %3
  %19 = load i32, i32* %11, align 4
  %20 = load i32*, i32** @wm831x_isinkv_values, align 8
  %21 = call i32 @ARRAY_SIZE(i32* %20)
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %18
  %24 = load i32*, i32** @wm831x_isinkv_values, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %23
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load %struct.wm831x*, %struct.wm831x** %9, align 8
  %38 = load %struct.wm831x_isink*, %struct.wm831x_isink** %8, align 8
  %39 = getelementptr inbounds %struct.wm831x_isink, %struct.wm831x_isink* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @WM831X_CS1_ISEL_MASK, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @wm831x_set_bits(%struct.wm831x* %37, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %4, align 4
  br label %52

45:                                               ; preds = %32, %23
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  br label %18

49:                                               ; preds = %18
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %49, %36
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.wm831x_isink* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @wm831x_set_bits(%struct.wm831x*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

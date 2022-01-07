; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm8350-core.c_wm8350_create_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm8350-core.c_wm8350_create_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.wm8350 = type { i32 (%struct.wm8350*, i32, i32, i32*)*, i32*, i32 }

@.str = private unnamed_addr constant [44 x i8] c"WM8350 configuration mode %d not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"WM8351 configuration mode %d not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"WM8352 configuration mode %d not supported\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"WM835x configuration mode %d not supported\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@WM8350_AIF_TEST = common dso_local global i32 0, align 4
@WM8350_CLOCK_CONTROL_1 = common dso_local global i32 0, align 4
@WM8350_MAX_REGISTER = common dso_local global i32 0, align 4
@wm8350_mode0_defaults = common dso_local global i32* null, align 8
@wm8350_mode1_defaults = common dso_local global i32* null, align 8
@wm8350_mode2_defaults = common dso_local global i32* null, align 8
@wm8350_mode3_defaults = common dso_local global i32* null, align 8
@wm8350_reg_io_map = common dso_local global %struct.TYPE_2__* null, align 8
@wm8351_mode0_defaults = common dso_local global i32* null, align 8
@wm8351_mode1_defaults = common dso_local global i32* null, align 8
@wm8351_mode2_defaults = common dso_local global i32* null, align 8
@wm8351_mode3_defaults = common dso_local global i32* null, align 8
@wm8352_mode0_defaults = common dso_local global i32* null, align 8
@wm8352_mode1_defaults = common dso_local global i32* null, align 8
@wm8352_mode2_defaults = common dso_local global i32* null, align 8
@wm8352_mode3_defaults = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm8350*, i32, i32)* @wm8350_create_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_create_cache(%struct.wm8350* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm8350*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.wm8350* %0, %struct.wm8350** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %43 [
    i32 0, label %13
    i32 1, label %23
    i32 2, label %33
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %15 [
  ]

15:                                               ; preds = %13
  %16 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %17 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 (i32, i8*, ...) @dev_err(i32 %18, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %53

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %25 [
  ]

25:                                               ; preds = %23
  %26 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %27 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 (i32, i8*, ...) @dev_err(i32 %28, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %53

33:                                               ; preds = %3
  %34 = load i32, i32* %7, align 4
  switch i32 %34, label %35 [
  ]

35:                                               ; preds = %33
  %36 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %37 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 (i32, i8*, ...) @dev_err(i32 %38, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %53

43:                                               ; preds = %3
  %44 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %45 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 (i32, i8*, ...) @dev_err(i32 %46, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %53

51:                                               ; No predecessors!
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %51, %43, %35, %25, %15
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

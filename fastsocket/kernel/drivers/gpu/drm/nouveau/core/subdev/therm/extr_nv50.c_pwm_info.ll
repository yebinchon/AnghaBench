; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_nv50.c_pwm_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_nv50.c_pwm_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_therm = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"unknown pwm ctrl for gpio %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_therm*, i32*, i32*, i32*)* @pwm_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_info(%struct.nouveau_therm* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_therm*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.nouveau_therm* %0, %struct.nouveau_therm** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load i32*, i32** %8, align 8
  store i32 57600, i32* %14, align 4
  %15 = load i32*, i32** %7, align 8
  store i32 4, i32* %15, align 4
  %16 = load i32*, i32** %9, align 8
  store i32 0, i32* %16, align 4
  br label %42

17:                                               ; preds = %4
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 9
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32*, i32** %8, align 8
  store i32 57600, i32* %22, align 4
  %23 = load i32*, i32** %7, align 8
  store i32 9, i32* %23, align 4
  %24 = load i32*, i32** %9, align 8
  store i32 1, i32* %24, align 4
  br label %41

25:                                               ; preds = %17
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 16
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32*, i32** %8, align 8
  store i32 57996, i32* %30, align 4
  %31 = load i32*, i32** %7, align 8
  store i32 0, i32* %31, align 4
  %32 = load i32*, i32** %9, align 8
  store i32 0, i32* %32, align 4
  br label %40

33:                                               ; preds = %25
  %34 = load %struct.nouveau_therm*, %struct.nouveau_therm** %6, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @nv_error(%struct.nouveau_therm* %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %43

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %21
  br label %42

42:                                               ; preds = %41, %13
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %42, %33
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @nv_error(%struct.nouveau_therm*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

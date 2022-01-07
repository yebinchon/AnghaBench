; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_nv40.c_nv40_fan_pwm_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_nv40.c_nv40_fan_pwm_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_therm = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"unknown pwm ctrl for gpio %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_therm*, i32, i32*, i32*)* @nv40_fan_pwm_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv40_fan_pwm_get(%struct.nouveau_therm* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_therm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nouveau_therm* %0, %struct.nouveau_therm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %29

14:                                               ; preds = %4
  %15 = load %struct.nouveau_therm*, %struct.nouveau_therm** %6, align 8
  %16 = call i32 @nv_rd32(%struct.nouveau_therm* %15, i32 4336)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = and i32 %17, -2147483648
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = load i32, i32* %10, align 4
  %22 = and i32 %21, 2147418112
  %23 = ashr i32 %22, 16
  %24 = load i32*, i32** %9, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %10, align 4
  %26 = and i32 %25, 32767
  %27 = load i32*, i32** %8, align 8
  store i32 %26, i32* %27, align 4
  store i32 0, i32* %5, align 4
  br label %56

28:                                               ; preds = %14
  br label %53

29:                                               ; preds = %4
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 9
  br i1 %31, label %32, label %46

32:                                               ; preds = %29
  %33 = load %struct.nouveau_therm*, %struct.nouveau_therm** %6, align 8
  %34 = call i32 @nv_rd32(%struct.nouveau_therm* %33, i32 5620)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = and i32 %35, -2147483648
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load %struct.nouveau_therm*, %struct.nouveau_therm** %6, align 8
  %40 = call i32 @nv_rd32(%struct.nouveau_therm* %39, i32 5624)
  %41 = load i32*, i32** %8, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %11, align 4
  %43 = and i32 %42, 2147483647
  %44 = load i32*, i32** %9, align 8
  store i32 %43, i32* %44, align 4
  store i32 0, i32* %5, align 4
  br label %56

45:                                               ; preds = %32
  br label %52

46:                                               ; preds = %29
  %47 = load %struct.nouveau_therm*, %struct.nouveau_therm** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @nv_error(%struct.nouveau_therm* %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %56

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %28
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %53, %46, %38, %20
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @nv_rd32(%struct.nouveau_therm*, i32) #1

declare dso_local i32 @nv_error(%struct.nouveau_therm*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

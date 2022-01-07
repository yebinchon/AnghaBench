; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_nv50.c_nv50_fan_pwm_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_nv50.c_nv50_fan_pwm_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_therm = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_fan_pwm_get(%struct.nouveau_therm* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_therm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nouveau_therm* %0, %struct.nouveau_therm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.nouveau_therm*, %struct.nouveau_therm** %6, align 8
  %14 = call i32 @pwm_info(%struct.nouveau_therm* %13, i32* %7, i32* %10, i32* %11)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %12, align 4
  store i32 %18, i32* %5, align 4
  br label %43

19:                                               ; preds = %4
  %20 = load %struct.nouveau_therm*, %struct.nouveau_therm** %6, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @nv_rd32(%struct.nouveau_therm* %20, i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = shl i32 1, %23
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %19
  %28 = load %struct.nouveau_therm*, %struct.nouveau_therm** %6, align 8
  %29 = load i32, i32* %11, align 4
  %30 = mul nsw i32 %29, 8
  %31 = add nsw i32 57620, %30
  %32 = call i32 @nv_rd32(%struct.nouveau_therm* %28, i32 %31)
  %33 = load i32*, i32** %8, align 8
  store i32 %32, i32* %33, align 4
  %34 = load %struct.nouveau_therm*, %struct.nouveau_therm** %6, align 8
  %35 = load i32, i32* %11, align 4
  %36 = mul nsw i32 %35, 8
  %37 = add nsw i32 57624, %36
  %38 = call i32 @nv_rd32(%struct.nouveau_therm* %34, i32 %37)
  %39 = load i32*, i32** %9, align 8
  store i32 %38, i32* %39, align 4
  store i32 0, i32* %5, align 4
  br label %43

40:                                               ; preds = %19
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %40, %27, %17
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @pwm_info(%struct.nouveau_therm*, i32*, i32*, i32*) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_therm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

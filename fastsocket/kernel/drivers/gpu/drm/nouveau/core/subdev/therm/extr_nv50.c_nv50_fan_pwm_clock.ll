; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_nv50.c_nv50_fan_pwm_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_nv50.c_nv50_fan_pwm_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_therm = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_fan_pwm_clock(%struct.nouveau_therm* %0) #0 {
  %2 = alloca %struct.nouveau_therm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nouveau_therm* %0, %struct.nouveau_therm** %2, align 8
  %7 = load %struct.nouveau_therm*, %struct.nouveau_therm** %2, align 8
  %8 = call %struct.TYPE_2__* @nv_device(%struct.nouveau_therm* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  %11 = load %struct.nouveau_therm*, %struct.nouveau_therm** %2, align 8
  %12 = call %struct.TYPE_2__* @nv_device(%struct.nouveau_therm* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp sgt i32 %15, 80
  br i1 %16, label %17, label %40

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 148
  br i1 %19, label %20, label %40

20:                                               ; preds = %17
  %21 = load %struct.nouveau_therm*, %struct.nouveau_therm** %2, align 8
  %22 = call i32 @nv_rd32(%struct.nouveau_therm* %21, i32 16652)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.nouveau_therm*, %struct.nouveau_therm** %2, align 8
  %24 = call i32 @nv_rd32(%struct.nouveau_therm* %23, i32 49216)
  %25 = and i32 %24, 8388608
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load i32, i32* %6, align 4
  %29 = ashr i32 100000000, %28
  %30 = mul nsw i32 %29, 10
  %31 = sdiv i32 %30, 24
  store i32 %31, i32* %5, align 4
  br label %39

32:                                               ; preds = %20
  %33 = load i32, i32* %4, align 4
  %34 = mul nsw i32 %33, 1000
  %35 = load i32, i32* %6, align 4
  %36 = ashr i32 %34, %35
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = sdiv i32 %37, 20
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %32, %27
  br label %44

40:                                               ; preds = %17, %1
  %41 = load i32, i32* %4, align 4
  %42 = mul nsw i32 %41, 1000
  %43 = sdiv i32 %42, 20
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %40, %39
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local %struct.TYPE_2__* @nv_device(%struct.nouveau_therm*) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_therm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_nv40.c_nv40_fan_pwm_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_nv40.c_nv40_fan_pwm_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_therm = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"unknown pwm ctrl for gpio %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_therm*, i32, i32)* @nv40_fan_pwm_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv40_fan_pwm_ctrl(%struct.nouveau_therm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_therm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nouveau_therm* %0, %struct.nouveau_therm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 -2147483648, i32 0
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.nouveau_therm*, %struct.nouveau_therm** %5, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @nv_mask(%struct.nouveau_therm* %16, i32 4336, i32 -2147483648, i32 %17)
  br label %33

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 9
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load %struct.nouveau_therm*, %struct.nouveau_therm** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @nv_mask(%struct.nouveau_therm* %23, i32 5620, i32 -2147483648, i32 %24)
  br label %32

26:                                               ; preds = %19
  %27 = load %struct.nouveau_therm*, %struct.nouveau_therm** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @nv_error(%struct.nouveau_therm* %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %34

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32, %15
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %26
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @nv_mask(%struct.nouveau_therm*, i32, i32, i32) #1

declare dso_local i32 @nv_error(%struct.nouveau_therm*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

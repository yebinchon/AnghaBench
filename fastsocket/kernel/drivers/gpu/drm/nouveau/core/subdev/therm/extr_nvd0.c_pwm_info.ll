; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_nvd0.c_pwm_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_nvd0.c_pwm_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_therm = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"GPIO %d unknown PWM: 0x%08x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_therm*, i32)* @pwm_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_info(%struct.nouveau_therm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nouveau_therm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nouveau_therm* %0, %struct.nouveau_therm** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.nouveau_therm*, %struct.nouveau_therm** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = mul nsw i32 %8, 4
  %10 = add nsw i32 54800, %9
  %11 = call i32 @nv_rd32(%struct.nouveau_therm* %7, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, 192
  switch i32 %13, label %21 [
    i32 0, label %14
    i32 64, label %14
  ]

14:                                               ; preds = %2, %2
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, 31
  switch i32 %16, label %19 [
    i32 25, label %17
    i32 28, label %18
  ]

17:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %29

18:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %29

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19
  br label %21

21:                                               ; preds = %2, %20
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.nouveau_therm*, %struct.nouveau_therm** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @nv_error(%struct.nouveau_therm* %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %22, %18, %17
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @nv_rd32(%struct.nouveau_therm*, i32) #1

declare dso_local i32 @nv_error(%struct.nouveau_therm*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

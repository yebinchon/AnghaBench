; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_volt.c_nouveau_voltage_gpio_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_volt.c_nouveau_voltage_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.nouveau_gpio = type { i32 (%struct.nouveau_gpio*, i32, i32, i32, i32)* }
%struct.nouveau_pm_voltage = type { i32 }
%struct.TYPE_2__ = type { %struct.nouveau_pm_voltage }

@nr_vidtag = common dso_local global i32 0, align 4
@vidtag = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_voltage_gpio_set(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_device*, align 8
  %7 = alloca %struct.nouveau_gpio*, align 8
  %8 = alloca %struct.nouveau_pm_voltage*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = call %struct.nouveau_device* @nouveau_dev(%struct.drm_device* %11)
  store %struct.nouveau_device* %12, %struct.nouveau_device** %6, align 8
  %13 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %14 = call %struct.nouveau_gpio* @nouveau_gpio(%struct.nouveau_device* %13)
  store %struct.nouveau_gpio* %14, %struct.nouveau_gpio** %7, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = call %struct.TYPE_2__* @nouveau_pm(%struct.drm_device* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.nouveau_pm_voltage* %17, %struct.nouveau_pm_voltage** %8, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @nouveau_volt_vid_lookup(%struct.drm_device* %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %3, align 4
  br label %62

25:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %58, %25
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @nr_vidtag, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %61

30:                                               ; preds = %26
  %31 = load %struct.nouveau_pm_voltage*, %struct.nouveau_pm_voltage** %8, align 8
  %32 = getelementptr inbounds %struct.nouveau_pm_voltage, %struct.nouveau_pm_voltage* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %10, align 4
  %35 = shl i32 1, %34
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  br label %58

39:                                               ; preds = %30
  %40 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %7, align 8
  %41 = getelementptr inbounds %struct.nouveau_gpio, %struct.nouveau_gpio* %40, i32 0, i32 0
  %42 = load i32 (%struct.nouveau_gpio*, i32, i32, i32, i32)*, i32 (%struct.nouveau_gpio*, i32, i32, i32, i32)** %41, align 8
  %43 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %7, align 8
  %44 = load i32*, i32** @vidtag, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = shl i32 1, %50
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i32 %42(%struct.nouveau_gpio* %43, i32 0, i32 %48, i32 255, i32 %56)
  br label %58

58:                                               ; preds = %39, %38
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %26

61:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %23
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.nouveau_device* @nouveau_dev(%struct.drm_device*) #1

declare dso_local %struct.nouveau_gpio* @nouveau_gpio(%struct.nouveau_device*) #1

declare dso_local %struct.TYPE_2__* @nouveau_pm(%struct.drm_device*) #1

declare dso_local i32 @nouveau_volt_vid_lookup(%struct.drm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

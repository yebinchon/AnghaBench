; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_volt.c_nouveau_voltage_gpio_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_volt.c_nouveau_voltage_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_pm_voltage = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.nouveau_gpio = type { i32 (%struct.nouveau_gpio*, i32, i32, i32)* }
%struct.TYPE_2__ = type { %struct.nouveau_pm_voltage }

@nr_vidtag = common dso_local global i32 0, align 4
@vidtag = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_voltage_gpio_get(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.nouveau_pm_voltage*, align 8
  %4 = alloca %struct.nouveau_device*, align 8
  %5 = alloca %struct.nouveau_gpio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %9 = call %struct.TYPE_2__* @nouveau_pm(%struct.drm_device* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.nouveau_pm_voltage* %10, %struct.nouveau_pm_voltage** %3, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %12 = call %struct.nouveau_device* @nouveau_dev(%struct.drm_device* %11)
  store %struct.nouveau_device* %12, %struct.nouveau_device** %4, align 8
  %13 = load %struct.nouveau_device*, %struct.nouveau_device** %4, align 8
  %14 = call %struct.nouveau_gpio* @nouveau_gpio(%struct.nouveau_device* %13)
  store %struct.nouveau_gpio* %14, %struct.nouveau_gpio** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %43, %1
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @nr_vidtag, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %46

19:                                               ; preds = %15
  %20 = load %struct.nouveau_pm_voltage*, %struct.nouveau_pm_voltage** %3, align 8
  %21 = getelementptr inbounds %struct.nouveau_pm_voltage, %struct.nouveau_pm_voltage* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = shl i32 1, %23
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  br label %43

28:                                               ; preds = %19
  %29 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %5, align 8
  %30 = getelementptr inbounds %struct.nouveau_gpio, %struct.nouveau_gpio* %29, i32 0, i32 0
  %31 = load i32 (%struct.nouveau_gpio*, i32, i32, i32)*, i32 (%struct.nouveau_gpio*, i32, i32, i32)** %30, align 8
  %32 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %5, align 8
  %33 = load i32*, i32** @vidtag, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 %31(%struct.nouveau_gpio* %32, i32 0, i32 %37, i32 255)
  %39 = load i32, i32* %7, align 4
  %40 = shl i32 %38, %39
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %28, %27
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %15

46:                                               ; preds = %15
  %47 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @nouveau_volt_lvl_lookup(%struct.drm_device* %47, i32 %48)
  ret i32 %49
}

declare dso_local %struct.TYPE_2__* @nouveau_pm(%struct.drm_device*) #1

declare dso_local %struct.nouveau_device* @nouveau_dev(%struct.drm_device*) #1

declare dso_local %struct.nouveau_gpio* @nouveau_gpio(%struct.nouveau_device*) #1

declare dso_local i32 @nouveau_volt_lvl_lookup(%struct.drm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/gpio/extr_base.c_nouveau_gpio_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/gpio/extr_base.c_nouveau_gpio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_gpio = type { i32 (%struct.nouveau_gpio*, i32)*, i32 }

@gpio_reset_ids = common dso_local global i32 0, align 4
@DCB_GPIO_UNUSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_gpio_init(%struct.nouveau_gpio* %0) #0 {
  %2 = alloca %struct.nouveau_gpio*, align 8
  %3 = alloca i32, align 4
  store %struct.nouveau_gpio* %0, %struct.nouveau_gpio** %2, align 8
  %4 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %2, align 8
  %5 = getelementptr inbounds %struct.nouveau_gpio, %struct.nouveau_gpio* %4, i32 0, i32 1
  %6 = call i32 @nouveau_subdev_init(i32* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  %10 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %2, align 8
  %11 = getelementptr inbounds %struct.nouveau_gpio, %struct.nouveau_gpio* %10, i32 0, i32 0
  %12 = load i32 (%struct.nouveau_gpio*, i32)*, i32 (%struct.nouveau_gpio*, i32)** %11, align 8
  %13 = icmp ne i32 (%struct.nouveau_gpio*, i32)* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %9
  %15 = load i32, i32* @gpio_reset_ids, align 4
  %16 = call i64 @dmi_check_system(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %2, align 8
  %20 = getelementptr inbounds %struct.nouveau_gpio, %struct.nouveau_gpio* %19, i32 0, i32 0
  %21 = load i32 (%struct.nouveau_gpio*, i32)*, i32 (%struct.nouveau_gpio*, i32)** %20, align 8
  %22 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %2, align 8
  %23 = load i32, i32* @DCB_GPIO_UNUSED, align 4
  %24 = call i32 %21(%struct.nouveau_gpio* %22, i32 %23)
  br label %25

25:                                               ; preds = %18, %14
  br label %26

26:                                               ; preds = %25, %9, %1
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @nouveau_subdev_init(i32*) #1

declare dso_local i64 @dmi_check_system(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

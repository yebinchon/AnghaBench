; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/gpio/extr_base.c_nouveau_gpio_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/gpio/extr_base.c_nouveau_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_gpio = type { i32 }
%struct.dcb_gpio_func = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_gpio*, i32, i32, i32)* @nouveau_gpio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_gpio_get(%struct.nouveau_gpio* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nouveau_gpio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dcb_gpio_func, align 8
  %10 = alloca i32, align 4
  store %struct.nouveau_gpio* %0, %struct.nouveau_gpio** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @nouveau_gpio_find(%struct.nouveau_gpio* %11, i32 %12, i32 %13, i32 %14, %struct.dcb_gpio_func* %9)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %4
  %19 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = getelementptr inbounds %struct.dcb_gpio_func, %struct.dcb_gpio_func* %9, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @nouveau_gpio_sense(%struct.nouveau_gpio* %19, i32 %20, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %18
  %27 = load i32, i32* %10, align 4
  %28 = getelementptr inbounds %struct.dcb_gpio_func, %struct.dcb_gpio_func* %9, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %27, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %26, %18
  br label %36

36:                                               ; preds = %35, %4
  %37 = load i32, i32* %10, align 4
  ret i32 %37
}

declare dso_local i32 @nouveau_gpio_find(%struct.nouveau_gpio*, i32, i32, i32, %struct.dcb_gpio_func*) #1

declare dso_local i32 @nouveau_gpio_sense(%struct.nouveau_gpio*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

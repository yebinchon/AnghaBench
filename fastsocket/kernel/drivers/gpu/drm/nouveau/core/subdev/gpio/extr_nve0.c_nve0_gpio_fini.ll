; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/gpio/extr_nve0.c_nve0_gpio_fini.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/gpio/extr_nve0.c_nve0_gpio_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nve0_gpio_priv = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nve0_gpio_fini(%struct.nouveau_object* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nve0_gpio_priv*, align 8
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %7 = bitcast %struct.nouveau_object* %6 to i8*
  %8 = bitcast i8* %7 to %struct.nve0_gpio_priv*
  store %struct.nve0_gpio_priv* %8, %struct.nve0_gpio_priv** %5, align 8
  %9 = load %struct.nve0_gpio_priv*, %struct.nve0_gpio_priv** %5, align 8
  %10 = call i32 @nv_wr32(%struct.nve0_gpio_priv* %9, i32 56328, i32 0)
  %11 = load %struct.nve0_gpio_priv*, %struct.nve0_gpio_priv** %5, align 8
  %12 = call i32 @nv_wr32(%struct.nve0_gpio_priv* %11, i32 56456, i32 0)
  %13 = load %struct.nve0_gpio_priv*, %struct.nve0_gpio_priv** %5, align 8
  %14 = getelementptr inbounds %struct.nve0_gpio_priv, %struct.nve0_gpio_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @nouveau_gpio_fini(i32* %14, i32 %15)
  ret i32 %16
}

declare dso_local i32 @nv_wr32(%struct.nve0_gpio_priv*, i32, i32) #1

declare dso_local i32 @nouveau_gpio_fini(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

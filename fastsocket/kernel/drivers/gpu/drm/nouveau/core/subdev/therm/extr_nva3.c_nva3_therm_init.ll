; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_nva3.c_nva3_therm_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_nva3.c_nva3_therm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nva3_therm_priv = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.dcb_gpio_func }
%struct.dcb_gpio_func = type { i64, i32 }
%struct.TYPE_6__ = type { i32 }

@DCB_GPIO_UNUSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*)* @nva3_therm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nva3_therm_init(%struct.nouveau_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca %struct.nva3_therm_priv*, align 8
  %5 = alloca %struct.dcb_gpio_func*, align 8
  %6 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  %7 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %8 = bitcast %struct.nouveau_object* %7 to i8*
  %9 = bitcast i8* %8 to %struct.nva3_therm_priv*
  store %struct.nva3_therm_priv* %9, %struct.nva3_therm_priv** %4, align 8
  %10 = load %struct.nva3_therm_priv*, %struct.nva3_therm_priv** %4, align 8
  %11 = getelementptr inbounds %struct.nva3_therm_priv, %struct.nva3_therm_priv* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.dcb_gpio_func* %14, %struct.dcb_gpio_func** %5, align 8
  %15 = load %struct.nva3_therm_priv*, %struct.nva3_therm_priv** %4, align 8
  %16 = getelementptr inbounds %struct.nva3_therm_priv, %struct.nva3_therm_priv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = call i32 @nouveau_therm_init(i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %50

23:                                               ; preds = %1
  %24 = load %struct.nva3_therm_priv*, %struct.nva3_therm_priv** %4, align 8
  %25 = call i32 @nv_mask(%struct.nva3_therm_priv* %24, i32 59168, i32 3, i32 2)
  %26 = load %struct.dcb_gpio_func*, %struct.dcb_gpio_func** %5, align 8
  %27 = getelementptr inbounds %struct.dcb_gpio_func, %struct.dcb_gpio_func* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DCB_GPIO_UNUSED, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %23
  %32 = load %struct.nva3_therm_priv*, %struct.nva3_therm_priv** %4, align 8
  %33 = load %struct.nva3_therm_priv*, %struct.nva3_therm_priv** %4, align 8
  %34 = call %struct.TYPE_6__* @nv_device(%struct.nva3_therm_priv* %33)
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %36, 1000
  %38 = call i32 @nv_wr32(%struct.nva3_therm_priv* %32, i32 59172, i32 %37)
  %39 = load %struct.nva3_therm_priv*, %struct.nva3_therm_priv** %4, align 8
  %40 = load %struct.dcb_gpio_func*, %struct.dcb_gpio_func** %5, align 8
  %41 = getelementptr inbounds %struct.dcb_gpio_func, %struct.dcb_gpio_func* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = shl i32 %42, 16
  %44 = call i32 @nv_mask(%struct.nva3_therm_priv* %39, i32 59168, i32 2031616, i32 %43)
  %45 = load %struct.nva3_therm_priv*, %struct.nva3_therm_priv** %4, align 8
  %46 = call i32 @nv_mask(%struct.nva3_therm_priv* %45, i32 59168, i32 1, i32 1)
  br label %47

47:                                               ; preds = %31, %23
  %48 = load %struct.nva3_therm_priv*, %struct.nva3_therm_priv** %4, align 8
  %49 = call i32 @nv_mask(%struct.nva3_therm_priv* %48, i32 59168, i32 2, i32 0)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %47, %21
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @nouveau_therm_init(i32*) #1

declare dso_local i32 @nv_mask(%struct.nva3_therm_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_wr32(%struct.nva3_therm_priv*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @nv_device(%struct.nva3_therm_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

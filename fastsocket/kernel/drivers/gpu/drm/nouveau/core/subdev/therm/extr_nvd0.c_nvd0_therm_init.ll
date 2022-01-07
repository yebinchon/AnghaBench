; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_nvd0.c_nvd0_therm_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_nvd0.c_nvd0_therm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nvd0_therm_priv = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_8__ = type { i32 }

@DCB_GPIO_UNUSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*)* @nvd0_therm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvd0_therm_init(%struct.nouveau_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca %struct.nvd0_therm_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  %6 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %7 = bitcast %struct.nouveau_object* %6 to i8*
  %8 = bitcast i8* %7 to %struct.nvd0_therm_priv*
  store %struct.nvd0_therm_priv* %8, %struct.nvd0_therm_priv** %4, align 8
  %9 = load %struct.nvd0_therm_priv*, %struct.nvd0_therm_priv** %4, align 8
  %10 = getelementptr inbounds %struct.nvd0_therm_priv, %struct.nvd0_therm_priv* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = call i32 @nouveau_therm_init(i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %51

17:                                               ; preds = %1
  %18 = load %struct.nvd0_therm_priv*, %struct.nvd0_therm_priv** %4, align 8
  %19 = call i32 @nv_mask(%struct.nvd0_therm_priv* %18, i32 59168, i32 3, i32 2)
  %20 = load %struct.nvd0_therm_priv*, %struct.nvd0_therm_priv** %4, align 8
  %21 = getelementptr inbounds %struct.nvd0_therm_priv, %struct.nvd0_therm_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DCB_GPIO_UNUSED, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %17
  %30 = load %struct.nvd0_therm_priv*, %struct.nvd0_therm_priv** %4, align 8
  %31 = load %struct.nvd0_therm_priv*, %struct.nvd0_therm_priv** %4, align 8
  %32 = getelementptr inbounds %struct.nvd0_therm_priv, %struct.nvd0_therm_priv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @nv_mask(%struct.nvd0_therm_priv* %30, i32 55196, i32 255, i32 %37)
  %39 = load %struct.nvd0_therm_priv*, %struct.nvd0_therm_priv** %4, align 8
  %40 = load %struct.nvd0_therm_priv*, %struct.nvd0_therm_priv** %4, align 8
  %41 = call %struct.TYPE_8__* @nv_device(%struct.nvd0_therm_priv* %40)
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %43, 1000
  %45 = call i32 @nv_wr32(%struct.nvd0_therm_priv* %39, i32 59172, i32 %44)
  %46 = load %struct.nvd0_therm_priv*, %struct.nvd0_therm_priv** %4, align 8
  %47 = call i32 @nv_mask(%struct.nvd0_therm_priv* %46, i32 59168, i32 1, i32 1)
  br label %48

48:                                               ; preds = %29, %17
  %49 = load %struct.nvd0_therm_priv*, %struct.nvd0_therm_priv** %4, align 8
  %50 = call i32 @nv_mask(%struct.nvd0_therm_priv* %49, i32 59168, i32 2, i32 0)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %48, %15
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @nouveau_therm_init(i32*) #1

declare dso_local i32 @nv_mask(%struct.nvd0_therm_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_wr32(%struct.nvd0_therm_priv*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @nv_device(%struct.nvd0_therm_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

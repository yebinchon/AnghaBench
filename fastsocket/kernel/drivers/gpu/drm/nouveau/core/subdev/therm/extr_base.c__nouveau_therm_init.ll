; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_base.c__nouveau_therm_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_base.c__nouveau_therm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_therm = type { i32 }
%struct.nouveau_therm_priv = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (%struct.nouveau_therm.0*)* }
%struct.nouveau_therm.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_nouveau_therm_init(%struct.nouveau_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca %struct.nouveau_therm*, align 8
  %5 = alloca %struct.nouveau_therm_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  %7 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %8 = bitcast %struct.nouveau_object* %7 to i8*
  %9 = bitcast i8* %8 to %struct.nouveau_therm*
  store %struct.nouveau_therm* %9, %struct.nouveau_therm** %4, align 8
  %10 = load %struct.nouveau_therm*, %struct.nouveau_therm** %4, align 8
  %11 = bitcast %struct.nouveau_therm* %10 to i8*
  %12 = bitcast i8* %11 to %struct.nouveau_therm_priv*
  store %struct.nouveau_therm_priv* %12, %struct.nouveau_therm_priv** %5, align 8
  %13 = load %struct.nouveau_therm*, %struct.nouveau_therm** %4, align 8
  %14 = getelementptr inbounds %struct.nouveau_therm, %struct.nouveau_therm* %13, i32 0, i32 0
  %15 = call i32 @nouveau_subdev_init(i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %39

20:                                               ; preds = %1
  %21 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %5, align 8
  %22 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.nouveau_therm*, %struct.nouveau_therm** %4, align 8
  %27 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %5, align 8
  %28 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @nouveau_therm_fan_mode(%struct.nouveau_therm* %26, i32 %29)
  br label %31

31:                                               ; preds = %25, %20
  %32 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %5, align 8
  %33 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.nouveau_therm.0*)*, i32 (%struct.nouveau_therm.0*)** %34, align 8
  %36 = load %struct.nouveau_therm*, %struct.nouveau_therm** %4, align 8
  %37 = bitcast %struct.nouveau_therm* %36 to %struct.nouveau_therm.0*
  %38 = call i32 %35(%struct.nouveau_therm.0* %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %31, %18
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @nouveau_subdev_init(i32*) #1

declare dso_local i32 @nouveau_therm_fan_mode(%struct.nouveau_therm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

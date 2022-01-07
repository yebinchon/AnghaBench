; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_temp.c_nouveau_therm_sensor_get_threshold_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_temp.c_nouveau_therm_sensor_get_threshold_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_therm = type { i32 }
%struct.nouveau_therm_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_therm_sensor_get_threshold_state(%struct.nouveau_therm* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_therm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_therm_priv*, align 8
  store %struct.nouveau_therm* %0, %struct.nouveau_therm** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %7 = bitcast %struct.nouveau_therm* %6 to i8*
  %8 = bitcast i8* %7 to %struct.nouveau_therm_priv*
  store %struct.nouveau_therm_priv* %8, %struct.nouveau_therm_priv** %5, align 8
  %9 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %5, align 8
  %10 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

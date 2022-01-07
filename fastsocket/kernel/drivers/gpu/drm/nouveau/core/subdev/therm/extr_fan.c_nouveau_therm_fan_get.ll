; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_fan.c_nouveau_therm_fan_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_fan.c_nouveau_therm_fan_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_therm = type { i32 }
%struct.nouveau_therm_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nouveau_therm*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_therm_fan_get(%struct.nouveau_therm* %0) #0 {
  %2 = alloca %struct.nouveau_therm*, align 8
  %3 = alloca %struct.nouveau_therm_priv*, align 8
  store %struct.nouveau_therm* %0, %struct.nouveau_therm** %2, align 8
  %4 = load %struct.nouveau_therm*, %struct.nouveau_therm** %2, align 8
  %5 = bitcast %struct.nouveau_therm* %4 to i8*
  %6 = bitcast i8* %5 to %struct.nouveau_therm_priv*
  store %struct.nouveau_therm_priv* %6, %struct.nouveau_therm_priv** %3, align 8
  %7 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %3, align 8
  %8 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.nouveau_therm*)*, i32 (%struct.nouveau_therm*)** %10, align 8
  %12 = load %struct.nouveau_therm*, %struct.nouveau_therm** %2, align 8
  %13 = call i32 %11(%struct.nouveau_therm* %12)
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

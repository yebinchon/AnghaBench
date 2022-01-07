; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_fantog.c_nouveau_fantog_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_fantog.c_nouveau_fantog_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_therm = type { i32 (%struct.nouveau_therm*, i32, i32)* }
%struct.nouveau_therm_priv = type { i64 }
%struct.nouveau_fantog_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_therm*, i32)* @nouveau_fantog_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_fantog_set(%struct.nouveau_therm* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_therm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_therm_priv*, align 8
  %6 = alloca %struct.nouveau_fantog_priv*, align 8
  store %struct.nouveau_therm* %0, %struct.nouveau_therm** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %8 = bitcast %struct.nouveau_therm* %7 to i8*
  %9 = bitcast i8* %8 to %struct.nouveau_therm_priv*
  store %struct.nouveau_therm_priv* %9, %struct.nouveau_therm_priv** %5, align 8
  %10 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %5, align 8
  %11 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.nouveau_fantog_priv*
  store %struct.nouveau_fantog_priv* %14, %struct.nouveau_fantog_priv** %6, align 8
  %15 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %16 = getelementptr inbounds %struct.nouveau_therm, %struct.nouveau_therm* %15, i32 0, i32 0
  %17 = load i32 (%struct.nouveau_therm*, i32, i32)*, i32 (%struct.nouveau_therm*, i32, i32)** %16, align 8
  %18 = icmp ne i32 (%struct.nouveau_therm*, i32, i32)* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %21 = getelementptr inbounds %struct.nouveau_therm, %struct.nouveau_therm* %20, i32 0, i32 0
  %22 = load i32 (%struct.nouveau_therm*, i32, i32)*, i32 (%struct.nouveau_therm*, i32, i32)** %21, align 8
  %23 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %24 = load %struct.nouveau_fantog_priv*, %struct.nouveau_fantog_priv** %6, align 8
  %25 = getelementptr inbounds %struct.nouveau_fantog_priv, %struct.nouveau_fantog_priv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 %22(%struct.nouveau_therm* %23, i32 %27, i32 0)
  br label %29

29:                                               ; preds = %19, %2
  %30 = load %struct.nouveau_fantog_priv*, %struct.nouveau_fantog_priv** %6, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @nouveau_fantog_update(%struct.nouveau_fantog_priv* %30, i32 %31)
  ret i32 0
}

declare dso_local i32 @nouveau_fantog_update(%struct.nouveau_fantog_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

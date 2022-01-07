; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_fan.c_nouveau_therm_fan_safety_checks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_fan.c_nouveau_therm_fan_safety_checks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_therm = type { i32 }
%struct.nouveau_therm_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_therm*)* @nouveau_therm_fan_safety_checks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_therm_fan_safety_checks(%struct.nouveau_therm* %0) #0 {
  %2 = alloca %struct.nouveau_therm*, align 8
  %3 = alloca %struct.nouveau_therm_priv*, align 8
  store %struct.nouveau_therm* %0, %struct.nouveau_therm** %2, align 8
  %4 = load %struct.nouveau_therm*, %struct.nouveau_therm** %2, align 8
  %5 = bitcast %struct.nouveau_therm* %4 to i8*
  %6 = bitcast i8* %5 to %struct.nouveau_therm_priv*
  store %struct.nouveau_therm_priv* %6, %struct.nouveau_therm_priv** %3, align 8
  %7 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %3, align 8
  %8 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sgt i32 %12, 100
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %3, align 8
  %16 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 100, i32* %19, align 4
  br label %20

20:                                               ; preds = %14, %1
  %21 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %3, align 8
  %22 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 100
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %3, align 8
  %30 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i32 100, i32* %33, align 4
  br label %34

34:                                               ; preds = %28, %20
  %35 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %3, align 8
  %36 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %3, align 8
  %42 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %40, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %34
  %49 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %3, align 8
  %50 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %3, align 8
  %56 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 %54, i32* %59, align 4
  br label %60

60:                                               ; preds = %48, %34
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

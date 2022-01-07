; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_fanpwm.c_nouveau_fanpwm_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_fanpwm.c_nouveau_fanpwm_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_therm = type { i32 (%struct.nouveau_therm*, i32, i32*, i32*)* }
%struct.nouveau_therm_priv = type { i64 }
%struct.nouveau_fanpwm_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32, i32 }
%struct.nouveau_gpio = type { i32 (%struct.nouveau_gpio*, i32, i32, i32)* }
%struct.TYPE_4__ = type { i32 }

@NV_40 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_therm*)* @nouveau_fanpwm_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_fanpwm_get(%struct.nouveau_therm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_therm*, align 8
  %4 = alloca %struct.nouveau_therm_priv*, align 8
  %5 = alloca %struct.nouveau_fanpwm_priv*, align 8
  %6 = alloca %struct.nouveau_gpio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nouveau_therm* %0, %struct.nouveau_therm** %3, align 8
  %11 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %12 = bitcast %struct.nouveau_therm* %11 to i8*
  %13 = bitcast i8* %12 to %struct.nouveau_therm_priv*
  store %struct.nouveau_therm_priv* %13, %struct.nouveau_therm_priv** %4, align 8
  %14 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %4, align 8
  %15 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct.nouveau_fanpwm_priv*
  store %struct.nouveau_fanpwm_priv* %18, %struct.nouveau_fanpwm_priv** %5, align 8
  %19 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %20 = call %struct.nouveau_gpio* @nouveau_gpio(%struct.nouveau_therm* %19)
  store %struct.nouveau_gpio* %20, %struct.nouveau_gpio** %6, align 8
  %21 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %22 = call %struct.TYPE_4__* @nv_device(%struct.nouveau_therm* %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %26 = getelementptr inbounds %struct.nouveau_therm, %struct.nouveau_therm* %25, i32 0, i32 0
  %27 = load i32 (%struct.nouveau_therm*, i32, i32*, i32*)*, i32 (%struct.nouveau_therm*, i32, i32*, i32*)** %26, align 8
  %28 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %29 = load %struct.nouveau_fanpwm_priv*, %struct.nouveau_fanpwm_priv** %5, align 8
  %30 = getelementptr inbounds %struct.nouveau_fanpwm_priv, %struct.nouveau_fanpwm_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 %27(%struct.nouveau_therm* %28, i32 %32, i32* %8, i32* %9)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %64

36:                                               ; preds = %1
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %36
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @max(i32 %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @NV_40, align 4
  %45 = icmp sle i32 %43, %44
  br i1 %45, label %55, label %46

46:                                               ; preds = %39
  %47 = load %struct.nouveau_fanpwm_priv*, %struct.nouveau_fanpwm_priv** %5, align 8
  %48 = getelementptr inbounds %struct.nouveau_fanpwm_priv, %struct.nouveau_fanpwm_priv* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 1
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %46, %39
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = sub nsw i32 %56, %57
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %55, %46
  %60 = load i32, i32* %9, align 4
  %61 = mul nsw i32 %60, 100
  %62 = load i32, i32* %8, align 4
  %63 = sdiv i32 %61, %62
  store i32 %63, i32* %2, align 4
  br label %79

64:                                               ; preds = %36, %1
  %65 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %6, align 8
  %66 = getelementptr inbounds %struct.nouveau_gpio, %struct.nouveau_gpio* %65, i32 0, i32 0
  %67 = load i32 (%struct.nouveau_gpio*, i32, i32, i32)*, i32 (%struct.nouveau_gpio*, i32, i32, i32)** %66, align 8
  %68 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %6, align 8
  %69 = load %struct.nouveau_fanpwm_priv*, %struct.nouveau_fanpwm_priv** %5, align 8
  %70 = getelementptr inbounds %struct.nouveau_fanpwm_priv, %struct.nouveau_fanpwm_priv* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.nouveau_fanpwm_priv*, %struct.nouveau_fanpwm_priv** %5, align 8
  %74 = getelementptr inbounds %struct.nouveau_fanpwm_priv, %struct.nouveau_fanpwm_priv* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 %67(%struct.nouveau_gpio* %68, i32 0, i32 %72, i32 %76)
  %78 = mul nsw i32 %77, 100
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %64, %59
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.nouveau_gpio* @nouveau_gpio(%struct.nouveau_therm*) #1

declare dso_local %struct.TYPE_4__* @nv_device(%struct.nouveau_therm*) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

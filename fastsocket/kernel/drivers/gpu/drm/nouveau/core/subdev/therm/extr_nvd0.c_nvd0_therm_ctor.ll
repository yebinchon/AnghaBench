; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_nvd0.c_nvd0_therm_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_nvd0.c_nvd0_therm_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nvd0_therm_priv = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@nvd0_fan_pwm_ctrl = common dso_local global i32 0, align 4
@nvd0_fan_pwm_get = common dso_local global i32 0, align 4
@nvd0_fan_pwm_set = common dso_local global i32 0, align 4
@nvd0_fan_pwm_clock = common dso_local global i32 0, align 4
@nv50_temp_get = common dso_local global i32 0, align 4
@nva3_therm_fan_sense = common dso_local global i32 0, align 4
@nouveau_therm_program_alarms_polling = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nvd0_therm_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvd0_therm_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nvd0_therm_priv*, align 8
  %15 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nouveau_object** %5, %struct.nouveau_object*** %13, align 8
  %16 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %17 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %18 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %19 = call i32 @nouveau_therm_create(%struct.nouveau_object* %16, %struct.nouveau_object* %17, %struct.nouveau_oclass* %18, %struct.nvd0_therm_priv** %14)
  store i32 %19, i32* %15, align 4
  %20 = load %struct.nvd0_therm_priv*, %struct.nvd0_therm_priv** %14, align 8
  %21 = call %struct.nouveau_object* @nv_object(%struct.nvd0_therm_priv* %20)
  %22 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %21, %struct.nouveau_object** %22, align 8
  %23 = load i32, i32* %15, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* %15, align 4
  store i32 %26, i32* %7, align 4
  br label %67

27:                                               ; preds = %6
  %28 = load i32, i32* @nvd0_fan_pwm_ctrl, align 4
  %29 = load %struct.nvd0_therm_priv*, %struct.nvd0_therm_priv** %14, align 8
  %30 = getelementptr inbounds %struct.nvd0_therm_priv, %struct.nvd0_therm_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 5
  store i32 %28, i32* %32, align 4
  %33 = load i32, i32* @nvd0_fan_pwm_get, align 4
  %34 = load %struct.nvd0_therm_priv*, %struct.nvd0_therm_priv** %14, align 8
  %35 = getelementptr inbounds %struct.nvd0_therm_priv, %struct.nvd0_therm_priv* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 4
  store i32 %33, i32* %37, align 4
  %38 = load i32, i32* @nvd0_fan_pwm_set, align 4
  %39 = load %struct.nvd0_therm_priv*, %struct.nvd0_therm_priv** %14, align 8
  %40 = getelementptr inbounds %struct.nvd0_therm_priv, %struct.nvd0_therm_priv* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  store i32 %38, i32* %42, align 4
  %43 = load i32, i32* @nvd0_fan_pwm_clock, align 4
  %44 = load %struct.nvd0_therm_priv*, %struct.nvd0_therm_priv** %14, align 8
  %45 = getelementptr inbounds %struct.nvd0_therm_priv, %struct.nvd0_therm_priv* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  store i32 %43, i32* %47, align 4
  %48 = load i32, i32* @nv50_temp_get, align 4
  %49 = load %struct.nvd0_therm_priv*, %struct.nvd0_therm_priv** %14, align 8
  %50 = getelementptr inbounds %struct.nvd0_therm_priv, %struct.nvd0_therm_priv* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  store i32 %48, i32* %52, align 4
  %53 = load i32, i32* @nva3_therm_fan_sense, align 4
  %54 = load %struct.nvd0_therm_priv*, %struct.nvd0_therm_priv** %14, align 8
  %55 = getelementptr inbounds %struct.nvd0_therm_priv, %struct.nvd0_therm_priv* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32 %53, i32* %57, align 4
  %58 = load i32, i32* @nouveau_therm_program_alarms_polling, align 4
  %59 = load %struct.nvd0_therm_priv*, %struct.nvd0_therm_priv** %14, align 8
  %60 = getelementptr inbounds %struct.nvd0_therm_priv, %struct.nvd0_therm_priv* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %58, i32* %62, align 4
  %63 = load %struct.nvd0_therm_priv*, %struct.nvd0_therm_priv** %14, align 8
  %64 = getelementptr inbounds %struct.nvd0_therm_priv, %struct.nvd0_therm_priv* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = call i32 @nouveau_therm_preinit(%struct.TYPE_6__* %65)
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %27, %25
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local i32 @nouveau_therm_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, %struct.nvd0_therm_priv**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nvd0_therm_priv*) #1

declare dso_local i32 @nouveau_therm_preinit(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

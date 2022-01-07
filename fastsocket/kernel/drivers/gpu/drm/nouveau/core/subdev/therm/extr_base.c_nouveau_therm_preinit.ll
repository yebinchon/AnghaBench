; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_base.c_nouveau_therm_preinit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_base.c_nouveau_therm_preinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_therm = type { i32 }

@NOUVEAU_THERM_CTRL_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_therm_preinit(%struct.nouveau_therm* %0) #0 {
  %2 = alloca %struct.nouveau_therm*, align 8
  store %struct.nouveau_therm* %0, %struct.nouveau_therm** %2, align 8
  %3 = load %struct.nouveau_therm*, %struct.nouveau_therm** %2, align 8
  %4 = call i32 @nouveau_therm_sensor_ctor(%struct.nouveau_therm* %3)
  %5 = load %struct.nouveau_therm*, %struct.nouveau_therm** %2, align 8
  %6 = call i32 @nouveau_therm_ic_ctor(%struct.nouveau_therm* %5)
  %7 = load %struct.nouveau_therm*, %struct.nouveau_therm** %2, align 8
  %8 = call i32 @nouveau_therm_fan_ctor(%struct.nouveau_therm* %7)
  %9 = load %struct.nouveau_therm*, %struct.nouveau_therm** %2, align 8
  %10 = load i32, i32* @NOUVEAU_THERM_CTRL_NONE, align 4
  %11 = call i32 @nouveau_therm_fan_mode(%struct.nouveau_therm* %9, i32 %10)
  %12 = load %struct.nouveau_therm*, %struct.nouveau_therm** %2, align 8
  %13 = call i32 @nouveau_therm_sensor_preinit(%struct.nouveau_therm* %12)
  ret i32 0
}

declare dso_local i32 @nouveau_therm_sensor_ctor(%struct.nouveau_therm*) #1

declare dso_local i32 @nouveau_therm_ic_ctor(%struct.nouveau_therm*) #1

declare dso_local i32 @nouveau_therm_fan_ctor(%struct.nouveau_therm*) #1

declare dso_local i32 @nouveau_therm_fan_mode(%struct.nouveau_therm*, i32) #1

declare dso_local i32 @nouveau_therm_sensor_preinit(%struct.nouveau_therm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

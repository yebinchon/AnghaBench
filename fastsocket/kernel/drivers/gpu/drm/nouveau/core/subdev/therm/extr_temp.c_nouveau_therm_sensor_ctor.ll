; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_temp.c_nouveau_therm_sensor_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_temp.c_nouveau_therm_sensor_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_therm = type { i32 }
%struct.nouveau_therm_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nouveau_bios = type { i32 }

@alarm_timer_callback = common dso_local global i32 0, align 4
@NVBIOS_THERM_DOMAIN_CORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"nvbios_therm_sensor_parse failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_therm_sensor_ctor(%struct.nouveau_therm* %0) #0 {
  %2 = alloca %struct.nouveau_therm*, align 8
  %3 = alloca %struct.nouveau_therm_priv*, align 8
  %4 = alloca %struct.nouveau_bios*, align 8
  store %struct.nouveau_therm* %0, %struct.nouveau_therm** %2, align 8
  %5 = load %struct.nouveau_therm*, %struct.nouveau_therm** %2, align 8
  %6 = bitcast %struct.nouveau_therm* %5 to i8*
  %7 = bitcast i8* %6 to %struct.nouveau_therm_priv*
  store %struct.nouveau_therm_priv* %7, %struct.nouveau_therm_priv** %3, align 8
  %8 = load %struct.nouveau_therm*, %struct.nouveau_therm** %2, align 8
  %9 = call %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_therm* %8)
  store %struct.nouveau_bios* %9, %struct.nouveau_bios** %4, align 8
  %10 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %3, align 8
  %11 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* @alarm_timer_callback, align 4
  %14 = call i32 @nouveau_alarm_init(i32* %12, i32 %13)
  %15 = load %struct.nouveau_therm*, %struct.nouveau_therm** %2, align 8
  %16 = call i32 @nouveau_therm_temp_set_defaults(%struct.nouveau_therm* %15)
  %17 = load %struct.nouveau_bios*, %struct.nouveau_bios** %4, align 8
  %18 = load i32, i32* @NVBIOS_THERM_DOMAIN_CORE, align 4
  %19 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %3, align 8
  %20 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %19, i32 0, i32 0
  %21 = call i64 @nvbios_therm_sensor_parse(%struct.nouveau_bios* %17, i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.nouveau_therm*, %struct.nouveau_therm** %2, align 8
  %25 = call i32 @nv_error(%struct.nouveau_therm* %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %1
  %27 = load %struct.nouveau_therm*, %struct.nouveau_therm** %2, align 8
  %28 = call i32 @nouveau_therm_temp_safety_checks(%struct.nouveau_therm* %27)
  ret i32 0
}

declare dso_local %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_therm*) #1

declare dso_local i32 @nouveau_alarm_init(i32*, i32) #1

declare dso_local i32 @nouveau_therm_temp_set_defaults(%struct.nouveau_therm*) #1

declare dso_local i64 @nvbios_therm_sensor_parse(%struct.nouveau_bios*, i32, i32*) #1

declare dso_local i32 @nv_error(%struct.nouveau_therm*, i8*) #1

declare dso_local i32 @nouveau_therm_temp_safety_checks(%struct.nouveau_therm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

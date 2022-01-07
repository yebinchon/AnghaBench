; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_temp.c_nouveau_therm_temp_safety_checks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_temp.c_nouveau_therm_temp_safety_checks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_therm = type { i32 }
%struct.nouveau_therm_priv = type { %struct.nvbios_therm_sensor }
%struct.nvbios_therm_sensor = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8* }

@u8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_therm*)* @nouveau_therm_temp_safety_checks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_therm_temp_safety_checks(%struct.nouveau_therm* %0) #0 {
  %2 = alloca %struct.nouveau_therm*, align 8
  %3 = alloca %struct.nouveau_therm_priv*, align 8
  %4 = alloca %struct.nvbios_therm_sensor*, align 8
  store %struct.nouveau_therm* %0, %struct.nouveau_therm** %2, align 8
  %5 = load %struct.nouveau_therm*, %struct.nouveau_therm** %2, align 8
  %6 = bitcast %struct.nouveau_therm* %5 to i8*
  %7 = bitcast i8* %6 to %struct.nouveau_therm_priv*
  store %struct.nouveau_therm_priv* %7, %struct.nouveau_therm_priv** %3, align 8
  %8 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %3, align 8
  %9 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %8, i32 0, i32 0
  store %struct.nvbios_therm_sensor* %9, %struct.nvbios_therm_sensor** %4, align 8
  %10 = load i32, i32* @u8, align 4
  %11 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %4, align 8
  %12 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i8* @max_t(i32 %10, i8* %14, i32 2)
  %16 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %4, align 8
  %17 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i8* %15, i8** %18, align 8
  %19 = load i32, i32* @u8, align 4
  %20 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %4, align 8
  %21 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i8* @max_t(i32 %19, i8* %23, i32 2)
  %25 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %4, align 8
  %26 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i8* %24, i8** %27, align 8
  %28 = load i32, i32* @u8, align 4
  %29 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %4, align 8
  %30 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @max_t(i32 %28, i8* %32, i32 2)
  %34 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %4, align 8
  %35 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i8* %33, i8** %36, align 8
  %37 = load i32, i32* @u8, align 4
  %38 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %4, align 8
  %39 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i8* @max_t(i32 %37, i8* %41, i32 2)
  %43 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %4, align 8
  %44 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  store i8* %42, i8** %45, align 8
  ret void
}

declare dso_local i8* @max_t(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

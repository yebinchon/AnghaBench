; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_nv50.c_nv50_therm_program_alarms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_nv50.c_nv50_therm_program_alarms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_therm = type { i32 }
%struct.nouveau_therm_priv = type { %struct.TYPE_6__, %struct.nvbios_therm_sensor }
%struct.TYPE_6__ = type { i32 }
%struct.nvbios_therm_sensor = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [58 x i8] c"Programmed thresholds [ %d(%d), %d(%d), %d(%d), %d(%d) ]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_therm*)* @nv50_therm_program_alarms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_therm_program_alarms(%struct.nouveau_therm* %0) #0 {
  %2 = alloca %struct.nouveau_therm*, align 8
  %3 = alloca %struct.nouveau_therm_priv*, align 8
  %4 = alloca %struct.nvbios_therm_sensor*, align 8
  %5 = alloca i64, align 8
  store %struct.nouveau_therm* %0, %struct.nouveau_therm** %2, align 8
  %6 = load %struct.nouveau_therm*, %struct.nouveau_therm** %2, align 8
  %7 = bitcast %struct.nouveau_therm* %6 to i8*
  %8 = bitcast i8* %7 to %struct.nouveau_therm_priv*
  store %struct.nouveau_therm_priv* %8, %struct.nouveau_therm_priv** %3, align 8
  %9 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %3, align 8
  %10 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %9, i32 0, i32 1
  store %struct.nvbios_therm_sensor* %10, %struct.nvbios_therm_sensor** %4, align 8
  %11 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %3, align 8
  %12 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.nouveau_therm*, %struct.nouveau_therm** %2, align 8
  %17 = call i32 @nv_wr32(%struct.nouveau_therm* %16, i32 131072, i32 1023)
  %18 = load %struct.nouveau_therm*, %struct.nouveau_therm** %2, align 8
  %19 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %4, align 8
  %20 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @nv_wr32(%struct.nouveau_therm* %18, i32 132228, i32 %22)
  %24 = load %struct.nouveau_therm*, %struct.nouveau_therm** %2, align 8
  %25 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %4, align 8
  %26 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @nv_wr32(%struct.nouveau_therm* %24, i32 132224, i32 %28)
  %30 = load %struct.nouveau_therm*, %struct.nouveau_therm** %2, align 8
  %31 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %4, align 8
  %32 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @nv_wr32(%struct.nouveau_therm* %30, i32 132292, i32 %34)
  %36 = load %struct.nouveau_therm*, %struct.nouveau_therm** %2, align 8
  %37 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %4, align 8
  %38 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @nv_wr32(%struct.nouveau_therm* %36, i32 132288, i32 %40)
  %42 = load %struct.nouveau_therm*, %struct.nouveau_therm** %2, align 8
  %43 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %4, align 8
  %44 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @nv_wr32(%struct.nouveau_therm* %42, i32 132116, i32 %46)
  %48 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %3, align 8
  %49 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load %struct.nouveau_therm*, %struct.nouveau_therm** %2, align 8
  %54 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %4, align 8
  %55 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %4, align 8
  %59 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %4, align 8
  %63 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %4, align 8
  %67 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %4, align 8
  %71 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %4, align 8
  %75 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %4, align 8
  %79 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %4, align 8
  %83 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @nv_info(%struct.nouveau_therm* %53, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %61, i32 %65, i32 %69, i32 %73, i32 %77, i32 %81, i32 %85)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nv_wr32(%struct.nouveau_therm*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nv_info(%struct.nouveau_therm*, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

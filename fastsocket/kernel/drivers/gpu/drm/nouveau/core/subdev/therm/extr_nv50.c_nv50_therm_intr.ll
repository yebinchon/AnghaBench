; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_nv50.c_nv50_therm_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_nv50.c_nv50_therm_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_subdev = type { i32 }
%struct.nouveau_therm = type { i32 }
%struct.nouveau_therm_priv = type { %struct.TYPE_2__, %struct.nvbios_therm_sensor }
%struct.TYPE_2__ = type { i32 }
%struct.nvbios_therm_sensor = type { i32, i32, i32, i32 }

@NOUVEAU_THERM_THRS_DOWNCLOCK = common dso_local global i32 0, align 4
@NOUVEAU_THERM_THRS_SHUTDOWN = common dso_local global i32 0, align 4
@NOUVEAU_THERM_THRS_FANBOOST = common dso_local global i32 0, align 4
@NOUVEAU_THERM_THRS_CRITICAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unhandled intr 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_subdev*)* @nv50_therm_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_therm_intr(%struct.nouveau_subdev* %0) #0 {
  %2 = alloca %struct.nouveau_subdev*, align 8
  %3 = alloca %struct.nouveau_therm*, align 8
  %4 = alloca %struct.nouveau_therm_priv*, align 8
  %5 = alloca %struct.nvbios_therm_sensor*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.nouveau_subdev* %0, %struct.nouveau_subdev** %2, align 8
  %8 = load %struct.nouveau_subdev*, %struct.nouveau_subdev** %2, align 8
  %9 = call %struct.nouveau_therm* @nouveau_therm(%struct.nouveau_subdev* %8)
  store %struct.nouveau_therm* %9, %struct.nouveau_therm** %3, align 8
  %10 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %11 = bitcast %struct.nouveau_therm* %10 to i8*
  %12 = bitcast i8* %11 to %struct.nouveau_therm_priv*
  store %struct.nouveau_therm_priv* %12, %struct.nouveau_therm_priv** %4, align 8
  %13 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %4, align 8
  %14 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %13, i32 0, i32 1
  store %struct.nvbios_therm_sensor* %14, %struct.nvbios_therm_sensor** %5, align 8
  %15 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %4, align 8
  %16 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %21 = call i32 @nv_rd32(%struct.nouveau_therm* %20, i32 131328)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, 2
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %1
  %26 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %27 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %5, align 8
  %28 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %27, i32 0, i32 3
  %29 = load i32, i32* @NOUVEAU_THERM_THRS_DOWNCLOCK, align 4
  %30 = call i32 @nv50_therm_threshold_hyst_emulation(%struct.nouveau_therm* %26, i32 132116, i32 24, i32* %28, i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, -3
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %25, %1
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %39 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %5, align 8
  %40 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %39, i32 0, i32 2
  %41 = load i32, i32* @NOUVEAU_THERM_THRS_SHUTDOWN, align 4
  %42 = call i32 @nv50_therm_threshold_hyst_emulation(%struct.nouveau_therm* %38, i32 132224, i32 20, i32* %40, i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, -5
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %37, %33
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %51 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %5, align 8
  %52 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %51, i32 0, i32 1
  %53 = load i32, i32* @NOUVEAU_THERM_THRS_FANBOOST, align 4
  %54 = call i32 @nv50_therm_threshold_hyst_emulation(%struct.nouveau_therm* %50, i32 132292, i32 21, i32* %52, i32 %53)
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, -9
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %49, %45
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %58, 16
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %63 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %5, align 8
  %64 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %63, i32 0, i32 0
  %65 = load i32, i32* @NOUVEAU_THERM_THRS_CRITICAL, align 4
  %66 = call i32 @nv50_therm_threshold_hyst_emulation(%struct.nouveau_therm* %62, i32 132288, i32 22, i32* %64, i32 %65)
  %67 = load i32, i32* %7, align 4
  %68 = and i32 %67, -17
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %61, %57
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @nv_error(%struct.nouveau_therm* %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %72, %69
  %77 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %78 = call i32 @nv_wr32(%struct.nouveau_therm* %77, i32 131328, i32 -1)
  %79 = load %struct.nouveau_therm*, %struct.nouveau_therm** %3, align 8
  %80 = call i32 @nv_wr32(%struct.nouveau_therm* %79, i32 4352, i32 65536)
  %81 = load %struct.nouveau_therm_priv*, %struct.nouveau_therm_priv** %4, align 8
  %82 = getelementptr inbounds %struct.nouveau_therm_priv, %struct.nouveau_therm_priv* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %6, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  ret void
}

declare dso_local %struct.nouveau_therm* @nouveau_therm(%struct.nouveau_subdev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_therm*, i32) #1

declare dso_local i32 @nv50_therm_threshold_hyst_emulation(%struct.nouveau_therm*, i32, i32, i32*, i32) #1

declare dso_local i32 @nv_error(%struct.nouveau_therm*, i8*, i32) #1

declare dso_local i32 @nv_wr32(%struct.nouveau_therm*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

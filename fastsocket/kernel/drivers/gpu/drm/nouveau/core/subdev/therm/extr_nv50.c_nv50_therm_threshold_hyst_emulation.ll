; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_nv50.c_nv50_therm_threshold_hyst_emulation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/therm/extr_nv50.c_nv50_therm_threshold_hyst_emulation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_therm = type { i32 (%struct.nouveau_therm*)* }
%struct.nvbios_therm_threshold = type { i32, i32 }

@NOUVEAU_THERM_THRS_HIGHER = common dso_local global i32 0, align 4
@NOUVEAU_THERM_THRS_LOWER = common dso_local global i32 0, align 4
@NOUVEAU_THERM_THRS_RISING = common dso_local global i32 0, align 4
@NOUVEAU_THERM_THRS_FALLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_therm*, i32, i32, %struct.nvbios_therm_threshold*, i32)* @nv50_therm_threshold_hyst_emulation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_therm_threshold_hyst_emulation(%struct.nouveau_therm* %0, i32 %1, i32 %2, %struct.nvbios_therm_threshold* %3, i32 %4) #0 {
  %6 = alloca %struct.nouveau_therm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvbios_therm_threshold*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nouveau_therm* %0, %struct.nouveau_therm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.nvbios_therm_threshold* %3, %struct.nvbios_therm_threshold** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.nouveau_therm*, %struct.nouveau_therm** %6, align 8
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @nouveau_therm_sensor_get_threshold_state(%struct.nouveau_therm* %16, i32 %17)
  store i32 %18, i32* %12, align 4
  %19 = load %struct.nouveau_therm*, %struct.nouveau_therm** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @nv_rd32(%struct.nouveau_therm* %19, i32 %20)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = load %struct.nvbios_therm_threshold*, %struct.nvbios_therm_threshold** %9, align 8
  %24 = getelementptr inbounds %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %5
  %28 = load %struct.nouveau_therm*, %struct.nouveau_therm** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.nvbios_therm_threshold*, %struct.nvbios_therm_threshold** %9, align 8
  %31 = getelementptr inbounds %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nvbios_therm_threshold*, %struct.nvbios_therm_threshold** %9, align 8
  %34 = getelementptr inbounds %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %32, %35
  %37 = call i32 @nv_wr32(%struct.nouveau_therm* %28, i32 %29, i32 %36)
  %38 = load i32, i32* @NOUVEAU_THERM_THRS_HIGHER, align 4
  store i32 %38, i32* %13, align 4
  br label %47

39:                                               ; preds = %5
  %40 = load %struct.nouveau_therm*, %struct.nouveau_therm** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.nvbios_therm_threshold*, %struct.nvbios_therm_threshold** %9, align 8
  %43 = getelementptr inbounds %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @nv_wr32(%struct.nouveau_therm* %40, i32 %41, i32 %44)
  %46 = load i32, i32* @NOUVEAU_THERM_THRS_LOWER, align 4
  store i32 %46, i32* %13, align 4
  br label %47

47:                                               ; preds = %39, %27
  %48 = load %struct.nouveau_therm*, %struct.nouveau_therm** %6, align 8
  %49 = getelementptr inbounds %struct.nouveau_therm, %struct.nouveau_therm* %48, i32 0, i32 0
  %50 = load i32 (%struct.nouveau_therm*)*, i32 (%struct.nouveau_therm*)** %49, align 8
  %51 = load %struct.nouveau_therm*, %struct.nouveau_therm** %6, align 8
  %52 = call i32 %50(%struct.nouveau_therm* %51)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @NOUVEAU_THERM_THRS_LOWER, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %47
  %57 = load i32, i32* %15, align 4
  %58 = load %struct.nvbios_therm_threshold*, %struct.nvbios_therm_threshold** %9, align 8
  %59 = getelementptr inbounds %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %57, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* @NOUVEAU_THERM_THRS_HIGHER, align 4
  store i32 %63, i32* %13, align 4
  br label %81

64:                                               ; preds = %56, %47
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* @NOUVEAU_THERM_THRS_HIGHER, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %64
  %69 = load i32, i32* %15, align 4
  %70 = load %struct.nvbios_therm_threshold*, %struct.nvbios_therm_threshold** %9, align 8
  %71 = getelementptr inbounds %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.nvbios_therm_threshold*, %struct.nvbios_therm_threshold** %9, align 8
  %74 = getelementptr inbounds %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %72, %75
  %77 = icmp slt i32 %69, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %68
  %79 = load i32, i32* @NOUVEAU_THERM_THRS_LOWER, align 4
  store i32 %79, i32* %13, align 4
  br label %80

80:                                               ; preds = %78, %68, %64
  br label %81

81:                                               ; preds = %80, %62
  %82 = load %struct.nouveau_therm*, %struct.nouveau_therm** %6, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @nouveau_therm_sensor_set_threshold_state(%struct.nouveau_therm* %82, i32 %83, i32 %84)
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = load i32, i32* @NOUVEAU_THERM_THRS_RISING, align 4
  store i32 %90, i32* %11, align 4
  br label %99

91:                                               ; preds = %81
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %13, align 4
  %94 = icmp ugt i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i32, i32* @NOUVEAU_THERM_THRS_FALLING, align 4
  store i32 %96, i32* %11, align 4
  br label %98

97:                                               ; preds = %91
  br label %104

98:                                               ; preds = %95
  br label %99

99:                                               ; preds = %98, %89
  %100 = load %struct.nouveau_therm*, %struct.nouveau_therm** %6, align 8
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @nouveau_therm_sensor_event(%struct.nouveau_therm* %100, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %99, %97
  ret void
}

declare dso_local i32 @nouveau_therm_sensor_get_threshold_state(%struct.nouveau_therm*, i32) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_therm*, i32) #1

declare dso_local i32 @nv_wr32(%struct.nouveau_therm*, i32, i32) #1

declare dso_local i32 @nouveau_therm_sensor_set_threshold_state(%struct.nouveau_therm*, i32, i32) #1

declare dso_local i32 @nouveau_therm_sensor_event(%struct.nouveau_therm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

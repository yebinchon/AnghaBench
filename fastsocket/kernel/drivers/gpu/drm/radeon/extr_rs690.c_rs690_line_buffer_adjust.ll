; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_rs690.c_rs690_line_buffer_adjust.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_rs690.c_rs690_line_buffer_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.drm_display_mode = type { i32 }

@R_006520_DC_LB_MEMORY_SPLIT = common dso_local global i32 0, align 4
@C_006520_DC_LB_MEMORY_SPLIT = common dso_local global i32 0, align 4
@C_006520_DC_LB_MEMORY_SPLIT_MODE = common dso_local global i32 0, align 4
@V_006520_DC_LB_MEMORY_SPLIT_D1_3Q_D2_1Q = common dso_local global i32 0, align 4
@V_006520_DC_LB_MEMORY_SPLIT_D1HALF_D2HALF = common dso_local global i32 0, align 4
@V_006520_DC_LB_MEMORY_SPLIT_D1_1Q_D2_3Q = common dso_local global i32 0, align 4
@V_006520_DC_LB_MEMORY_SPLIT_D1_ONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rs690_line_buffer_adjust(%struct.radeon_device* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %8 = load i32, i32* @R_006520_DC_LB_MEMORY_SPLIT, align 4
  %9 = call i32 @RREG32(i32 %8)
  %10 = load i32, i32* @C_006520_DC_LB_MEMORY_SPLIT, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @C_006520_DC_LB_MEMORY_SPLIT_MODE, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %7, align 4
  %16 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %17 = icmp ne %struct.drm_display_mode* %16, null
  br i1 %17, label %18, label %71

18:                                               ; preds = %3
  %19 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %20 = icmp ne %struct.drm_display_mode* %19, null
  br i1 %20, label %21, label %71

21:                                               ; preds = %18
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %23 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %26 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %24, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %21
  %30 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %31 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %32, 2560
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @V_006520_DC_LB_MEMORY_SPLIT_D1_3Q_D2_1Q, align 4
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %42

38:                                               ; preds = %29
  %39 = load i32, i32* @V_006520_DC_LB_MEMORY_SPLIT_D1HALF_D2HALF, align 4
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %38, %34
  br label %70

43:                                               ; preds = %21
  %44 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %45 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %48 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %46, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %43
  %52 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %53 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp sgt i32 %54, 2560
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* @V_006520_DC_LB_MEMORY_SPLIT_D1_1Q_D2_3Q, align 4
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  br label %64

60:                                               ; preds = %51
  %61 = load i32, i32* @V_006520_DC_LB_MEMORY_SPLIT_D1HALF_D2HALF, align 4
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %60, %56
  br label %69

65:                                               ; preds = %43
  %66 = load i32, i32* @V_006520_DC_LB_MEMORY_SPLIT_D1HALF_D2HALF, align 4
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %65, %64
  br label %70

70:                                               ; preds = %69, %42
  br label %87

71:                                               ; preds = %18, %3
  %72 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %73 = icmp ne %struct.drm_display_mode* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32, i32* @V_006520_DC_LB_MEMORY_SPLIT_D1_ONLY, align 4
  %76 = load i32, i32* %7, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %7, align 4
  br label %86

78:                                               ; preds = %71
  %79 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %80 = icmp ne %struct.drm_display_mode* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i32, i32* @V_006520_DC_LB_MEMORY_SPLIT_D1_1Q_D2_3Q, align 4
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %81, %78
  br label %86

86:                                               ; preds = %85, %74
  br label %87

87:                                               ; preds = %86, %70
  %88 = load i32, i32* @R_006520_DC_LB_MEMORY_SPLIT, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @WREG32(i32 %88, i32 %89)
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

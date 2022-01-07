; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_pm.c_radeon_pm_print_states.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_pm.c_radeon_pm_print_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, %struct.radeon_power_state* }
%struct.radeon_power_state = type { i64, i32, i32, %struct.radeon_pm_clock_info*, i32 }
%struct.radeon_pm_clock_info = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"%d Power State(s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"State %d: %s\0A\00", align 1
@radeon_pm_state_type_name = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"\09Default\00", align 1
@RADEON_IS_PCIE = common dso_local global i32 0, align 4
@RADEON_IS_IGP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"\09%d PCIE Lanes\0A\00", align 1
@RADEON_PM_STATE_SINGLE_DISPLAY_ONLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"\09Single display only\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"\09%d Clock Mode(s)\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"\09\09%d e: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"\09\09%d e: %d\09m: %d\09v: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @radeon_pm_print_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_pm_print_states(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_power_state*, align 8
  %6 = alloca %struct.radeon_pm_clock_info*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %10)
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %122, %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %125

19:                                               ; preds = %12
  %20 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load %struct.radeon_power_state*, %struct.radeon_power_state** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.radeon_power_state, %struct.radeon_power_state* %23, i64 %25
  store %struct.radeon_power_state* %26, %struct.radeon_power_state** %5, align 8
  %27 = load i32, i32* %3, align 4
  %28 = load i32*, i32** @radeon_pm_state_type_name, align 8
  %29 = load %struct.radeon_power_state*, %struct.radeon_power_state** %5, align 8
  %30 = getelementptr inbounds %struct.radeon_power_state, %struct.radeon_power_state* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %33)
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %37 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %35, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %19
  %42 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %19
  %44 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %45 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @RADEON_IS_PCIE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %43
  %51 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %52 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @RADEON_IS_IGP, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %50
  %58 = load %struct.radeon_power_state*, %struct.radeon_power_state** %5, align 8
  %59 = getelementptr inbounds %struct.radeon_power_state, %struct.radeon_power_state* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %57, %50, %43
  %63 = load %struct.radeon_power_state*, %struct.radeon_power_state** %5, align 8
  %64 = getelementptr inbounds %struct.radeon_power_state, %struct.radeon_power_state* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @RADEON_PM_STATE_SINGLE_DISPLAY_ONLY, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %62
  %72 = load %struct.radeon_power_state*, %struct.radeon_power_state** %5, align 8
  %73 = getelementptr inbounds %struct.radeon_power_state, %struct.radeon_power_state* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %74)
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %118, %71
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.radeon_power_state*, %struct.radeon_power_state** %5, align 8
  %79 = getelementptr inbounds %struct.radeon_power_state, %struct.radeon_power_state* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %121

82:                                               ; preds = %76
  %83 = load %struct.radeon_power_state*, %struct.radeon_power_state** %5, align 8
  %84 = getelementptr inbounds %struct.radeon_power_state, %struct.radeon_power_state* %83, i32 0, i32 3
  %85 = load %struct.radeon_pm_clock_info*, %struct.radeon_pm_clock_info** %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.radeon_pm_clock_info, %struct.radeon_pm_clock_info* %85, i64 %87
  store %struct.radeon_pm_clock_info* %88, %struct.radeon_pm_clock_info** %6, align 8
  %89 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %90 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @RADEON_IS_IGP, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %82
  %96 = load i32, i32* %4, align 4
  %97 = load %struct.radeon_pm_clock_info*, %struct.radeon_pm_clock_info** %6, align 8
  %98 = getelementptr inbounds %struct.radeon_pm_clock_info, %struct.radeon_pm_clock_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %99, 10
  %101 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %96, i32 %100)
  br label %117

102:                                              ; preds = %82
  %103 = load i32, i32* %4, align 4
  %104 = load %struct.radeon_pm_clock_info*, %struct.radeon_pm_clock_info** %6, align 8
  %105 = getelementptr inbounds %struct.radeon_pm_clock_info, %struct.radeon_pm_clock_info* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = mul nsw i32 %106, 10
  %108 = load %struct.radeon_pm_clock_info*, %struct.radeon_pm_clock_info** %6, align 8
  %109 = getelementptr inbounds %struct.radeon_pm_clock_info, %struct.radeon_pm_clock_info* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %110, 10
  %112 = load %struct.radeon_pm_clock_info*, %struct.radeon_pm_clock_info** %6, align 8
  %113 = getelementptr inbounds %struct.radeon_pm_clock_info, %struct.radeon_pm_clock_info* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %103, i32 %107, i32 %111, i32 %115)
  br label %117

117:                                              ; preds = %102, %95
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %4, align 4
  br label %76

121:                                              ; preds = %76
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %3, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %3, align 4
  br label %12

125:                                              ; preds = %12
  ret void
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

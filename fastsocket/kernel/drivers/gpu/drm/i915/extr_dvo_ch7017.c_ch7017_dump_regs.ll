; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_dvo_ch7017.c_ch7017_dump_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_dvo_ch7017.c_ch7017_dump_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dvo_device = type { i32 }

@CH7017_HORIZONTAL_ACTIVE_PIXEL_INPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"CH7017_HORIZONTAL_ACTIVE_PIXEL_INPUT: %02x\0A\00", align 1
@CH7017_HORIZONTAL_ACTIVE_PIXEL_OUTPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"CH7017_HORIZONTAL_ACTIVE_PIXEL_OUTPUT: %02x\0A\00", align 1
@CH7017_VERTICAL_ACTIVE_LINE_OUTPUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"CH7017_VERTICAL_ACTIVE_LINE_OUTPUT: %02x\0A\00", align 1
@CH7017_ACTIVE_INPUT_LINE_OUTPUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"CH7017_ACTIVE_INPUT_LINE_OUTPUT: %02x\0A\00", align 1
@CH7017_LVDS_PLL_VCO_CONTROL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"CH7017_LVDS_PLL_VCO_CONTROL: %02x\0A\00", align 1
@CH7017_LVDS_PLL_FEEDBACK_DIV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"CH7017_LVDS_PLL_FEEDBACK_DIV: %02x\0A\00", align 1
@CH7017_LVDS_CONTROL_2 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"CH7017_LVDS_CONTROL_2: %02x\0A\00", align 1
@CH7017_OUTPUTS_ENABLE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"CH7017_OUTPUTS_ENABLE: %02x\0A\00", align 1
@CH7017_LVDS_POWER_DOWN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"CH7017_LVDS_POWER_DOWN: %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dvo_device*)* @ch7017_dump_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ch7017_dump_regs(%struct.intel_dvo_device* %0) #0 {
  %2 = alloca %struct.intel_dvo_device*, align 8
  %3 = alloca i32, align 4
  store %struct.intel_dvo_device* %0, %struct.intel_dvo_device** %2, align 8
  br label %4

4:                                                ; preds = %1
  %5 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %6 = load i32, i32* @CH7017_HORIZONTAL_ACTIVE_PIXEL_INPUT, align 4
  %7 = call i32 (%struct.intel_dvo_device*, i32, i32*, ...) bitcast (i32 (...)* @ch7017_read to i32 (%struct.intel_dvo_device*, i32, i32*, ...)*)(%struct.intel_dvo_device* %5, i32 %6, i32* %3)
  %8 = load i32, i32* %3, align 4
  %9 = call i32 (i8*, i32, ...) bitcast (i32 (...)* @DRM_DEBUG_KMS to i32 (i8*, i32, ...)*)(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %8)
  br label %10

10:                                               ; preds = %4
  br label %11

11:                                               ; preds = %10
  %12 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %13 = load i32, i32* @CH7017_HORIZONTAL_ACTIVE_PIXEL_OUTPUT, align 4
  %14 = call i32 (%struct.intel_dvo_device*, i32, i32*, ...) bitcast (i32 (...)* @ch7017_read to i32 (%struct.intel_dvo_device*, i32, i32*, ...)*)(%struct.intel_dvo_device* %12, i32 %13, i32* %3)
  %15 = load i32, i32* %3, align 4
  %16 = call i32 (i8*, i32, ...) bitcast (i32 (...)* @DRM_DEBUG_KMS to i32 (i8*, i32, ...)*)(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %11
  br label %18

18:                                               ; preds = %17
  %19 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %20 = load i32, i32* @CH7017_VERTICAL_ACTIVE_LINE_OUTPUT, align 4
  %21 = call i32 (%struct.intel_dvo_device*, i32, i32*, ...) bitcast (i32 (...)* @ch7017_read to i32 (%struct.intel_dvo_device*, i32, i32*, ...)*)(%struct.intel_dvo_device* %19, i32 %20, i32* %3)
  %22 = load i32, i32* %3, align 4
  %23 = call i32 (i8*, i32, ...) bitcast (i32 (...)* @DRM_DEBUG_KMS to i32 (i8*, i32, ...)*)(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %27 = load i32, i32* @CH7017_ACTIVE_INPUT_LINE_OUTPUT, align 4
  %28 = call i32 (%struct.intel_dvo_device*, i32, i32*, ...) bitcast (i32 (...)* @ch7017_read to i32 (%struct.intel_dvo_device*, i32, i32*, ...)*)(%struct.intel_dvo_device* %26, i32 %27, i32* %3)
  %29 = load i32, i32* %3, align 4
  %30 = call i32 (i8*, i32, ...) bitcast (i32 (...)* @DRM_DEBUG_KMS to i32 (i8*, i32, ...)*)(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %34 = load i32, i32* @CH7017_LVDS_PLL_VCO_CONTROL, align 4
  %35 = call i32 (%struct.intel_dvo_device*, i32, i32*, ...) bitcast (i32 (...)* @ch7017_read to i32 (%struct.intel_dvo_device*, i32, i32*, ...)*)(%struct.intel_dvo_device* %33, i32 %34, i32* %3)
  %36 = load i32, i32* %3, align 4
  %37 = call i32 (i8*, i32, ...) bitcast (i32 (...)* @DRM_DEBUG_KMS to i32 (i8*, i32, ...)*)(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %41 = load i32, i32* @CH7017_LVDS_PLL_FEEDBACK_DIV, align 4
  %42 = call i32 (%struct.intel_dvo_device*, i32, i32*, ...) bitcast (i32 (...)* @ch7017_read to i32 (%struct.intel_dvo_device*, i32, i32*, ...)*)(%struct.intel_dvo_device* %40, i32 %41, i32* %3)
  %43 = load i32, i32* %3, align 4
  %44 = call i32 (i8*, i32, ...) bitcast (i32 (...)* @DRM_DEBUG_KMS to i32 (i8*, i32, ...)*)(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %48 = load i32, i32* @CH7017_LVDS_CONTROL_2, align 4
  %49 = call i32 (%struct.intel_dvo_device*, i32, i32*, ...) bitcast (i32 (...)* @ch7017_read to i32 (%struct.intel_dvo_device*, i32, i32*, ...)*)(%struct.intel_dvo_device* %47, i32 %48, i32* %3)
  %50 = load i32, i32* %3, align 4
  %51 = call i32 (i8*, i32, ...) bitcast (i32 (...)* @DRM_DEBUG_KMS to i32 (i8*, i32, ...)*)(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %55 = load i32, i32* @CH7017_OUTPUTS_ENABLE, align 4
  %56 = call i32 (%struct.intel_dvo_device*, i32, i32*, ...) bitcast (i32 (...)* @ch7017_read to i32 (%struct.intel_dvo_device*, i32, i32*, ...)*)(%struct.intel_dvo_device* %54, i32 %55, i32* %3)
  %57 = load i32, i32* %3, align 4
  %58 = call i32 (i8*, i32, ...) bitcast (i32 (...)* @DRM_DEBUG_KMS to i32 (i8*, i32, ...)*)(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %62 = load i32, i32* @CH7017_LVDS_POWER_DOWN, align 4
  %63 = call i32 (%struct.intel_dvo_device*, i32, i32*, ...) bitcast (i32 (...)* @ch7017_read to i32 (%struct.intel_dvo_device*, i32, i32*, ...)*)(%struct.intel_dvo_device* %61, i32 %62, i32* %3)
  %64 = load i32, i32* %3, align 4
  %65 = call i32 (i8*, i32, ...) bitcast (i32 (...)* @DRM_DEBUG_KMS to i32 (i8*, i32, ...)*)(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %60
  ret void
}

declare dso_local i32 @ch7017_read(...) #1

declare dso_local i32 @DRM_DEBUG_KMS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_check_link_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_check_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32*, i32 }
%struct.intel_encoder = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.intel_encoder }

@DP_LINK_STATUS_SIZE = common dso_local global i32 0, align 4
@DP_DPCD_REV = common dso_local global i64 0, align 8
@DP_DEVICE_SERVICE_IRQ_VECTOR = common dso_local global i32 0, align 4
@DP_AUTOMATED_TEST_REQUEST = common dso_local global i32 0, align 4
@DP_CP_IRQ = common dso_local global i32 0, align 4
@DP_SINK_SPECIFIC_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"CP or sink specific irq unhandled\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"%s: channel EQ not ok, retraining\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_dp_check_link_status(%struct.intel_dp* %0) #0 {
  %2 = alloca %struct.intel_dp*, align 8
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %2, align 8
  %8 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %9 = call %struct.TYPE_4__* @dp_to_dig_port(%struct.intel_dp* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.intel_encoder* %10, %struct.intel_encoder** %3, align 8
  %11 = load i32, i32* @DP_LINK_STATUS_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %16 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i32 1, i32* %7, align 4
  br label %95

20:                                               ; preds = %1
  %21 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %22 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  store i32 1, i32* %7, align 4
  br label %95

31:                                               ; preds = %20
  %32 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %33 = call i32 @intel_dp_get_link_status(%struct.intel_dp* %32, i32* %14)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %37 = call i32 @intel_dp_link_down(%struct.intel_dp* %36)
  store i32 1, i32* %7, align 4
  br label %95

38:                                               ; preds = %31
  %39 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %40 = call i32 @intel_dp_get_dpcd(%struct.intel_dp* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %44 = call i32 @intel_dp_link_down(%struct.intel_dp* %43)
  store i32 1, i32* %7, align 4
  br label %95

45:                                               ; preds = %38
  %46 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %47 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @DP_DPCD_REV, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp sge i32 %51, 17
  br i1 %52, label %53, label %79

53:                                               ; preds = %45
  %54 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %55 = call i64 @intel_dp_get_sink_irq(%struct.intel_dp* %54, i32* %4)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %53
  %58 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %59 = load i32, i32* @DP_DEVICE_SERVICE_IRQ_VECTOR, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @intel_dp_aux_native_write_1(%struct.intel_dp* %58, i32 %59, i32 %60)
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @DP_AUTOMATED_TEST_REQUEST, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %57
  %67 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %68 = call i32 @intel_dp_handle_test_request(%struct.intel_dp* %67)
  br label %69

69:                                               ; preds = %66, %57
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @DP_CP_IRQ, align 4
  %72 = load i32, i32* @DP_SINK_SPECIFIC_IRQ, align 4
  %73 = or i32 %71, %72
  %74 = and i32 %70, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %69
  br label %79

79:                                               ; preds = %78, %53, %45
  %80 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %81 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @drm_dp_channel_eq_ok(i32* %14, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %79
  %86 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %87 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %86, i32 0, i32 0
  %88 = call i32 @drm_get_encoder_name(%struct.TYPE_3__* %87)
  %89 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %91 = call i32 @intel_dp_start_link_train(%struct.intel_dp* %90)
  %92 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %93 = call i32 @intel_dp_complete_link_train(%struct.intel_dp* %92)
  br label %94

94:                                               ; preds = %85, %79
  store i32 0, i32* %7, align 4
  br label %95

95:                                               ; preds = %94, %42, %35, %30, %19
  %96 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %96)
  %97 = load i32, i32* %7, align 4
  switch i32 %97, label %99 [
    i32 0, label %98
    i32 1, label %98
  ]

98:                                               ; preds = %95, %95
  ret void

99:                                               ; preds = %95
  unreachable
}

declare dso_local %struct.TYPE_4__* @dp_to_dig_port(%struct.intel_dp*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @intel_dp_get_link_status(%struct.intel_dp*, i32*) #1

declare dso_local i32 @intel_dp_link_down(%struct.intel_dp*) #1

declare dso_local i32 @intel_dp_get_dpcd(%struct.intel_dp*) #1

declare dso_local i64 @intel_dp_get_sink_irq(%struct.intel_dp*, i32*) #1

declare dso_local i32 @intel_dp_aux_native_write_1(%struct.intel_dp*, i32, i32) #1

declare dso_local i32 @intel_dp_handle_test_request(%struct.intel_dp*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @drm_dp_channel_eq_ok(i32*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @drm_get_encoder_name(%struct.TYPE_3__*) #1

declare dso_local i32 @intel_dp_start_link_train(%struct.intel_dp*) #1

declare dso_local i32 @intel_dp_complete_link_train(%struct.intel_dp*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

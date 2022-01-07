; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ddi.c_intel_ddi_get_encoder_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_ddi.c_intel_ddi_get_encoder_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32, %struct.drm_encoder }
%struct.drm_encoder = type { i32 }
%struct.intel_digital_port = type { i32 }

@INTEL_OUTPUT_DISPLAYPORT = common dso_local global i32 0, align 4
@INTEL_OUTPUT_EDP = common dso_local global i32 0, align 4
@INTEL_OUTPUT_HDMI = common dso_local global i32 0, align 4
@INTEL_OUTPUT_UNKNOWN = common dso_local global i32 0, align 4
@INTEL_OUTPUT_ANALOG = common dso_local global i32 0, align 4
@PORT_E = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid DDI encoder type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_encoder*)* @intel_ddi_get_encoder_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_ddi_get_encoder_port(%struct.intel_encoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_digital_port*, align 8
  store %struct.intel_encoder* %0, %struct.intel_encoder** %3, align 8
  %7 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %8 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %7, i32 0, i32 1
  store %struct.drm_encoder* %8, %struct.drm_encoder** %4, align 8
  %9 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %10 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @INTEL_OUTPUT_DISPLAYPORT, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %27, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @INTEL_OUTPUT_EDP, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @INTEL_OUTPUT_UNKNOWN, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23, %19, %15, %1
  %28 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %29 = call %struct.intel_digital_port* @enc_to_dig_port(%struct.drm_encoder* %28)
  store %struct.intel_digital_port* %29, %struct.intel_digital_port** %6, align 8
  %30 = load %struct.intel_digital_port*, %struct.intel_digital_port** %6, align 8
  %31 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %2, align 4
  br label %44

33:                                               ; preds = %23
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @INTEL_OUTPUT_ANALOG, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @PORT_E, align 4
  store i32 %38, i32* %2, align 4
  br label %44

39:                                               ; preds = %33
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = call i32 (...) @BUG()
  br label %43

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %27, %37, %43
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.intel_digital_port* @enc_to_dig_port(%struct.drm_encoder*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

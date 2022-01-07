; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_dvo_ivch.c_ivch_dump_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_dvo_ivch.c_ivch_dump_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dvo_device = type { i32 }

@VR00 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"VR00: 0x%04x\0A\00", align 1
@VR01 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"VR01: 0x%04x\0A\00", align 1
@VR30 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"VR30: 0x%04x\0A\00", align 1
@VR40 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"VR40: 0x%04x\0A\00", align 1
@VR80 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"VR80: 0x%04x\0A\00", align 1
@VR81 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"VR81: 0x%04x\0A\00", align 1
@VR82 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"VR82: 0x%04x\0A\00", align 1
@VR83 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"VR83: 0x%04x\0A\00", align 1
@VR84 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"VR84: 0x%04x\0A\00", align 1
@VR85 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"VR85: 0x%04x\0A\00", align 1
@VR86 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"VR86: 0x%04x\0A\00", align 1
@VR87 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"VR87: 0x%04x\0A\00", align 1
@VR88 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [14 x i8] c"VR88: 0x%04x\0A\00", align 1
@VR8E = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [14 x i8] c"VR8E: 0x%04x\0A\00", align 1
@VR8F = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [14 x i8] c"VR8F: 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dvo_device*)* @ivch_dump_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivch_dump_regs(%struct.intel_dvo_device* %0) #0 {
  %2 = alloca %struct.intel_dvo_device*, align 8
  %3 = alloca i32, align 4
  store %struct.intel_dvo_device* %0, %struct.intel_dvo_device** %2, align 8
  %4 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %5 = load i32, i32* @VR00, align 4
  %6 = call i32 @ivch_read(%struct.intel_dvo_device* %4, i32 %5, i32* %3)
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @DRM_LOG_KMS(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %10 = load i32, i32* @VR01, align 4
  %11 = call i32 @ivch_read(%struct.intel_dvo_device* %9, i32 %10, i32* %3)
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @DRM_LOG_KMS(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %15 = load i32, i32* @VR30, align 4
  %16 = call i32 @ivch_read(%struct.intel_dvo_device* %14, i32 %15, i32* %3)
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @DRM_LOG_KMS(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %17)
  %19 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %20 = load i32, i32* @VR40, align 4
  %21 = call i32 @ivch_read(%struct.intel_dvo_device* %19, i32 %20, i32* %3)
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @DRM_LOG_KMS(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %22)
  %24 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %25 = load i32, i32* @VR80, align 4
  %26 = call i32 @ivch_read(%struct.intel_dvo_device* %24, i32 %25, i32* %3)
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @DRM_LOG_KMS(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %27)
  %29 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %30 = load i32, i32* @VR81, align 4
  %31 = call i32 @ivch_read(%struct.intel_dvo_device* %29, i32 %30, i32* %3)
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @DRM_LOG_KMS(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %32)
  %34 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %35 = load i32, i32* @VR82, align 4
  %36 = call i32 @ivch_read(%struct.intel_dvo_device* %34, i32 %35, i32* %3)
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @DRM_LOG_KMS(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %37)
  %39 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %40 = load i32, i32* @VR83, align 4
  %41 = call i32 @ivch_read(%struct.intel_dvo_device* %39, i32 %40, i32* %3)
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @DRM_LOG_KMS(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %42)
  %44 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %45 = load i32, i32* @VR84, align 4
  %46 = call i32 @ivch_read(%struct.intel_dvo_device* %44, i32 %45, i32* %3)
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @DRM_LOG_KMS(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %47)
  %49 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %50 = load i32, i32* @VR85, align 4
  %51 = call i32 @ivch_read(%struct.intel_dvo_device* %49, i32 %50, i32* %3)
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @DRM_LOG_KMS(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %52)
  %54 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %55 = load i32, i32* @VR86, align 4
  %56 = call i32 @ivch_read(%struct.intel_dvo_device* %54, i32 %55, i32* %3)
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @DRM_LOG_KMS(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %57)
  %59 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %60 = load i32, i32* @VR87, align 4
  %61 = call i32 @ivch_read(%struct.intel_dvo_device* %59, i32 %60, i32* %3)
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @DRM_LOG_KMS(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %62)
  %64 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %65 = load i32, i32* @VR88, align 4
  %66 = call i32 @ivch_read(%struct.intel_dvo_device* %64, i32 %65, i32* %3)
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @DRM_LOG_KMS(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 %67)
  %69 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %70 = load i32, i32* @VR8E, align 4
  %71 = call i32 @ivch_read(%struct.intel_dvo_device* %69, i32 %70, i32* %3)
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @DRM_LOG_KMS(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 %72)
  %74 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %75 = load i32, i32* @VR8F, align 4
  %76 = call i32 @ivch_read(%struct.intel_dvo_device* %74, i32 %75, i32* %3)
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @DRM_LOG_KMS(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i32 %77)
  ret void
}

declare dso_local i32 @ivch_read(%struct.intel_dvo_device*, i32, i32*) #1

declare dso_local i32 @DRM_LOG_KMS(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_dvo_tfp410.c_tfp410_dump_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_dvo_tfp410.c_tfp410_dump_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dvo_device = type { i32 }

@TFP410_REV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"TFP410_REV: 0x%02X\0A\00", align 1
@TFP410_CTL_1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"TFP410_CTL1: 0x%02X\0A\00", align 1
@TFP410_CTL_2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"TFP410_CTL2: 0x%02X\0A\00", align 1
@TFP410_CTL_3 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"TFP410_CTL3: 0x%02X\0A\00", align 1
@TFP410_USERCFG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"TFP410_USERCFG: 0x%02X\0A\00", align 1
@TFP410_DE_DLY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"TFP410_DE_DLY: 0x%02X\0A\00", align 1
@TFP410_DE_CTL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"TFP410_DE_CTL: 0x%02X\0A\00", align 1
@TFP410_DE_TOP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"TFP410_DE_TOP: 0x%02X\0A\00", align 1
@TFP410_DE_CNT_LO = common dso_local global i32 0, align 4
@TFP410_DE_CNT_HI = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"TFP410_DE_CNT: 0x%02X%02X\0A\00", align 1
@TFP410_DE_LIN_LO = common dso_local global i32 0, align 4
@TFP410_DE_LIN_HI = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"TFP410_DE_LIN: 0x%02X%02X\0A\00", align 1
@TFP410_H_RES_LO = common dso_local global i32 0, align 4
@TFP410_H_RES_HI = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"TFP410_H_RES: 0x%02X%02X\0A\00", align 1
@TFP410_V_RES_LO = common dso_local global i32 0, align 4
@TFP410_V_RES_HI = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [26 x i8] c"TFP410_V_RES: 0x%02X%02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dvo_device*)* @tfp410_dump_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tfp410_dump_regs(%struct.intel_dvo_device* %0) #0 {
  %2 = alloca %struct.intel_dvo_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.intel_dvo_device* %0, %struct.intel_dvo_device** %2, align 8
  %5 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %6 = load i32, i32* @TFP410_REV, align 4
  %7 = call i32 @tfp410_readb(%struct.intel_dvo_device* %5, i32 %6, i32* %3)
  %8 = load i32, i32* %3, align 4
  %9 = call i32 (i8*, i32, ...) @DRM_LOG_KMS(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %11 = load i32, i32* @TFP410_CTL_1, align 4
  %12 = call i32 @tfp410_readb(%struct.intel_dvo_device* %10, i32 %11, i32* %3)
  %13 = load i32, i32* %3, align 4
  %14 = call i32 (i8*, i32, ...) @DRM_LOG_KMS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %16 = load i32, i32* @TFP410_CTL_2, align 4
  %17 = call i32 @tfp410_readb(%struct.intel_dvo_device* %15, i32 %16, i32* %3)
  %18 = load i32, i32* %3, align 4
  %19 = call i32 (i8*, i32, ...) @DRM_LOG_KMS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  %20 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %21 = load i32, i32* @TFP410_CTL_3, align 4
  %22 = call i32 @tfp410_readb(%struct.intel_dvo_device* %20, i32 %21, i32* %3)
  %23 = load i32, i32* %3, align 4
  %24 = call i32 (i8*, i32, ...) @DRM_LOG_KMS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %23)
  %25 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %26 = load i32, i32* @TFP410_USERCFG, align 4
  %27 = call i32 @tfp410_readb(%struct.intel_dvo_device* %25, i32 %26, i32* %3)
  %28 = load i32, i32* %3, align 4
  %29 = call i32 (i8*, i32, ...) @DRM_LOG_KMS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %28)
  %30 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %31 = load i32, i32* @TFP410_DE_DLY, align 4
  %32 = call i32 @tfp410_readb(%struct.intel_dvo_device* %30, i32 %31, i32* %3)
  %33 = load i32, i32* %3, align 4
  %34 = call i32 (i8*, i32, ...) @DRM_LOG_KMS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %33)
  %35 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %36 = load i32, i32* @TFP410_DE_CTL, align 4
  %37 = call i32 @tfp410_readb(%struct.intel_dvo_device* %35, i32 %36, i32* %3)
  %38 = load i32, i32* %3, align 4
  %39 = call i32 (i8*, i32, ...) @DRM_LOG_KMS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %38)
  %40 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %41 = load i32, i32* @TFP410_DE_TOP, align 4
  %42 = call i32 @tfp410_readb(%struct.intel_dvo_device* %40, i32 %41, i32* %3)
  %43 = load i32, i32* %3, align 4
  %44 = call i32 (i8*, i32, ...) @DRM_LOG_KMS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %43)
  %45 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %46 = load i32, i32* @TFP410_DE_CNT_LO, align 4
  %47 = call i32 @tfp410_readb(%struct.intel_dvo_device* %45, i32 %46, i32* %3)
  %48 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %49 = load i32, i32* @TFP410_DE_CNT_HI, align 4
  %50 = call i32 @tfp410_readb(%struct.intel_dvo_device* %48, i32 %49, i32* %4)
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i32 (i8*, i32, ...) @DRM_LOG_KMS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %55 = load i32, i32* @TFP410_DE_LIN_LO, align 4
  %56 = call i32 @tfp410_readb(%struct.intel_dvo_device* %54, i32 %55, i32* %3)
  %57 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %58 = load i32, i32* @TFP410_DE_LIN_HI, align 4
  %59 = call i32 @tfp410_readb(%struct.intel_dvo_device* %57, i32 %58, i32* %4)
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %3, align 4
  %62 = call i32 (i8*, i32, ...) @DRM_LOG_KMS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %60, i32 %61)
  %63 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %64 = load i32, i32* @TFP410_H_RES_LO, align 4
  %65 = call i32 @tfp410_readb(%struct.intel_dvo_device* %63, i32 %64, i32* %3)
  %66 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %67 = load i32, i32* @TFP410_H_RES_HI, align 4
  %68 = call i32 @tfp410_readb(%struct.intel_dvo_device* %66, i32 %67, i32* %4)
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %3, align 4
  %71 = call i32 (i8*, i32, ...) @DRM_LOG_KMS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %69, i32 %70)
  %72 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %73 = load i32, i32* @TFP410_V_RES_LO, align 4
  %74 = call i32 @tfp410_readb(%struct.intel_dvo_device* %72, i32 %73, i32* %3)
  %75 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %2, align 8
  %76 = load i32, i32* @TFP410_V_RES_HI, align 4
  %77 = call i32 @tfp410_readb(%struct.intel_dvo_device* %75, i32 %76, i32* %4)
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* %3, align 4
  %80 = call i32 (i8*, i32, ...) @DRM_LOG_KMS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i32 %78, i32 %79)
  ret void
}

declare dso_local i32 @tfp410_readb(%struct.intel_dvo_device*, i32, i32*) #1

declare dso_local i32 @DRM_LOG_KMS(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

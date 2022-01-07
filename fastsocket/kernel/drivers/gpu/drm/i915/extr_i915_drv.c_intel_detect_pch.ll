; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_drv.c_intel_detect_pch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_drv.c_intel_detect_pch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i16, i32, i8* }
%struct.pci_dev = type { i64, i16 }

@PCI_CLASS_BRIDGE_ISA = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_INTEL = common dso_local global i64 0, align 8
@INTEL_PCH_DEVICE_ID_MASK = common dso_local global i16 0, align 2
@INTEL_PCH_IBX_DEVICE_ID_TYPE = common dso_local global i16 0, align 2
@PCH_IBX = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"Found Ibex Peak PCH\0A\00", align 1
@INTEL_PCH_CPT_DEVICE_ID_TYPE = common dso_local global i16 0, align 2
@PCH_CPT = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Found CougarPoint PCH\0A\00", align 1
@INTEL_PCH_PPT_DEVICE_ID_TYPE = common dso_local global i16 0, align 2
@.str.2 = private unnamed_addr constant [23 x i8] c"Found PatherPoint PCH\0A\00", align 1
@INTEL_PCH_LPT_DEVICE_ID_TYPE = common dso_local global i16 0, align 2
@PCH_LPT = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"Found LynxPoint PCH\0A\00", align 1
@INTEL_PCH_LPT_LP_DEVICE_ID_TYPE = common dso_local global i16 0, align 2
@.str.4 = private unnamed_addr constant [24 x i8] c"Found LynxPoint LP PCH\0A\00", align 1
@I915_NUM_PLLS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_detect_pch(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i16, align 2
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %3, align 8
  %9 = load i32, i32* @PCI_CLASS_BRIDGE_ISA, align 4
  %10 = shl i32 %9, 8
  %11 = call %struct.pci_dev* @pci_get_class(i32 %10, i32* null)
  store %struct.pci_dev* %11, %struct.pci_dev** %4, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = icmp ne %struct.pci_dev* %12, null
  br i1 %13, label %14, label %153

14:                                               ; preds = %1
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PCI_VENDOR_ID_INTEL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %150

20:                                               ; preds = %14
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 1
  %23 = load i16, i16* %22, align 8
  %24 = zext i16 %23 to i32
  %25 = load i16, i16* @INTEL_PCH_DEVICE_ID_MASK, align 2
  %26 = zext i16 %25 to i32
  %27 = and i32 %24, %26
  %28 = trunc i32 %27 to i16
  store i16 %28, i16* %5, align 2
  %29 = load i16, i16* %5, align 2
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %31 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %30, i32 0, i32 0
  store i16 %29, i16* %31, align 8
  %32 = load i16, i16* %5, align 2
  %33 = zext i16 %32 to i32
  %34 = load i16, i16* @INTEL_PCH_IBX_DEVICE_ID_TYPE, align 2
  %35 = zext i16 %34 to i32
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %20
  %38 = load i8*, i8** @PCH_IBX, align 8
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %40 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %42 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %41, i32 0, i32 1
  store i32 2, i32* %42, align 4
  %43 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %45 = call i32 @IS_GEN5(%struct.drm_device* %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @WARN_ON(i32 %48)
  br label %142

50:                                               ; preds = %20
  %51 = load i16, i16* %5, align 2
  %52 = zext i16 %51 to i32
  %53 = load i16, i16* @INTEL_PCH_CPT_DEVICE_ID_TYPE, align 2
  %54 = zext i16 %53 to i32
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %50
  %57 = load i8*, i8** @PCH_CPT, align 8
  %58 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %59 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %61 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %60, i32 0, i32 1
  store i32 2, i32* %61, align 4
  %62 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %64 = call i64 @IS_GEN6(%struct.drm_device* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %56
  %67 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %68 = call i64 @IS_IVYBRIDGE(%struct.drm_device* %67)
  %69 = icmp ne i64 %68, 0
  br label %70

70:                                               ; preds = %66, %56
  %71 = phi i1 [ true, %56 ], [ %69, %66 ]
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i32 @WARN_ON(i32 %73)
  br label %141

75:                                               ; preds = %50
  %76 = load i16, i16* %5, align 2
  %77 = zext i16 %76 to i32
  %78 = load i16, i16* @INTEL_PCH_PPT_DEVICE_ID_TYPE, align 2
  %79 = zext i16 %78 to i32
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %75
  %82 = load i8*, i8** @PCH_CPT, align 8
  %83 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %84 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %83, i32 0, i32 2
  store i8* %82, i8** %84, align 8
  %85 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %86 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %85, i32 0, i32 1
  store i32 2, i32* %86, align 4
  %87 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %88 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %89 = call i64 @IS_GEN6(%struct.drm_device* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %81
  %92 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %93 = call i64 @IS_IVYBRIDGE(%struct.drm_device* %92)
  %94 = icmp ne i64 %93, 0
  br label %95

95:                                               ; preds = %91, %81
  %96 = phi i1 [ true, %81 ], [ %94, %91 ]
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = call i32 @WARN_ON(i32 %98)
  br label %140

100:                                              ; preds = %75
  %101 = load i16, i16* %5, align 2
  %102 = zext i16 %101 to i32
  %103 = load i16, i16* @INTEL_PCH_LPT_DEVICE_ID_TYPE, align 2
  %104 = zext i16 %103 to i32
  %105 = icmp eq i32 %102, %104
  br i1 %105, label %106, label %119

106:                                              ; preds = %100
  %107 = load i8*, i8** @PCH_LPT, align 8
  %108 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %109 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %108, i32 0, i32 2
  store i8* %107, i8** %109, align 8
  %110 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %111 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %110, i32 0, i32 1
  store i32 0, i32* %111, align 4
  %112 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %113 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %114 = call i32 @IS_HASWELL(%struct.drm_device* %113)
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  %118 = call i32 @WARN_ON(i32 %117)
  br label %139

119:                                              ; preds = %100
  %120 = load i16, i16* %5, align 2
  %121 = zext i16 %120 to i32
  %122 = load i16, i16* @INTEL_PCH_LPT_LP_DEVICE_ID_TYPE, align 2
  %123 = zext i16 %122 to i32
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %125, label %138

125:                                              ; preds = %119
  %126 = load i8*, i8** @PCH_LPT, align 8
  %127 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %128 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %127, i32 0, i32 2
  store i8* %126, i8** %128, align 8
  %129 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %130 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %129, i32 0, i32 1
  store i32 0, i32* %130, align 4
  %131 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %132 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %133 = call i32 @IS_HASWELL(%struct.drm_device* %132)
  %134 = icmp ne i32 %133, 0
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  %137 = call i32 @WARN_ON(i32 %136)
  br label %138

138:                                              ; preds = %125, %119
  br label %139

139:                                              ; preds = %138, %106
  br label %140

140:                                              ; preds = %139, %95
  br label %141

141:                                              ; preds = %140, %70
  br label %142

142:                                              ; preds = %141, %37
  %143 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %144 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @I915_NUM_PLLS, align 4
  %147 = icmp sgt i32 %145, %146
  %148 = zext i1 %147 to i32
  %149 = call i32 @BUG_ON(i32 %148)
  br label %150

150:                                              ; preds = %142, %14
  %151 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %152 = call i32 @pci_dev_put(%struct.pci_dev* %151)
  br label %153

153:                                              ; preds = %150, %1
  ret void
}

declare dso_local %struct.pci_dev* @pci_get_class(i32, i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @IS_GEN5(%struct.drm_device*) #1

declare dso_local i64 @IS_GEN6(%struct.drm_device*) #1

declare dso_local i64 @IS_IVYBRIDGE(%struct.drm_device*) #1

declare dso_local i32 @IS_HASWELL(%struct.drm_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

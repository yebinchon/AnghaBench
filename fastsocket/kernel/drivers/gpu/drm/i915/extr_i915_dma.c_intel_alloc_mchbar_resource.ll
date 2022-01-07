; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_dma.c_intel_alloc_mchbar_resource.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_dma.c_intel_alloc_mchbar_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i8*, i64, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@MCHBAR_I965 = common dso_local global i32 0, align 4
@MCHBAR_I915 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"i915 MCHBAR\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@MCHBAR_SIZE = common dso_local global i64 0, align 8
@PCIBIOS_MIN_MEM = common dso_local global i32 0, align 4
@pcibios_align_resource = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"failed bus alloc: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @intel_alloc_mchbar_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_alloc_mchbar_resource(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %4, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %14 = call %struct.TYPE_10__* @INTEL_INFO(%struct.drm_device* %13)
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %16, 4
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @MCHBAR_I965, align 4
  br label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @MCHBAR_I915, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %24 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %25 = call %struct.TYPE_10__* @INTEL_INFO(%struct.drm_device* %24)
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sge i32 %27, 4
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 4
  %35 = call i32 @pci_read_config_dword(%struct.TYPE_8__* %32, i32 %34, i32* %7)
  br label %36

36:                                               ; preds = %29, %22
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @pci_read_config_dword(%struct.TYPE_8__* %39, i32 %40, i32* %6)
  %42 = load i32, i32* %7, align 4
  %43 = shl i32 %42, 32
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %8, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %48, align 8
  %49 = load i32, i32* @IORESOURCE_MEM, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* @MCHBAR_SIZE, align 8
  %61 = load i64, i64* @MCHBAR_SIZE, align 8
  %62 = load i32, i32* @PCIBIOS_MIN_MEM, align 4
  %63 = load i32, i32* @pcibios_align_resource, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = call i32 @pci_bus_alloc_resource(i32 %57, %struct.TYPE_9__* %59, i64 %60, i64 %61, i32 %62, i32 0, i32 %63, %struct.TYPE_8__* %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %36
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  store i64 0, i64* %75, align 8
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %2, align 4
  br label %106

77:                                               ; preds = %36
  %78 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %79 = call %struct.TYPE_10__* @INTEL_INFO(%struct.drm_device* %78)
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp sge i32 %81, 4
  br i1 %82, label %83, label %95

83:                                               ; preds = %77
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @upper_32_bits(i64 %92)
  %94 = call i32 @pci_write_config_dword(%struct.TYPE_8__* %86, i32 %88, i32 %93)
  br label %95

95:                                               ; preds = %83, %77
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @lower_32_bits(i64 %103)
  %105 = call i32 @pci_write_config_dword(%struct.TYPE_8__* %98, i32 %99, i32 %104)
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %95, %70
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.TYPE_10__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i32 @pci_read_config_dword(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @pci_bus_alloc_resource(i32, %struct.TYPE_9__*, i64, i64, i32, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @lower_32_bits(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

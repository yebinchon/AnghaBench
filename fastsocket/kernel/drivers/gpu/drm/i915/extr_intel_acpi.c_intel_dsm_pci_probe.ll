; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_acpi.c_intel_dsm_pci_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_acpi.c_intel_dsm_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"_DSM\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"no _DSM method for intel device\0A\00", align 1
@INTEL_DSM_FN_SUPPORTED_FUNCTIONS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"failed to get supported _DSM functions\0A\00", align 1
@intel_dsm_priv = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @intel_dsm_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dsm_pci_probe(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 0
  %10 = call i64 @DEVICE_ACPI_HANDLE(i32* %9)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

14:                                               ; preds = %1
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @acpi_get_handle(i64 %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64* %5)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @ACPI_FAILURE(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %33

22:                                               ; preds = %14
  %23 = load i64, i64* %4, align 8
  %24 = load i32, i32* @INTEL_DSM_FN_SUPPORTED_FUNCTIONS, align 4
  %25 = call i32 @intel_dsm(i64 %23, i32 %24, i32 0)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %33

30:                                               ; preds = %22
  %31 = load i64, i64* %4, align 8
  store i64 %31, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_dsm_priv, i32 0, i32 0), align 8
  %32 = call i32 (...) @intel_dsm_platform_mux_info()
  store i32 1, i32* %2, align 4
  br label %33

33:                                               ; preds = %30, %28, %20, %13
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i64 @DEVICE_ACPI_HANDLE(i32*) #1

declare dso_local i32 @acpi_get_handle(i64, i8*, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @intel_dsm(i64, i32, i32) #1

declare dso_local i32 @intel_dsm_platform_mux_info(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

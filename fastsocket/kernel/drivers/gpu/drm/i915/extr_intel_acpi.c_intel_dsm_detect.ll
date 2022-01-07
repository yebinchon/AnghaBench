; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_acpi.c_intel_dsm_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_acpi.c_intel_dsm_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.acpi_buffer = type { i32, i8* }
%struct.pci_dev = type { i32 }

@PCI_CLASS_DISPLAY_VGA = common dso_local global i32 0, align 4
@intel_dsm_priv = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ACPI_FULL_PATHNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"VGA switcheroo: detected DSM switching method %s handle\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @intel_dsm_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dsm_detect() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [255 x i8], align 16
  %3 = alloca %struct.acpi_buffer, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = bitcast [255 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 255, i1 false)
  %8 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %3, i32 0, i32 0
  store i32 255, i32* %8, align 8
  %9 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %3, i32 0, i32 1
  %10 = getelementptr inbounds [255 x i8], [255 x i8]* %2, i64 0, i64 0
  store i8* %10, i8** %9, align 8
  store %struct.pci_dev* null, %struct.pci_dev** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %17, %0
  %12 = load i32, i32* @PCI_CLASS_DISPLAY_VGA, align 4
  %13 = shl i32 %12, 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = call %struct.pci_dev* @pci_get_class(i32 %13, %struct.pci_dev* %14)
  store %struct.pci_dev* %15, %struct.pci_dev** %4, align 8
  %16 = icmp ne %struct.pci_dev* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %6, align 4
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = call i32 @intel_dsm_pci_probe(%struct.pci_dev* %20)
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %11

24:                                               ; preds = %11
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @intel_dsm_priv, i32 0, i32 0), align 4
  %32 = load i32, i32* @ACPI_FULL_PATHNAME, align 4
  %33 = call i32 @acpi_get_name(i32 %31, i32 %32, %struct.acpi_buffer* %3)
  %34 = getelementptr inbounds [255 x i8], [255 x i8]* %2, i64 0, i64 0
  %35 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* %34)
  store i32 1, i32* %1, align 4
  br label %37

36:                                               ; preds = %27, %24
  store i32 0, i32* %1, align 4
  br label %37

37:                                               ; preds = %36, %30
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.pci_dev* @pci_get_class(i32, %struct.pci_dev*) #2

declare dso_local i32 @intel_dsm_pci_probe(%struct.pci_dev*) #2

declare dso_local i32 @acpi_get_name(i32, i32, %struct.acpi_buffer*) #2

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

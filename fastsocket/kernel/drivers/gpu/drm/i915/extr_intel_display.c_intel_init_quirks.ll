; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_init_quirks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_init_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_quirk = type { i64, i64, i64, i32 (%struct.drm_device.0*)*, i32* }
%struct.drm_device.0 = type opaque
%struct.drm_device = type { %struct.pci_dev* }
%struct.pci_dev = type { i64, i64, i64 }

@intel_quirks = common dso_local global %struct.intel_quirk* null, align 8
@PCI_ANY_ID = common dso_local global i64 0, align 8
@intel_dmi_quirks = common dso_local global %struct.intel_quirk* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @intel_init_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_init_quirks(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_quirk*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %62, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.intel_quirk*, %struct.intel_quirk** @intel_quirks, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.intel_quirk* %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %65

14:                                               ; preds = %9
  %15 = load %struct.intel_quirk*, %struct.intel_quirk** @intel_quirks, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.intel_quirk, %struct.intel_quirk* %15, i64 %17
  store %struct.intel_quirk* %18, %struct.intel_quirk** %5, align 8
  %19 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.intel_quirk*, %struct.intel_quirk** %5, align 8
  %23 = getelementptr inbounds %struct.intel_quirk, %struct.intel_quirk* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %61

26:                                               ; preds = %14
  %27 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.intel_quirk*, %struct.intel_quirk** %5, align 8
  %31 = getelementptr inbounds %struct.intel_quirk, %struct.intel_quirk* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %26
  %35 = load %struct.intel_quirk*, %struct.intel_quirk** %5, align 8
  %36 = getelementptr inbounds %struct.intel_quirk, %struct.intel_quirk* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PCI_ANY_ID, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %61

40:                                               ; preds = %34, %26
  %41 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.intel_quirk*, %struct.intel_quirk** %5, align 8
  %45 = getelementptr inbounds %struct.intel_quirk, %struct.intel_quirk* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %40
  %49 = load %struct.intel_quirk*, %struct.intel_quirk** %5, align 8
  %50 = getelementptr inbounds %struct.intel_quirk, %struct.intel_quirk* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PCI_ANY_ID, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %48, %40
  %55 = load %struct.intel_quirk*, %struct.intel_quirk** %5, align 8
  %56 = getelementptr inbounds %struct.intel_quirk, %struct.intel_quirk* %55, i32 0, i32 3
  %57 = load i32 (%struct.drm_device.0*)*, i32 (%struct.drm_device.0*)** %56, align 8
  %58 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %59 = bitcast %struct.drm_device* %58 to %struct.drm_device.0*
  %60 = call i32 %57(%struct.drm_device.0* %59)
  br label %61

61:                                               ; preds = %54, %48, %34, %14
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %9

65:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %92, %65
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.intel_quirk*, %struct.intel_quirk** @intel_dmi_quirks, align 8
  %69 = call i32 @ARRAY_SIZE(%struct.intel_quirk* %68)
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %95

71:                                               ; preds = %66
  %72 = load %struct.intel_quirk*, %struct.intel_quirk** @intel_dmi_quirks, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.intel_quirk, %struct.intel_quirk* %72, i64 %74
  %76 = getelementptr inbounds %struct.intel_quirk, %struct.intel_quirk* %75, i32 0, i32 4
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @dmi_check_system(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %71
  %82 = load %struct.intel_quirk*, %struct.intel_quirk** @intel_dmi_quirks, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.intel_quirk, %struct.intel_quirk* %82, i64 %84
  %86 = getelementptr inbounds %struct.intel_quirk, %struct.intel_quirk* %85, i32 0, i32 3
  %87 = load i32 (%struct.drm_device.0*)*, i32 (%struct.drm_device.0*)** %86, align 8
  %88 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %89 = bitcast %struct.drm_device* %88 to %struct.drm_device.0*
  %90 = call i32 %87(%struct.drm_device.0* %89)
  br label %91

91:                                               ; preds = %81, %71
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %4, align 4
  br label %66

95:                                               ; preds = %66
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.intel_quirk*) #1

declare dso_local i64 @dmi_check_system(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

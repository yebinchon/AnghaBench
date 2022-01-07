; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_pci_root.c_get_root_bridge_busnr_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_pci_root.c_get_root_bridge_busnr_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_resource = type { i64 }
%struct.resource = type { i64, i64 }
%struct.acpi_resource_address64 = type { i64, i64, i64 }

@ACPI_RESOURCE_TYPE_ADDRESS16 = common dso_local global i64 0, align 8
@ACPI_RESOURCE_TYPE_ADDRESS32 = common dso_local global i64 0, align 8
@ACPI_RESOURCE_TYPE_ADDRESS64 = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i32 0, align 4
@ACPI_BUS_NUMBER_RANGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_resource*, i8*)* @get_root_bridge_busnr_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_root_bridge_busnr_callback(%struct.acpi_resource* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_resource*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.acpi_resource_address64, align 8
  store %struct.acpi_resource* %0, %struct.acpi_resource** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.resource*
  store %struct.resource* %9, %struct.resource** %6, align 8
  %10 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %11 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ACPI_RESOURCE_TYPE_ADDRESS16, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %2
  %16 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %17 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ACPI_RESOURCE_TYPE_ADDRESS32, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %23 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ACPI_RESOURCE_TYPE_ADDRESS64, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @AE_OK, align 4
  store i32 %28, i32* %3, align 4
  br label %55

29:                                               ; preds = %21, %15, %2
  %30 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %31 = call i32 @acpi_resource_to_address64(%struct.acpi_resource* %30, %struct.acpi_resource_address64* %7)
  %32 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %7, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %7, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ACPI_BUS_NUMBER_RANGE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %7, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.resource*, %struct.resource** %6, align 8
  %44 = getelementptr inbounds %struct.resource, %struct.resource* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %7, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %7, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %46, %48
  %50 = sub nsw i64 %49, 1
  %51 = load %struct.resource*, %struct.resource** %6, align 8
  %52 = getelementptr inbounds %struct.resource, %struct.resource* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %40, %35, %29
  %54 = load i32, i32* @AE_OK, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %27
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @acpi_resource_to_address64(%struct.acpi_resource*, %struct.acpi_resource_address64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

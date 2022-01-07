; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/pnpacpi/extr_rsparser.c_pnpacpi_parse_allocated_ext_address_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/pnpacpi/extr_rsparser.c_pnpacpi_parse_allocated_ext_address_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }
%struct.acpi_resource = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.acpi_resource_extended_address64 }
%struct.acpi_resource_extended_address64 = type { i64, i64, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ACPI_PRODUCER = common dso_local global i64 0, align 8
@ACPI_MEMORY_RANGE = common dso_local global i64 0, align 8
@ACPI_IO_RANGE = common dso_local global i64 0, align 8
@ACPI_DECODE_10 = common dso_local global i32 0, align 4
@ACPI_DECODE_16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnp_dev*, %struct.acpi_resource*)* @pnpacpi_parse_allocated_ext_address_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnpacpi_parse_allocated_ext_address_space(%struct.pnp_dev* %0, %struct.acpi_resource* %1) #0 {
  %3 = alloca %struct.pnp_dev*, align 8
  %4 = alloca %struct.acpi_resource*, align 8
  %5 = alloca %struct.acpi_resource_extended_address64*, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %3, align 8
  store %struct.acpi_resource* %1, %struct.acpi_resource** %4, align 8
  %6 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %7 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store %struct.acpi_resource_extended_address64* %8, %struct.acpi_resource_extended_address64** %5, align 8
  %9 = load %struct.acpi_resource_extended_address64*, %struct.acpi_resource_extended_address64** %5, align 8
  %10 = getelementptr inbounds %struct.acpi_resource_extended_address64, %struct.acpi_resource_extended_address64* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ACPI_PRODUCER, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %61

15:                                               ; preds = %2
  %16 = load %struct.acpi_resource_extended_address64*, %struct.acpi_resource_extended_address64** %5, align 8
  %17 = getelementptr inbounds %struct.acpi_resource_extended_address64, %struct.acpi_resource_extended_address64* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ACPI_MEMORY_RANGE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %15
  %22 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %23 = load %struct.acpi_resource_extended_address64*, %struct.acpi_resource_extended_address64** %5, align 8
  %24 = getelementptr inbounds %struct.acpi_resource_extended_address64, %struct.acpi_resource_extended_address64* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.acpi_resource_extended_address64*, %struct.acpi_resource_extended_address64** %5, align 8
  %27 = getelementptr inbounds %struct.acpi_resource_extended_address64, %struct.acpi_resource_extended_address64* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.acpi_resource_extended_address64*, %struct.acpi_resource_extended_address64** %5, align 8
  %30 = getelementptr inbounds %struct.acpi_resource_extended_address64, %struct.acpi_resource_extended_address64* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pnpacpi_parse_allocated_memresource(%struct.pnp_dev* %22, i32 %25, i32 %28, i32 %33)
  br label %61

35:                                               ; preds = %15
  %36 = load %struct.acpi_resource_extended_address64*, %struct.acpi_resource_extended_address64** %5, align 8
  %37 = getelementptr inbounds %struct.acpi_resource_extended_address64, %struct.acpi_resource_extended_address64* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ACPI_IO_RANGE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %35
  %42 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %43 = load %struct.acpi_resource_extended_address64*, %struct.acpi_resource_extended_address64** %5, align 8
  %44 = getelementptr inbounds %struct.acpi_resource_extended_address64, %struct.acpi_resource_extended_address64* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.acpi_resource_extended_address64*, %struct.acpi_resource_extended_address64** %5, align 8
  %47 = getelementptr inbounds %struct.acpi_resource_extended_address64, %struct.acpi_resource_extended_address64* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.acpi_resource_extended_address64*, %struct.acpi_resource_extended_address64** %5, align 8
  %50 = getelementptr inbounds %struct.acpi_resource_extended_address64, %struct.acpi_resource_extended_address64* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 4095
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load i32, i32* @ACPI_DECODE_10, align 4
  br label %57

55:                                               ; preds = %41
  %56 = load i32, i32* @ACPI_DECODE_16, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %59 = call i32 @pnpacpi_parse_allocated_ioresource(%struct.pnp_dev* %42, i32 %45, i32 %48, i32 %58)
  br label %60

60:                                               ; preds = %57, %35
  br label %61

61:                                               ; preds = %14, %60, %21
  ret void
}

declare dso_local i32 @pnpacpi_parse_allocated_memresource(%struct.pnp_dev*, i32, i32, i32) #1

declare dso_local i32 @pnpacpi_parse_allocated_ioresource(%struct.pnp_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

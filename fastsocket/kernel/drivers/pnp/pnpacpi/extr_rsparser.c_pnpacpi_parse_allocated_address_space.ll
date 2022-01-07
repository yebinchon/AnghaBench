; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/pnpacpi/extr_rsparser.c_pnpacpi_parse_allocated_address_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/pnpacpi/extr_rsparser.c_pnpacpi_parse_allocated_address_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }
%struct.acpi_resource = type { i32 }
%struct.acpi_resource_address64 = type { i64, i64, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"failed to convert resource type %d\0A\00", align 1
@ACPI_PRODUCER = common dso_local global i64 0, align 8
@ACPI_MEMORY_RANGE = common dso_local global i64 0, align 8
@ACPI_IO_RANGE = common dso_local global i64 0, align 8
@ACPI_DECODE_10 = common dso_local global i32 0, align 4
@ACPI_DECODE_16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnp_dev*, %struct.acpi_resource*)* @pnpacpi_parse_allocated_address_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnpacpi_parse_allocated_address_space(%struct.pnp_dev* %0, %struct.acpi_resource* %1) #0 {
  %3 = alloca %struct.pnp_dev*, align 8
  %4 = alloca %struct.acpi_resource*, align 8
  %5 = alloca %struct.acpi_resource_address64, align 8
  %6 = alloca %struct.acpi_resource_address64*, align 8
  %7 = alloca i32, align 4
  store %struct.pnp_dev* %0, %struct.pnp_dev** %3, align 8
  store %struct.acpi_resource* %1, %struct.acpi_resource** %4, align 8
  store %struct.acpi_resource_address64* %5, %struct.acpi_resource_address64** %6, align 8
  %8 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %9 = load %struct.acpi_resource_address64*, %struct.acpi_resource_address64** %6, align 8
  %10 = call i32 @acpi_resource_to_address64(%struct.acpi_resource* %8, %struct.acpi_resource_address64* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @ACPI_SUCCESS(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %16 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %15, i32 0, i32 0
  %17 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %18 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_warn(i32* %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %74

21:                                               ; preds = %2
  %22 = load %struct.acpi_resource_address64*, %struct.acpi_resource_address64** %6, align 8
  %23 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ACPI_PRODUCER, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %74

28:                                               ; preds = %21
  %29 = load %struct.acpi_resource_address64*, %struct.acpi_resource_address64** %6, align 8
  %30 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ACPI_MEMORY_RANGE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %28
  %35 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %36 = load %struct.acpi_resource_address64*, %struct.acpi_resource_address64** %6, align 8
  %37 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.acpi_resource_address64*, %struct.acpi_resource_address64** %6, align 8
  %40 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.acpi_resource_address64*, %struct.acpi_resource_address64** %6, align 8
  %43 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @pnpacpi_parse_allocated_memresource(%struct.pnp_dev* %35, i32 %38, i32 %41, i32 %46)
  br label %74

48:                                               ; preds = %28
  %49 = load %struct.acpi_resource_address64*, %struct.acpi_resource_address64** %6, align 8
  %50 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ACPI_IO_RANGE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %48
  %55 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %56 = load %struct.acpi_resource_address64*, %struct.acpi_resource_address64** %6, align 8
  %57 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.acpi_resource_address64*, %struct.acpi_resource_address64** %6, align 8
  %60 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.acpi_resource_address64*, %struct.acpi_resource_address64** %6, align 8
  %63 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 4095
  br i1 %65, label %66, label %68

66:                                               ; preds = %54
  %67 = load i32, i32* @ACPI_DECODE_10, align 4
  br label %70

68:                                               ; preds = %54
  %69 = load i32, i32* @ACPI_DECODE_16, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  %72 = call i32 @pnpacpi_parse_allocated_ioresource(%struct.pnp_dev* %55, i32 %58, i32 %61, i32 %71)
  br label %73

73:                                               ; preds = %70, %48
  br label %74

74:                                               ; preds = %14, %27, %73, %34
  ret void
}

declare dso_local i32 @acpi_resource_to_address64(%struct.acpi_resource*, %struct.acpi_resource_address64*) #1

declare dso_local i32 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @pnpacpi_parse_allocated_memresource(%struct.pnp_dev*, i32, i32, i32) #1

declare dso_local i32 @pnpacpi_parse_allocated_ioresource(%struct.pnp_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

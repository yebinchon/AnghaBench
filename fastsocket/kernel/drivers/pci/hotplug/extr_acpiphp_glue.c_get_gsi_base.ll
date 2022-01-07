; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_acpiphp_glue.c_get_gsi_base.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_acpiphp_glue.c_get_gsi_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_buffer = type { %union.acpi_object*, i32, i32*, i32 }
%union.acpi_object = type { i64 }
%struct.TYPE_2__ = type { i8* }
%struct.acpi_subtable_header = type { i32 }
%struct.acpi_madt_io_sapic = type { i64 }
%struct.acpi_madt_io_apic = type { i64 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_GSB\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"_MAT\00", align 1
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*)* @get_gsi_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_gsi_base(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.acpi_buffer, align 8
  %10 = alloca %union.acpi_object*, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  store i32 -1, i32* %7, align 4
  %12 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 0
  %13 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to %union.acpi_object*
  store %union.acpi_object* %15, %union.acpi_object** %12, align 8
  %16 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 1
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 2
  store i32* null, i32** %17, align 8
  %18 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 3
  store i32 0, i32* %18, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @acpi_evaluate_integer(i32 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i64* %8)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @ACPI_SUCCESS(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i64, i64* %8, align 8
  %26 = load i64*, i64** %5, align 8
  store i64 %25, i64* %26, align 8
  store i32 0, i32* %3, align 4
  br label %79

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @acpi_evaluate_object(i32 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null, %struct.acpi_buffer* %9)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @ACPI_FAILURE(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 0
  %39 = load %union.acpi_object*, %union.acpi_object** %38, align 8
  %40 = icmp ne %union.acpi_object* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %37, %33, %27
  store i32 -1, i32* %3, align 4
  br label %79

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 0
  %44 = load %union.acpi_object*, %union.acpi_object** %43, align 8
  store %union.acpi_object* %44, %union.acpi_object** %10, align 8
  %45 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %46 = bitcast %union.acpi_object* %45 to i64*
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %74

51:                                               ; preds = %42
  %52 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %53 = bitcast %union.acpi_object* %52 to %struct.TYPE_2__*
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %11, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = bitcast i8* %56 to %struct.acpi_subtable_header*
  %58 = getelementptr inbounds %struct.acpi_subtable_header, %struct.acpi_subtable_header* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  switch i32 %59, label %72 [
    i32 128, label %60
    i32 129, label %66
  ]

60:                                               ; preds = %51
  %61 = load i8*, i8** %11, align 8
  %62 = bitcast i8* %61 to %struct.acpi_madt_io_sapic*
  %63 = getelementptr inbounds %struct.acpi_madt_io_sapic, %struct.acpi_madt_io_sapic* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64*, i64** %5, align 8
  store i64 %64, i64* %65, align 8
  store i32 0, i32* %7, align 4
  br label %73

66:                                               ; preds = %51
  %67 = load i8*, i8** %11, align 8
  %68 = bitcast i8* %67 to %struct.acpi_madt_io_apic*
  %69 = getelementptr inbounds %struct.acpi_madt_io_apic, %struct.acpi_madt_io_apic* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64*, i64** %5, align 8
  store i64 %70, i64* %71, align 8
  store i32 0, i32* %7, align 4
  br label %73

72:                                               ; preds = %51
  br label %73

73:                                               ; preds = %72, %66, %60
  br label %74

74:                                               ; preds = %73, %50
  %75 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 0
  %76 = load %union.acpi_object*, %union.acpi_object** %75, align 8
  %77 = call i32 @kfree(%union.acpi_object* %76)
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %74, %41, %24
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_evaluate_object(i32, i8*, i32*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

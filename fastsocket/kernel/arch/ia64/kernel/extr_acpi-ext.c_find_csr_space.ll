; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_acpi-ext.c_find_csr_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_acpi-ext.c_find_csr_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_resource = type { i32 }
%struct.csr_space = type { i64, i32 }
%struct.acpi_resource_address64 = type { i64, i64, i64, i32 }

@ACPI_MEMORY_RANGE = common dso_local global i64 0, align 8
@ACPI_CONSUMER = common dso_local global i64 0, align 8
@AE_CTRL_TERMINATE = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_resource*, i8*)* @find_csr_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_csr_space(%struct.acpi_resource* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_resource*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.csr_space*, align 8
  %7 = alloca %struct.acpi_resource_address64, align 8
  %8 = alloca i32, align 4
  store %struct.acpi_resource* %0, %struct.acpi_resource** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.csr_space*
  store %struct.csr_space* %10, %struct.csr_space** %6, align 8
  %11 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %12 = call i32 @acpi_resource_to_address64(%struct.acpi_resource* %11, %struct.acpi_resource_address64* %7)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i64 @ACPI_SUCCESS(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %7, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ACPI_MEMORY_RANGE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %7, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %7, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ACPI_CONSUMER, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %7, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.csr_space*, %struct.csr_space** %6, align 8
  %34 = getelementptr inbounds %struct.csr_space, %struct.csr_space* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %7, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.csr_space*, %struct.csr_space** %6, align 8
  %38 = getelementptr inbounds %struct.csr_space, %struct.csr_space* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load i32, i32* @AE_CTRL_TERMINATE, align 4
  store i32 %39, i32* %3, align 4
  br label %42

40:                                               ; preds = %25, %21, %16, %2
  %41 = load i32, i32* @AE_OK, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %30
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @acpi_resource_to_address64(%struct.acpi_resource*, %struct.acpi_resource_address64*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_tbinstal.c_acpi_tb_verify_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_tbinstal.c_acpi_tb_verify_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_desc = type { i32, i32, i64, i32, i32 }

@AE_OK = common dso_local global i32 0, align 4
@tb_verify_table = common dso_local global i32 0, align 4
@ACPI_TABLE_ORIGIN_MASK = common dso_local global i32 0, align 4
@ACPI_TABLE_ORIGIN_MAPPED = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_SIG_FACS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_tb_verify_table(%struct.acpi_table_desc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_table_desc*, align 8
  %4 = alloca i32, align 4
  store %struct.acpi_table_desc* %0, %struct.acpi_table_desc** %3, align 8
  %5 = load i32, i32* @AE_OK, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* @tb_verify_table, align 4
  %7 = call i32 @ACPI_FUNCTION_TRACE(i32 %6)
  %8 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %3, align 8
  %9 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %39, label %12

12:                                               ; preds = %1
  %13 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %3, align 8
  %14 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @ACPI_TABLE_ORIGIN_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @ACPI_TABLE_ORIGIN_MAPPED, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %12
  %21 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %3, align 8
  %22 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %3, align 8
  %25 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @acpi_os_map_memory(i32 %23, i32 %26)
  %28 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %3, align 8
  %29 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %28, i32 0, i32 2
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %20, %12
  %31 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %3, align 8
  %32 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @AE_NO_MEMORY, align 4
  %37 = call i32 @return_ACPI_STATUS(i32 %36)
  br label %38

38:                                               ; preds = %35, %30
  br label %39

39:                                               ; preds = %38, %1
  %40 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %3, align 8
  %41 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %40, i32 0, i32 3
  %42 = load i32, i32* @ACPI_SIG_FACS, align 4
  %43 = call i32 @ACPI_COMPARE_NAME(i32* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %39
  %46 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %3, align 8
  %47 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %3, align 8
  %50 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @acpi_tb_verify_checksum(i64 %48, i32 %51)
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %45, %39
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @return_ACPI_STATUS(i32 %54)
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i64 @acpi_os_map_memory(i32, i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_COMPARE_NAME(i32*, i32) #1

declare dso_local i32 @acpi_tb_verify_checksum(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

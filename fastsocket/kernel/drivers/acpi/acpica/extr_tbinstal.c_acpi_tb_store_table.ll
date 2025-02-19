; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_tbinstal.c_acpi_tb_store_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_tbinstal.c_acpi_tb_store_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32, i32, i64, %struct.acpi_table_header*, i32 }
%struct.acpi_table_header = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@acpi_gbl_root_table_list = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_tb_store_table(i32 %0, %struct.acpi_table_header* %1, i64 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.acpi_table_header*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.acpi_table_header* %1, %struct.acpi_table_header** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %13 = load i32, i32* @AE_OK, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acpi_gbl_root_table_list, i32 0, i32 0), align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acpi_gbl_root_table_list, i32 0, i32 1), align 8
  %16 = icmp uge i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %5
  %18 = call i32 (...) @acpi_tb_resize_root_table_list()
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = call i64 @ACPI_FAILURE(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %6, align 4
  br label %63

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %5
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acpi_gbl_root_table_list, i32 0, i32 2), align 8
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acpi_gbl_root_table_list, i32 0, i32 0), align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 5
  store i32 %26, i32* %30, align 8
  %31 = load %struct.acpi_table_header*, %struct.acpi_table_header** %8, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acpi_gbl_root_table_list, i32 0, i32 2), align 8
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acpi_gbl_root_table_list, i32 0, i32 0), align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 4
  store %struct.acpi_table_header* %31, %struct.acpi_table_header** %35, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acpi_gbl_root_table_list, i32 0, i32 2), align 8
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acpi_gbl_root_table_list, i32 0, i32 0), align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i64 %36, i64* %40, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acpi_gbl_root_table_list, i32 0, i32 2), align 8
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acpi_gbl_root_table_list, i32 0, i32 0), align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acpi_gbl_root_table_list, i32 0, i32 2), align 8
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acpi_gbl_root_table_list, i32 0, i32 0), align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  store i32 %45, i32* %49, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acpi_gbl_root_table_list, i32 0, i32 2), align 8
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acpi_gbl_root_table_list, i32 0, i32 0), align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load %struct.acpi_table_header*, %struct.acpi_table_header** %8, align 8
  %55 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ACPI_MOVE_32_TO_32(i32* %53, i32 %56)
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acpi_gbl_root_table_list, i32 0, i32 0), align 8
  %59 = load i64*, i64** %11, align 8
  store i64 %58, i64* %59, align 8
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acpi_gbl_root_table_list, i32 0, i32 0), align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acpi_gbl_root_table_list, i32 0, i32 0), align 8
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %25, %22
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @acpi_tb_resize_root_table_list(...) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_MOVE_32_TO_32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

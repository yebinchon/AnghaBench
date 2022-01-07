; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_tbfadt.c_acpi_tb_parse_fadt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_tbfadt.c_acpi_tb_parse_fadt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.acpi_table_header = type { i32 }

@acpi_gbl_root_table_list = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@acpi_gbl_FADT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ACPI_SIG_DSDT = common dso_local global i32 0, align 4
@ACPI_TABLE_INDEX_DSDT = common dso_local global i32 0, align 4
@ACPI_SIG_FACS = common dso_local global i32 0, align 4
@ACPI_TABLE_INDEX_FACS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_tb_parse_fadt(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.acpi_table_header*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @acpi_gbl_root_table_list, i32 0, i32 0), align 8
  %6 = load i64, i64* %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i64 %6
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %3, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @acpi_gbl_root_table_list, i32 0, i32 0), align 8
  %11 = load i64, i64* %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i64, i64* %3, align 8
  %16 = call %struct.acpi_table_header* @acpi_os_map_memory(i32 %14, i64 %15)
  store %struct.acpi_table_header* %16, %struct.acpi_table_header** %4, align 8
  %17 = load %struct.acpi_table_header*, %struct.acpi_table_header** %4, align 8
  %18 = icmp ne %struct.acpi_table_header* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %40

20:                                               ; preds = %1
  %21 = load %struct.acpi_table_header*, %struct.acpi_table_header** %4, align 8
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @acpi_tb_verify_checksum(%struct.acpi_table_header* %21, i64 %22)
  %24 = load %struct.acpi_table_header*, %struct.acpi_table_header** %4, align 8
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @acpi_tb_create_local_fadt(%struct.acpi_table_header* %24, i64 %25)
  %27 = load %struct.acpi_table_header*, %struct.acpi_table_header** %4, align 8
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @acpi_os_unmap_memory(%struct.acpi_table_header* %27, i64 %28)
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_FADT, i32 0, i32 1), align 8
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* @ACPI_SIG_DSDT, align 4
  %33 = load i32, i32* @ACPI_TABLE_INDEX_DSDT, align 4
  %34 = call i32 @acpi_tb_install_table(i32 %31, i32 %32, i32 %33)
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_FADT, i32 0, i32 0), align 8
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* @ACPI_SIG_FACS, align 4
  %38 = load i32, i32* @ACPI_TABLE_INDEX_FACS, align 4
  %39 = call i32 @acpi_tb_install_table(i32 %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %20, %19
  ret void
}

declare dso_local %struct.acpi_table_header* @acpi_os_map_memory(i32, i64) #1

declare dso_local i32 @acpi_tb_verify_checksum(%struct.acpi_table_header*, i64) #1

declare dso_local i32 @acpi_tb_create_local_fadt(%struct.acpi_table_header*, i64) #1

declare dso_local i32 @acpi_os_unmap_memory(%struct.acpi_table_header*, i64) #1

declare dso_local i32 @acpi_tb_install_table(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

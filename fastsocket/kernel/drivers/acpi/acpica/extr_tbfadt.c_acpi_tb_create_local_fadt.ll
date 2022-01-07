; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_tbfadt.c_acpi_tb_create_local_fadt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_tbfadt.c_acpi_tb_create_local_fadt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_header = type { i32 }

@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"FADT (revision %u) is longer than ACPI 2.0 version, truncating length 0x%X to 0x%X\00", align 1
@acpi_gbl_FADT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_tb_create_local_fadt(%struct.acpi_table_header* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_table_header*, align 8
  %4 = alloca i32, align 4
  store %struct.acpi_table_header* %0, %struct.acpi_table_header** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = sext i32 %5 to i64
  %7 = icmp ugt i64 %6, 4
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load i32, i32* @AE_INFO, align 4
  %10 = load %struct.acpi_table_header*, %struct.acpi_table_header** %3, align 8
  %11 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @ACPI_WARNING(i32 4)
  br label %15

15:                                               ; preds = %8, %2
  %16 = call i32 @ACPI_MEMSET(i32* @acpi_gbl_FADT, i32 0, i32 4)
  %17 = load %struct.acpi_table_header*, %struct.acpi_table_header** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @ACPI_MIN(i32 %18, i32 4)
  %20 = call i32 @ACPI_MEMCPY(i32* @acpi_gbl_FADT, %struct.acpi_table_header* %17, i32 %19)
  %21 = call i32 (...) @acpi_tb_convert_fadt()
  %22 = call i32 (...) @acpi_tb_validate_fadt()
  %23 = call i32 (...) @acpi_tb_setup_fadt_registers()
  ret void
}

declare dso_local i32 @ACPI_WARNING(i32) #1

declare dso_local i32 @ACPI_MEMSET(i32*, i32, i32) #1

declare dso_local i32 @ACPI_MEMCPY(i32*, %struct.acpi_table_header*, i32) #1

declare dso_local i32 @ACPI_MIN(i32, i32) #1

declare dso_local i32 @acpi_tb_convert_fadt(...) #1

declare dso_local i32 @acpi_tb_validate_fadt(...) #1

declare dso_local i32 @acpi_tb_setup_fadt_registers(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_tbutils.c_acpi_tb_check_xsdt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_tbutils.c_acpi_tb_check_xsdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_header = type { i32 }

@u8 = common dso_local global i32 0, align 4
@table_entry = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@AE_INVALID_TABLE_LENGTH = common dso_local global i32 0, align 4
@AE_NULL_ENTRY = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @acpi_tb_check_xsdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_tb_check_xsdt(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_table_header*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* @u8, align 4
  %10 = load i32, i32* @table_entry, align 4
  %11 = mul nsw i32 %9, %10
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.acpi_table_header* @acpi_os_map_memory(i32 %12, i32 4)
  store %struct.acpi_table_header* %13, %struct.acpi_table_header** %4, align 8
  %14 = load %struct.acpi_table_header*, %struct.acpi_table_header** %4, align 8
  %15 = icmp ne %struct.acpi_table_header* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %17, i32* %2, align 4
  br label %80

18:                                               ; preds = %1
  %19 = load %struct.acpi_table_header*, %struct.acpi_table_header** %4, align 8
  %20 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load %struct.acpi_table_header*, %struct.acpi_table_header** %4, align 8
  %23 = call i32 @acpi_os_unmap_memory(%struct.acpi_table_header* %22, i32 4)
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ult i64 %25, 4
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* @AE_INVALID_TABLE_LENGTH, align 4
  store i32 %28, i32* %2, align 4
  br label %80

29:                                               ; preds = %18
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call %struct.acpi_table_header* @acpi_os_map_memory(i32 %30, i32 %31)
  store %struct.acpi_table_header* %32, %struct.acpi_table_header** %4, align 8
  %33 = load %struct.acpi_table_header*, %struct.acpi_table_header** %4, align 8
  %34 = icmp ne %struct.acpi_table_header* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %36, i32* %2, align 4
  br label %80

37:                                               ; preds = %29
  %38 = load %struct.acpi_table_header*, %struct.acpi_table_header** %4, align 8
  %39 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = sub i64 %41, 4
  %43 = udiv i64 %42, 4
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* @u8, align 4
  %46 = load %struct.acpi_table_header*, %struct.acpi_table_header** %4, align 8
  %47 = call i32 @ACPI_CAST_PTR(i32 %45, %struct.acpi_table_header* %46)
  %48 = sext i32 %47 to i64
  %49 = add i64 %48, 4
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* @table_entry, align 4
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %66, %37
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %51
  %56 = load i32, i32* @table_entry, align 4
  %57 = call i32 @ACPI_MOVE_64_TO_64(i32* %6, i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  br label %69

61:                                               ; preds = %55
  %62 = load i32, i32* @table_entry, align 4
  %63 = sext i32 %62 to i64
  %64 = add i64 %63, 4
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* @table_entry, align 4
  br label %66

66:                                               ; preds = %61
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %51

69:                                               ; preds = %60, %51
  %70 = load %struct.acpi_table_header*, %struct.acpi_table_header** %4, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @acpi_os_unmap_memory(%struct.acpi_table_header* %70, i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* @AE_NULL_ENTRY, align 4
  store i32 %77, i32* %2, align 4
  br label %80

78:                                               ; preds = %69
  %79 = load i32, i32* @AE_OK, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %78, %76, %35, %27, %16
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.acpi_table_header* @acpi_os_map_memory(i32, i32) #1

declare dso_local i32 @acpi_os_unmap_memory(%struct.acpi_table_header*, i32) #1

declare dso_local i32 @ACPI_CAST_PTR(i32, %struct.acpi_table_header*) #1

declare dso_local i32 @ACPI_MOVE_64_TO_64(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

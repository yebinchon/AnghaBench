; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_tbfind.c_acpi_tb_find_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_tbfind.c_acpi_tb_find_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32*, i32*, i32* }
%struct.acpi_table_header = type { i32, i32, i32 }

@tb_find_table = common dso_local global i32 0, align 4
@ACPI_NAME_SIZE = common dso_local global i32 0, align 4
@ACPI_OEM_ID_SIZE = common dso_local global i32 0, align 4
@ACPI_OEM_TABLE_ID_SIZE = common dso_local global i32 0, align 4
@acpi_gbl_root_table_list = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ACPI_DB_TABLES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Found table [%4.4s]\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4
@AE_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_tb_find_table(i8* %0, i8* %1, i8* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.acpi_table_header, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i32, i32* @tb_find_table, align 4
  %14 = call i32 @ACPI_FUNCTION_TRACE(i32 %13)
  %15 = call i32 @ACPI_MEMSET(%struct.acpi_table_header* %12, i32 0, i32 12)
  %16 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %12, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* @ACPI_NAME_SIZE, align 4
  %20 = call i32 @ACPI_STRNCPY(i32 %17, i8* %18, i32 %19)
  %21 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %12, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* @ACPI_OEM_ID_SIZE, align 4
  %25 = call i32 @ACPI_STRNCPY(i32 %22, i8* %23, i32 %24)
  %26 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %12, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* @ACPI_OEM_TABLE_ID_SIZE, align 4
  %30 = call i32 @ACPI_STRNCPY(i32 %27, i8* %28, i32 %29)
  store i64 0, i64* %10, align 8
  br label %31

31:                                               ; preds = %132, %4
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_root_table_list, i32 0, i32 0), align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %135

35:                                               ; preds = %31
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_root_table_list, i32 0, i32 1), align 8
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %12, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ACPI_NAME_SIZE, align 4
  %43 = call i64 @ACPI_MEMCMP(i32* %39, i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %132

46:                                               ; preds = %35
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_root_table_list, i32 0, i32 1), align 8
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = icmp ne %struct.TYPE_4__* %51, null
  br i1 %52, label %73, label %53

53:                                               ; preds = %46
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_root_table_list, i32 0, i32 1), align 8
  %55 = load i64, i64* %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 %55
  %57 = call i32 @acpi_tb_verify_table(%struct.TYPE_5__* %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i64 @ACPI_FAILURE(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @return_ACPI_STATUS(i32 %62)
  br label %64

64:                                               ; preds = %61, %53
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_root_table_list, i32 0, i32 1), align 8
  %66 = load i64, i64* %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = icmp ne %struct.TYPE_4__* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %64
  br label %132

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %46
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_root_table_list, i32 0, i32 1), align 8
  %75 = load i64, i64* %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %12, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @ACPI_NAME_SIZE, align 4
  %84 = call i64 @ACPI_MEMCMP(i32* %80, i32 %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %131, label %86

86:                                               ; preds = %73
  %87 = load i8*, i8** %7, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  %89 = load i8, i8* %88, align 1
  %90 = icmp ne i8 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %86
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_root_table_list, i32 0, i32 1), align 8
  %93 = load i64, i64* %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %12, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @ACPI_OEM_ID_SIZE, align 4
  %102 = call i64 @ACPI_MEMCMP(i32* %98, i32 %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %131, label %104

104:                                              ; preds = %91, %86
  %105 = load i8*, i8** %8, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 0
  %107 = load i8, i8* %106, align 1
  %108 = icmp ne i8 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %104
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_root_table_list, i32 0, i32 1), align 8
  %111 = load i64, i64* %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %12, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @ACPI_OEM_TABLE_ID_SIZE, align 4
  %120 = call i64 @ACPI_MEMCMP(i32* %116, i32 %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %131, label %122

122:                                              ; preds = %109, %104
  %123 = load i64, i64* %10, align 8
  %124 = load i64*, i64** %9, align 8
  store i64 %123, i64* %124, align 8
  %125 = load i32, i32* @ACPI_DB_TABLES, align 4
  %126 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %12, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @ACPI_DEBUG_PRINT(i32 %127)
  %129 = load i32, i32* @AE_OK, align 4
  %130 = call i32 @return_ACPI_STATUS(i32 %129)
  br label %131

131:                                              ; preds = %122, %109, %91, %73
  br label %132

132:                                              ; preds = %131, %71, %45
  %133 = load i64, i64* %10, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %10, align 8
  br label %31

135:                                              ; preds = %31
  %136 = load i32, i32* @AE_NOT_FOUND, align 4
  %137 = call i32 @return_ACPI_STATUS(i32 %136)
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_MEMSET(%struct.acpi_table_header*, i32, i32) #1

declare dso_local i32 @ACPI_STRNCPY(i32, i8*, i32) #1

declare dso_local i64 @ACPI_MEMCMP(i32*, i32, i32) #1

declare dso_local i32 @acpi_tb_verify_table(%struct.TYPE_5__*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

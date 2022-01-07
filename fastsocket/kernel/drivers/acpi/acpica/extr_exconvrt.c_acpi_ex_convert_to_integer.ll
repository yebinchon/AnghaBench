; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exconvrt.c_acpi_ex_convert_to_integer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exconvrt.c_acpi_ex_convert_to_integer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@ex_convert_to_integer = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@AE_TYPE = common dso_local global i32 0, align 4
@AE_AML_BUFFER_LIMIT = common dso_local global i32 0, align 4
@acpi_gbl_integer_byte_width = common dso_local global i64 0, align 8
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Converted value: %8.8X%8.8X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_convert_to_integer(%union.acpi_operand_object* %0, %union.acpi_operand_object** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca %union.acpi_operand_object**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %union.acpi_operand_object*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %5, align 8
  store %union.acpi_operand_object** %1, %union.acpi_operand_object*** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i32, i32* @ex_convert_to_integer, align 4
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %16 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %14, %union.acpi_operand_object* %15)
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %18 = bitcast %union.acpi_operand_object* %17 to %struct.TYPE_5__*
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %35 [
    i32 129, label %21
    i32 130, label %26
    i32 128, label %26
  ]

21:                                               ; preds = %3
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %23 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  store %union.acpi_operand_object* %22, %union.acpi_operand_object** %23, align 8
  %24 = load i32, i32* @AE_OK, align 4
  %25 = call i32 @return_ACPI_STATUS(i32 %24)
  br label %26

26:                                               ; preds = %3, %3, %21
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %28 = bitcast %union.acpi_operand_object* %27 to %struct.TYPE_4__*
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %9, align 8
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %32 = bitcast %union.acpi_operand_object* %31 to %struct.TYPE_4__*
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %12, align 8
  br label %38

35:                                               ; preds = %3
  %36 = load i32, i32* @AE_TYPE, align 4
  %37 = call i32 @return_ACPI_STATUS(i32 %36)
  br label %38

38:                                               ; preds = %35, %26
  store i64 0, i64* %10, align 8
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %40 = bitcast %union.acpi_operand_object* %39 to %struct.TYPE_5__*
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %87 [
    i32 128, label %43
    i32 130, label %55
  ]

43:                                               ; preds = %38
  %44 = load i32*, i32** %9, align 8
  %45 = bitcast i32* %44 to i8*
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @acpi_ut_strtoul64(i8* %45, i64 %46, i64* %10)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @ACPI_FAILURE(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @return_ACPI_STATUS(i32 %52)
  br label %54

54:                                               ; preds = %51, %43
  br label %88

55:                                               ; preds = %38
  %56 = load i64, i64* %12, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* @AE_AML_BUFFER_LIMIT, align 4
  %60 = call i32 @return_ACPI_STATUS(i32 %59)
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* @acpi_gbl_integer_byte_width, align 8
  %64 = icmp ugt i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i64, i64* @acpi_gbl_integer_byte_width, align 8
  store i64 %66, i64* %12, align 8
  br label %67

67:                                               ; preds = %65, %61
  store i64 0, i64* %11, align 8
  br label %68

68:                                               ; preds = %83, %67
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* %12, align 8
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %72, label %86

72:                                               ; preds = %68
  %73 = load i32*, i32** %9, align 8
  %74 = load i64, i64* %11, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %11, align 8
  %79 = mul i64 %78, 8
  %80 = shl i64 %77, %79
  %81 = load i64, i64* %10, align 8
  %82 = or i64 %81, %80
  store i64 %82, i64* %10, align 8
  br label %83

83:                                               ; preds = %72
  %84 = load i64, i64* %11, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %11, align 8
  br label %68

86:                                               ; preds = %68
  br label %88

87:                                               ; preds = %38
  br label %88

88:                                               ; preds = %87, %86, %54
  %89 = call %union.acpi_operand_object* @acpi_ut_create_internal_object(i32 129)
  store %union.acpi_operand_object* %89, %union.acpi_operand_object** %8, align 8
  %90 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %91 = icmp ne %union.acpi_operand_object* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* @AE_NO_MEMORY, align 4
  %94 = call i32 @return_ACPI_STATUS(i32 %93)
  br label %95

95:                                               ; preds = %92, %88
  %96 = load i32, i32* @ACPI_DB_EXEC, align 4
  %97 = load i64, i64* %10, align 8
  %98 = call i32 @ACPI_FORMAT_UINT64(i64 %97)
  %99 = call i32 @ACPI_DEBUG_PRINT(i32 %98)
  %100 = load i64, i64* %10, align 8
  %101 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %102 = bitcast %union.acpi_operand_object* %101 to %struct.TYPE_6__*
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  store i64 %100, i64* %103, align 8
  %104 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %105 = call i32 @acpi_ex_truncate_for32bit_table(%union.acpi_operand_object* %104)
  %106 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %107 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  store %union.acpi_operand_object* %106, %union.acpi_operand_object** %107, align 8
  %108 = load i32, i32* @AE_OK, align 4
  %109 = call i32 @return_ACPI_STATUS(i32 %108)
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_operand_object*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ut_strtoul64(i8*, i64, i64*) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @ACPI_FORMAT_UINT64(i64) #1

declare dso_local i32 @acpi_ex_truncate_for32bit_table(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

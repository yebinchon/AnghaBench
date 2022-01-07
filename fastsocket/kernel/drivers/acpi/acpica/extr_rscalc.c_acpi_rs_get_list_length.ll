; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_rscalc.c_acpi_rs_get_list_length.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_rscalc.c_acpi_rs_get_list_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rs_get_list_length = common dso_local global i32 0, align 4
@acpi_gbl_resource_aml_sizes = common dso_local global i64* null, align 8
@ACPI_RS_SIZE_MIN = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@acpi_gbl_resource_struct_sizes = common dso_local global i32* null, align 8
@ACPI_DB_RESOURCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Type %.2X, AmlLength %.2X InternalLength %.2X\0A\00", align 1
@AE_AML_NO_RESOURCE_END_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_rs_get_list_length(i64* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %17 = load i32, i32* @rs_get_list_length, align 4
  %18 = call i32 @ACPI_FUNCTION_TRACE(i32 %17)
  %19 = load i32*, i32** %7, align 8
  store i32 0, i32* %19, align 4
  %20 = load i64*, i64** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  store i64* %23, i64** %9, align 8
  br label %24

24:                                               ; preds = %89, %3
  %25 = load i64*, i64** %5, align 8
  %26 = load i64*, i64** %9, align 8
  %27 = icmp ult i64* %25, %26
  br i1 %27, label %28, label %115

28:                                               ; preds = %24
  %29 = load i64*, i64** %5, align 8
  %30 = call i32 @acpi_ut_validate_resource(i64* %29, i64* %15)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @ACPI_FAILURE(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @return_ACPI_STATUS(i32 %35)
  br label %37

37:                                               ; preds = %34, %28
  %38 = load i64*, i64** %5, align 8
  %39 = call i32 @acpi_ut_get_resource_length(i64* %38)
  store i32 %39, i32* %13, align 4
  %40 = load i64*, i64** @acpi_gbl_resource_aml_sizes, align 8
  %41 = load i64, i64* %15, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %16, align 8
  store i32 0, i32* %14, align 4
  %44 = load i64*, i64** %5, align 8
  %45 = load i64*, i64** %5, align 8
  %46 = call i32 @acpi_ut_get_resource_header_length(i64* %45)
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %44, i64 %47
  store i64* %48, i64** %10, align 8
  %49 = load i64*, i64** %5, align 8
  %50 = call i32 @acpi_ut_get_resource_type(i64* %49)
  switch i32 %50, label %88 [
    i32 130, label %51
    i32 133, label %57
    i32 128, label %61
    i32 129, label %61
    i32 132, label %63
    i32 135, label %70
    i32 136, label %70
    i32 134, label %70
    i32 131, label %74
  ]

51:                                               ; preds = %37
  %52 = load i64*, i64** %10, align 8
  %53 = call i32 @ACPI_MOVE_16_TO_16(i32* %12, i64* %52)
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = call i32 @acpi_rs_count_set_bits(i64 %55)
  store i32 %56, i32* %14, align 4
  br label %89

57:                                               ; preds = %37
  %58 = load i64*, i64** %10, align 8
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @acpi_rs_count_set_bits(i64 %59)
  store i32 %60, i32* %14, align 4
  br label %89

61:                                               ; preds = %37, %37
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %14, align 4
  br label %89

63:                                               ; preds = %37
  %64 = load i32, i32* @ACPI_RS_SIZE_MIN, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, %64
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* @AE_OK, align 4
  %69 = call i32 @return_ACPI_STATUS(i32 %68)
  br label %70

70:                                               ; preds = %37, %37, %37, %63
  %71 = load i32, i32* %13, align 4
  %72 = load i64, i64* %16, align 8
  %73 = call i32 @acpi_rs_stream_option_length(i32 %71, i64 %72)
  store i32 %73, i32* %14, align 4
  br label %89

74:                                               ; preds = %37
  %75 = load i64*, i64** %10, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 1
  %77 = load i64, i64* %76, align 8
  %78 = sub i64 %77, 1
  %79 = mul i64 %78, 4
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %14, align 4
  %83 = sub nsw i32 %81, %82
  %84 = load i64, i64* %16, align 8
  %85 = call i32 @acpi_rs_stream_option_length(i32 %83, i64 %84)
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %14, align 4
  br label %89

88:                                               ; preds = %37
  br label %89

89:                                               ; preds = %88, %74, %70, %61, %57, %51
  %90 = load i32*, i32** @acpi_gbl_resource_struct_sizes, align 8
  %91 = load i64, i64* %15, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %93, %94
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = call i64 @ACPI_ROUND_UP_TO_NATIVE_WORD(i32 %96)
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, %99
  store i32 %102, i32* %100, align 4
  %103 = load i32, i32* @ACPI_DB_RESOURCES, align 4
  %104 = load i64*, i64** %5, align 8
  %105 = call i32 @acpi_ut_get_resource_type(i64* %104)
  %106 = load i64*, i64** %5, align 8
  %107 = call i32 @acpi_ut_get_descriptor_length(i64* %106)
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @ACPI_DEBUG_PRINT(i32 %108)
  %110 = load i64*, i64** %5, align 8
  %111 = call i32 @acpi_ut_get_descriptor_length(i64* %110)
  %112 = load i64*, i64** %5, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i64, i64* %112, i64 %113
  store i64* %114, i64** %5, align 8
  br label %24

115:                                              ; preds = %24
  %116 = load i32, i32* @AE_AML_NO_RESOURCE_END_TAG, align 4
  %117 = call i32 @return_ACPI_STATUS(i32 %116)
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_ut_validate_resource(i64*, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ut_get_resource_length(i64*) #1

declare dso_local i32 @acpi_ut_get_resource_header_length(i64*) #1

declare dso_local i32 @acpi_ut_get_resource_type(i64*) #1

declare dso_local i32 @ACPI_MOVE_16_TO_16(i32*, i64*) #1

declare dso_local i32 @acpi_rs_count_set_bits(i64) #1

declare dso_local i32 @acpi_rs_stream_option_length(i32, i64) #1

declare dso_local i64 @ACPI_ROUND_UP_TO_NATIVE_WORD(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_get_descriptor_length(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utresrc.c_acpi_ut_walk_aml_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utresrc.c_acpi_ut_walk_aml_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ut_walk_aml_resources = common dso_local global i32 0, align 4
@AE_AML_NO_RESOURCE_END_TAG = common dso_local global i32 0, align 4
@ACPI_RESOURCE_NAME_END_TAG = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ut_walk_aml_resources(i32* %0, i32 %1, i32 (i32*, i64, i64, i32, i8**)* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (i32*, i64, i64, i32, i8**)*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 (i32*, i64, i64, i32, i8**)* %2, i32 (i32*, i64, i64, i32, i8**)** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* @ut_walk_aml_resources, align 4
  %16 = call i32 @ACPI_FUNCTION_TRACE(i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ult i64 %18, 4
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @AE_AML_NO_RESOURCE_END_TAG, align 4
  %22 = call i32 @return_ACPI_STATUS(i32 %21)
  br label %23

23:                                               ; preds = %20, %4
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32* %27, i32** %11, align 8
  br label %28

28:                                               ; preds = %83, %23
  %29 = load i32*, i32** %6, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = icmp ult i32* %29, %30
  br i1 %31, label %32, label %90

32:                                               ; preds = %28
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @acpi_ut_validate_resource(i32* %33, i32* %12)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i64 @ACPI_FAILURE(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @return_ACPI_STATUS(i32 %39)
  br label %41

41:                                               ; preds = %38, %32
  %42 = load i32*, i32** %6, align 8
  %43 = call i64 @acpi_ut_get_descriptor_length(i32* %42)
  store i64 %43, i64* %13, align 8
  %44 = load i32 (i32*, i64, i64, i32, i8**)*, i32 (i32*, i64, i64, i32, i8**)** %8, align 8
  %45 = icmp ne i32 (i32*, i64, i64, i32, i8**)* %44, null
  br i1 %45, label %46, label %60

46:                                               ; preds = %41
  %47 = load i32 (i32*, i64, i64, i32, i8**)*, i32 (i32*, i64, i64, i32, i8**)** %8, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load i64, i64* %13, align 8
  %50 = load i64, i64* %14, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load i8**, i8*** %9, align 8
  %53 = call i32 %47(i32* %48, i64 %49, i64 %50, i32 %51, i8** %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i64 @ACPI_FAILURE(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %5, align 4
  br label %92

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %59, %41
  %61 = load i32*, i32** %6, align 8
  %62 = call i64 @acpi_ut_get_resource_type(i32* %61)
  %63 = load i64, i64* @ACPI_RESOURCE_NAME_END_TAG, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %60
  %66 = load i32*, i32** %6, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32*, i32** %11, align 8
  %69 = icmp uge i32* %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32, i32* @AE_AML_NO_RESOURCE_END_TAG, align 4
  %72 = call i32 @return_ACPI_STATUS(i32 %71)
  br label %73

73:                                               ; preds = %70, %65
  %74 = load i32 (i32*, i64, i64, i32, i8**)*, i32 (i32*, i64, i64, i32, i8**)** %8, align 8
  %75 = icmp ne i32 (i32*, i64, i64, i32, i8**)* %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = load i32*, i32** %6, align 8
  %78 = bitcast i32* %77 to i8*
  %79 = load i8**, i8*** %9, align 8
  store i8* %78, i8** %79, align 8
  br label %80

80:                                               ; preds = %76, %73
  %81 = load i32, i32* @AE_OK, align 4
  %82 = call i32 @return_ACPI_STATUS(i32 %81)
  br label %83

83:                                               ; preds = %80, %60
  %84 = load i64, i64* %13, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 %84
  store i32* %86, i32** %6, align 8
  %87 = load i64, i64* %13, align 8
  %88 = load i64, i64* %14, align 8
  %89 = add nsw i64 %88, %87
  store i64 %89, i64* %14, align 8
  br label %28

90:                                               ; preds = %28
  %91 = load i32, i32* @AE_AML_NO_RESOURCE_END_TAG, align 4
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %90, %57
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ut_validate_resource(i32*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i64 @acpi_ut_get_descriptor_length(i32*) #1

declare dso_local i64 @acpi_ut_get_resource_type(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

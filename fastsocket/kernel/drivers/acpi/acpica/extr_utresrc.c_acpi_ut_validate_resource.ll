; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utresrc.c_acpi_ut_validate_resource.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utresrc.c_acpi_ut_validate_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACPI_RESOURCE_NAME_LARGE = common dso_local global i32 0, align 4
@ACPI_RESOURCE_NAME_LARGE_MAX = common dso_local global i32 0, align 4
@AE_AML_INVALID_RESOURCE_TYPE = common dso_local global i32 0, align 4
@ACPI_RESOURCE_NAME_SMALL_MASK = common dso_local global i32 0, align 4
@acpi_gbl_resource_types = common dso_local global i32* null, align 8
@acpi_gbl_resource_aml_sizes = common dso_local global i32* null, align 8
@AE_AML_BAD_RESOURCE_LENGTH = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ut_validate_resource(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @ACPI_GET8(i8* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @ACPI_RESOURCE_NAME_LARGE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @ACPI_RESOURCE_NAME_LARGE_MAX, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @AE_AML_INVALID_RESOURCE_TYPE, align 4
  store i32 %22, i32* %3, align 4
  br label %89

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 %24, 112
  store i32 %25, i32* %7, align 4
  br label %31

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @ACPI_RESOURCE_NAME_SMALL_MASK, align 4
  %29 = and i32 %27, %28
  %30 = ashr i32 %29, 3
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %26, %23
  %32 = load i32*, i32** @acpi_gbl_resource_types, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @AE_AML_INVALID_RESOURCE_TYPE, align 4
  store i32 %39, i32* %3, align 4
  br label %89

40:                                               ; preds = %31
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @acpi_ut_get_resource_length(i8* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32*, i32** @acpi_gbl_resource_aml_sizes, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %9, align 4
  %48 = load i32*, i32** @acpi_gbl_resource_types, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %79 [
    i32 130, label %53
    i32 128, label %60
    i32 129, label %67
  ]

53:                                               ; preds = %40
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @AE_AML_BAD_RESOURCE_LENGTH, align 4
  store i32 %58, i32* %3, align 4
  br label %89

59:                                               ; preds = %53
  br label %81

60:                                               ; preds = %40
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @AE_AML_BAD_RESOURCE_LENGTH, align 4
  store i32 %65, i32* %3, align 4
  br label %89

66:                                               ; preds = %60
  br label %81

67:                                               ; preds = %40
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = sub nsw i32 %73, 1
  %75 = icmp slt i32 %72, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %71, %67
  %77 = load i32, i32* @AE_AML_BAD_RESOURCE_LENGTH, align 4
  store i32 %77, i32* %3, align 4
  br label %89

78:                                               ; preds = %71
  br label %81

79:                                               ; preds = %40
  %80 = load i32, i32* @AE_AML_INVALID_RESOURCE_TYPE, align 4
  store i32 %80, i32* %3, align 4
  br label %89

81:                                               ; preds = %78, %66, %59
  %82 = load i32*, i32** %5, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* %7, align 4
  %86 = load i32*, i32** %5, align 8
  store i32 %85, i32* %86, align 4
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i32, i32* @AE_OK, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %87, %79, %76, %64, %57, %38, %21
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local i32 @ACPI_GET8(i8*) #1

declare dso_local i32 @acpi_ut_get_resource_length(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

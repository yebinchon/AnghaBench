; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_panasonic-laptop.c_acpi_pcc_retrieve_biosdata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_panasonic-laptop.c_acpi_pcc_retrieve_biosdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcc_acpi = type { i32, i32 }
%struct.acpi_buffer = type { %union.acpi_object*, i32*, i32 }
%union.acpi_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %union.acpi_object* }
%struct.TYPE_3__ = type { i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@METHOD_HKEY_SINF = common dso_local global i32 0, align 4
@ACPI_DB_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"evaluation error HKEY.SINF\0A\00", align 1
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"Invalid HKEY.SINF\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"SQTY reports bad SINF length\0A\00", align 1
@AE_ERROR = common dso_local global i64 0, align 8
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"Invalid HKEY.SINF data\0A\00", align 1
@AE_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcc_acpi*, i32*)* @acpi_pcc_retrieve_biosdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_pcc_retrieve_biosdata(%struct.pcc_acpi* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcc_acpi*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.acpi_buffer, align 8
  %8 = alloca %union.acpi_object*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %union.acpi_object*, align 8
  store %struct.pcc_acpi* %0, %struct.pcc_acpi** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 0
  %12 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to %union.acpi_object*
  store %union.acpi_object* %14, %union.acpi_object** %11, align 8
  %15 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 1
  store i32* null, i32** %15, align 8
  %16 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 2
  store i32 0, i32* %16, align 8
  store %union.acpi_object* null, %union.acpi_object** %8, align 8
  %17 = load %struct.pcc_acpi*, %struct.pcc_acpi** %4, align 8
  %18 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @METHOD_HKEY_SINF, align 4
  %21 = call i64 @acpi_evaluate_object(i32 %19, i32 %20, i32* null, %struct.acpi_buffer* %7)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @ACPI_FAILURE(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @ACPI_DB_ERROR, align 4
  %27 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([28 x i8]* @.str to i32))
  store i32 0, i32* %3, align 4
  br label %111

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 0
  %30 = load %union.acpi_object*, %union.acpi_object** %29, align 8
  store %union.acpi_object* %30, %union.acpi_object** %8, align 8
  %31 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %32 = icmp ne %union.acpi_object* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %35 = bitcast %union.acpi_object* %34 to i64*
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33, %28
  %40 = load i32, i32* @ACPI_DB_ERROR, align 4
  %41 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([19 x i8]* @.str.1 to i32))
  br label %103

42:                                               ; preds = %33
  %43 = load %struct.pcc_acpi*, %struct.pcc_acpi** %4, align 8
  %44 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %47 = bitcast %union.acpi_object* %46 to %struct.TYPE_4__*
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %45, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load i32, i32* @ACPI_DB_ERROR, align 4
  %53 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([30 x i8]* @.str.2 to i32))
  %54 = load i64, i64* @AE_ERROR, align 8
  store i64 %54, i64* %6, align 8
  br label %103

55:                                               ; preds = %42
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %92, %55
  %57 = load i32, i32* %9, align 4
  %58 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %59 = bitcast %union.acpi_object* %58 to %struct.TYPE_4__*
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %57, %61
  br i1 %62, label %63, label %95

63:                                               ; preds = %56
  %64 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %65 = bitcast %union.acpi_object* %64 to %struct.TYPE_4__*
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load %union.acpi_object*, %union.acpi_object** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %67, i64 %69
  store %union.acpi_object* %70, %union.acpi_object** %10, align 8
  %71 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %72 = bitcast %union.acpi_object* %71 to i64*
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i64 @likely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %63
  %80 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %81 = bitcast %union.acpi_object* %80 to %struct.TYPE_3__*
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %83, i32* %87, align 4
  br label %91

88:                                               ; preds = %63
  %89 = load i32, i32* @ACPI_DB_ERROR, align 4
  %90 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([24 x i8]* @.str.3 to i32))
  br label %91

91:                                               ; preds = %88, %79
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %56

95:                                               ; preds = %56
  %96 = load i32*, i32** %5, align 8
  %97 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %98 = bitcast %union.acpi_object* %97 to %struct.TYPE_4__*
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %96, i64 %101
  store i32 -1, i32* %102, align 4
  br label %103

103:                                              ; preds = %95, %51, %39
  %104 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 0
  %105 = load %union.acpi_object*, %union.acpi_object** %104, align 8
  %106 = call i32 @kfree(%union.acpi_object* %105)
  %107 = load i64, i64* %6, align 8
  %108 = load i64, i64* @AE_OK, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %103, %25
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i64 @acpi_evaluate_object(i32, i32, i32*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

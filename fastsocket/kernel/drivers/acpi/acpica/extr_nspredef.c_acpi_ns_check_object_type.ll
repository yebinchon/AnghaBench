; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nspredef.c_acpi_ns_check_object_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nspredef.c_acpi_ns_check_object_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_predefined_data = type { i32, i32 }
%union.acpi_operand_object = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@ACPI_DESC_TYPE_NAMED = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Invalid return type - Found a Namespace node [%4.4s] type %s\00", align 1
@AE_AML_OPERAND_TYPE = common dso_local global i32 0, align 4
@ACPI_RTYPE_INTEGER = common dso_local global i64 0, align 8
@ACPI_RTYPE_BUFFER = common dso_local global i64 0, align 8
@ACPI_RTYPE_STRING = common dso_local global i64 0, align 8
@ACPI_RTYPE_PACKAGE = common dso_local global i64 0, align 8
@ACPI_RTYPE_REFERENCE = common dso_local global i64 0, align 8
@ACPI_NOT_PACKAGE_ELEMENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"Return type mismatch - found %s, expected %s\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"Return Package type mismatch at index %u - found %s, expected %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_predefined_data*, %union.acpi_operand_object**, i64, i64)* @acpi_ns_check_object_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ns_check_object_type(%struct.acpi_predefined_data* %0, %union.acpi_operand_object** %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_predefined_data*, align 8
  %7 = alloca %union.acpi_operand_object**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %union.acpi_operand_object*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca [48 x i8], align 16
  store %struct.acpi_predefined_data* %0, %struct.acpi_predefined_data** %6, align 8
  store %union.acpi_operand_object** %1, %union.acpi_operand_object*** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %7, align 8
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %14, align 8
  store %union.acpi_operand_object* %15, %union.acpi_operand_object** %10, align 8
  %16 = load i32, i32* @AE_OK, align 4
  store i32 %16, i32* %11, align 4
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %18 = icmp ne %union.acpi_operand_object* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  br label %90

20:                                               ; preds = %4
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %22 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object* %21)
  %23 = load i64, i64* @ACPI_DESC_TYPE_NAMED, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %20
  %26 = load i32, i32* @AE_INFO, align 4
  %27 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %6, align 8
  %28 = getelementptr inbounds %struct.acpi_predefined_data, %struct.acpi_predefined_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %6, align 8
  %31 = getelementptr inbounds %struct.acpi_predefined_data, %struct.acpi_predefined_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %34 = bitcast %union.acpi_operand_object* %33 to %struct.TYPE_5__*
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %39 = bitcast %union.acpi_operand_object* %38 to %struct.TYPE_5__*
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @acpi_ut_get_type_name(i32 %41)
  %43 = call i32 @ACPI_WARN_PREDEFINED(i32 %42)
  %44 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  store i32 %44, i32* %5, align 4
  br label %126

45:                                               ; preds = %20
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %47 = bitcast %union.acpi_operand_object* %46 to %struct.TYPE_6__*
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %60 [
    i32 131, label %50
    i32 132, label %52
    i32 128, label %54
    i32 129, label %56
    i32 130, label %58
  ]

50:                                               ; preds = %45
  %51 = load i64, i64* @ACPI_RTYPE_INTEGER, align 8
  store i64 %51, i64* %12, align 8
  br label %61

52:                                               ; preds = %45
  %53 = load i64, i64* @ACPI_RTYPE_BUFFER, align 8
  store i64 %53, i64* %12, align 8
  br label %61

54:                                               ; preds = %45
  %55 = load i64, i64* @ACPI_RTYPE_STRING, align 8
  store i64 %55, i64* %12, align 8
  br label %61

56:                                               ; preds = %45
  %57 = load i64, i64* @ACPI_RTYPE_PACKAGE, align 8
  store i64 %57, i64* %12, align 8
  br label %61

58:                                               ; preds = %45
  %59 = load i64, i64* @ACPI_RTYPE_REFERENCE, align 8
  store i64 %59, i64* %12, align 8
  br label %61

60:                                               ; preds = %45
  br label %90

61:                                               ; preds = %58, %56, %54, %52, %50
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* %8, align 8
  %64 = and i64 %62, %63
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %61
  %67 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %6, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %7, align 8
  %71 = call i32 @acpi_ns_repair_object(%struct.acpi_predefined_data* %67, i64 %68, i64 %69, %union.acpi_operand_object** %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i64 @ACPI_SUCCESS(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %66
  %76 = load i32, i32* @AE_OK, align 4
  store i32 %76, i32* %5, align 4
  br label %126

77:                                               ; preds = %66
  br label %90

78:                                               ; preds = %61
  %79 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %80 = bitcast %union.acpi_operand_object* %79 to %struct.TYPE_6__*
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 130
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %6, align 8
  %86 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %87 = call i32 @acpi_ns_check_reference(%struct.acpi_predefined_data* %85, %union.acpi_operand_object* %86)
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %84, %78
  %89 = load i32, i32* %11, align 4
  store i32 %89, i32* %5, align 4
  br label %126

90:                                               ; preds = %77, %60, %19
  %91 = getelementptr inbounds [48 x i8], [48 x i8]* %13, i64 0, i64 0
  %92 = load i64, i64* %8, align 8
  %93 = call i32 @acpi_ns_get_expected_types(i8* %91, i64 %92)
  %94 = load i64, i64* %9, align 8
  %95 = load i64, i64* @ACPI_NOT_PACKAGE_ELEMENT, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %90
  %98 = load i32, i32* @AE_INFO, align 4
  %99 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %6, align 8
  %100 = getelementptr inbounds %struct.acpi_predefined_data, %struct.acpi_predefined_data* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %6, align 8
  %103 = getelementptr inbounds %struct.acpi_predefined_data, %struct.acpi_predefined_data* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %106 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %105)
  %107 = getelementptr inbounds [48 x i8], [48 x i8]* %13, i64 0, i64 0
  %108 = ptrtoint i8* %107 to i32
  %109 = call i32 @ACPI_WARN_PREDEFINED(i32 %108)
  br label %124

110:                                              ; preds = %90
  %111 = load i32, i32* @AE_INFO, align 4
  %112 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %6, align 8
  %113 = getelementptr inbounds %struct.acpi_predefined_data, %struct.acpi_predefined_data* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %6, align 8
  %116 = getelementptr inbounds %struct.acpi_predefined_data, %struct.acpi_predefined_data* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i64, i64* %9, align 8
  %119 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %120 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %119)
  %121 = getelementptr inbounds [48 x i8], [48 x i8]* %13, i64 0, i64 0
  %122 = ptrtoint i8* %121 to i32
  %123 = call i32 @ACPI_WARN_PREDEFINED(i32 %122)
  br label %124

124:                                              ; preds = %110, %97
  %125 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %124, %88, %75, %25
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_WARN_PREDEFINED(i32) #1

declare dso_local i32 @acpi_ut_get_type_name(i32) #1

declare dso_local i32 @acpi_ns_repair_object(%struct.acpi_predefined_data*, i64, i64, %union.acpi_operand_object**) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_ns_check_reference(%struct.acpi_predefined_data*, %union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ns_get_expected_types(i8*, i64) #1

declare dso_local i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsrepair.c_acpi_ns_repair_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsrepair.c_acpi_ns_repair_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_predefined_data = type { i32, i32, i32 }
%union.acpi_operand_object = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@ACPI_RTYPE_STRING = common dso_local global i32 0, align 4
@AE_AML_OPERAND_TYPE = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_NOT_PACKAGE_ELEMENT = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Converted Buffer to expected String at index %u\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Converted Buffer to expected String\00", align 1
@ACPI_OBJECT_REPAIRED = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ns_repair_object(%struct.acpi_predefined_data* %0, i32 %1, i32 %2, %union.acpi_operand_object** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_predefined_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.acpi_operand_object**, align 8
  %10 = alloca %union.acpi_operand_object*, align 8
  %11 = alloca %union.acpi_operand_object*, align 8
  %12 = alloca i64, align 8
  store %struct.acpi_predefined_data* %0, %struct.acpi_predefined_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %union.acpi_operand_object** %3, %union.acpi_operand_object*** %9, align 8
  %13 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %9, align 8
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  store %union.acpi_operand_object* %14, %union.acpi_operand_object** %10, align 8
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %16 = bitcast %union.acpi_operand_object* %15 to %struct.TYPE_6__*
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %118 [
    i32 128, label %19
  ]

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @ACPI_RTYPE_STRING, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  store i32 %25, i32* %5, align 4
  br label %121

26:                                               ; preds = %19
  store i64 0, i64* %12, align 8
  br label %27

27:                                               ; preds = %45, %26
  %28 = load i64, i64* %12, align 8
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %30 = bitcast %union.acpi_operand_object* %29 to %struct.TYPE_5__*
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %28, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %27
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %36 = bitcast %union.acpi_operand_object* %35 to %struct.TYPE_5__*
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %12, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %34, %27
  %44 = phi i1 [ false, %27 ], [ %42, %34 ]
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = load i64, i64* %12, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %12, align 8
  br label %27

48:                                               ; preds = %43
  %49 = load i64, i64* %12, align 8
  %50 = call %union.acpi_operand_object* @acpi_ut_create_string_object(i64 %49)
  store %union.acpi_operand_object* %50, %union.acpi_operand_object** %11, align 8
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %52 = icmp ne %union.acpi_operand_object* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %54, i32* %5, align 4
  br label %121

55:                                               ; preds = %48
  %56 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %57 = bitcast %union.acpi_operand_object* %56 to %struct.TYPE_4__*
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %61 = bitcast %union.acpi_operand_object* %60 to %struct.TYPE_5__*
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %12, align 8
  %65 = call i32 @ACPI_MEMCPY(i32 %59, i32* %63, i64 %64)
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @ACPI_NOT_PACKAGE_ELEMENT, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %98

69:                                               ; preds = %55
  %70 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %71 = bitcast %union.acpi_operand_object* %70 to %struct.TYPE_6__*
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %75 = bitcast %union.acpi_operand_object* %74 to %struct.TYPE_6__*
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  %77 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %78 = bitcast %union.acpi_operand_object* %77 to %struct.TYPE_6__*
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp sgt i32 %80, 1
  br i1 %81, label %82, label %88

82:                                               ; preds = %69
  %83 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %84 = bitcast %union.acpi_operand_object* %83 to %struct.TYPE_6__*
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %82, %69
  %89 = load i32, i32* @AE_INFO, align 4
  %90 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %6, align 8
  %91 = getelementptr inbounds %struct.acpi_predefined_data, %struct.acpi_predefined_data* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %6, align 8
  %94 = getelementptr inbounds %struct.acpi_predefined_data, %struct.acpi_predefined_data* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @ACPI_WARN_PREDEFINED(i32 %96)
  br label %107

98:                                               ; preds = %55
  %99 = load i32, i32* @AE_INFO, align 4
  %100 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %6, align 8
  %101 = getelementptr inbounds %struct.acpi_predefined_data, %struct.acpi_predefined_data* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %6, align 8
  %104 = getelementptr inbounds %struct.acpi_predefined_data, %struct.acpi_predefined_data* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ACPI_WARN_PREDEFINED(i32 ptrtoint ([36 x i8]* @.str.1 to i32))
  br label %107

107:                                              ; preds = %98, %88
  %108 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %109 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %108)
  %110 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %111 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %9, align 8
  store %union.acpi_operand_object* %110, %union.acpi_operand_object** %111, align 8
  %112 = load i32, i32* @ACPI_OBJECT_REPAIRED, align 4
  %113 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %6, align 8
  %114 = getelementptr inbounds %struct.acpi_predefined_data, %struct.acpi_predefined_data* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 4
  %117 = load i32, i32* @AE_OK, align 4
  store i32 %117, i32* %5, align 4
  br label %121

118:                                              ; preds = %4
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %119, %107, %53, %24
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local %union.acpi_operand_object* @acpi_ut_create_string_object(i64) #1

declare dso_local i32 @ACPI_MEMCPY(i32, i32*, i64) #1

declare dso_local i32 @ACPI_WARN_PREDEFINED(i32) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

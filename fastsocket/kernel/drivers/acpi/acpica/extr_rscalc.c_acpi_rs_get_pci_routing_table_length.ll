; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_rscalc.c_acpi_rs_get_pci_routing_table_length.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_rscalc.c_acpi_rs_get_pci_routing_table_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64, %union.acpi_operand_object** }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@rs_get_pci_routing_table_length = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@AE_AML_OPERAND_TYPE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@ACPI_TYPE_STRING = common dso_local global i64 0, align 8
@ACPI_TYPE_LOCAL_REFERENCE = common dso_local global i64 0, align 8
@ACPI_REFCLASS_NAME = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_rs_get_pci_routing_table_length(%union.acpi_operand_object* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.acpi_operand_object*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %union.acpi_operand_object**, align 8
  %9 = alloca i64, align 8
  %10 = alloca %union.acpi_operand_object*, align 8
  %11 = alloca %union.acpi_operand_object**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 0, i64* %7, align 8
  %14 = load i32, i32* @rs_get_pci_routing_table_length, align 4
  %15 = call i32 @ACPI_FUNCTION_TRACE(i32 %14)
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %17 = bitcast %union.acpi_operand_object* %16 to %struct.TYPE_5__*
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %6, align 8
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %21 = bitcast %union.acpi_operand_object* %20 to %struct.TYPE_5__*
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %22, align 8
  store %union.acpi_operand_object** %23, %union.acpi_operand_object*** %8, align 8
  store i64 0, i64* %9, align 8
  br label %24

24:                                               ; preds = %135, %2
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %138

28:                                               ; preds = %24
  %29 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %29, align 8
  store %union.acpi_operand_object* %30, %union.acpi_operand_object** %10, align 8
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %32 = icmp ne %union.acpi_operand_object* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %35 = bitcast %union.acpi_operand_object* %34 to %struct.TYPE_6__*
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33, %28
  %41 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %42 = call i32 @return_ACPI_STATUS(i32 %41)
  br label %43

43:                                               ; preds = %40, %33
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %45 = bitcast %union.acpi_operand_object* %44 to %struct.TYPE_5__*
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %46, align 8
  store %union.acpi_operand_object** %47, %union.acpi_operand_object*** %11, align 8
  %48 = load i64, i64* @FALSE, align 8
  store i64 %48, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %49

49:                                               ; preds = %92, %43
  %50 = load i64, i64* %13, align 8
  %51 = icmp slt i64 %50, 4
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i64, i64* %12, align 8
  %54 = icmp ne i64 %53, 0
  %55 = xor i1 %54, true
  br label %56

56:                                               ; preds = %52, %49
  %57 = phi i1 [ false, %49 ], [ %55, %52 ]
  br i1 %57, label %58, label %95

58:                                               ; preds = %56
  %59 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %11, align 8
  %60 = load %union.acpi_operand_object*, %union.acpi_operand_object** %59, align 8
  %61 = icmp ne %union.acpi_operand_object* %60, null
  br i1 %61, label %62, label %88

62:                                               ; preds = %58
  %63 = load i64, i64* @ACPI_TYPE_STRING, align 8
  %64 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %11, align 8
  %65 = load %union.acpi_operand_object*, %union.acpi_operand_object** %64, align 8
  %66 = bitcast %union.acpi_operand_object* %65 to %struct.TYPE_6__*
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %63, %68
  br i1 %69, label %86, label %70

70:                                               ; preds = %62
  %71 = load i64, i64* @ACPI_TYPE_LOCAL_REFERENCE, align 8
  %72 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %11, align 8
  %73 = load %union.acpi_operand_object*, %union.acpi_operand_object** %72, align 8
  %74 = bitcast %union.acpi_operand_object* %73 to %struct.TYPE_6__*
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %71, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %70
  %79 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %11, align 8
  %80 = load %union.acpi_operand_object*, %union.acpi_operand_object** %79, align 8
  %81 = bitcast %union.acpi_operand_object* %80 to %struct.TYPE_8__*
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @ACPI_REFCLASS_NAME, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %78, %62
  %87 = load i64, i64* @TRUE, align 8
  store i64 %87, i64* %12, align 8
  br label %91

88:                                               ; preds = %78, %70, %58
  %89 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %11, align 8
  %90 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %89, i32 1
  store %union.acpi_operand_object** %90, %union.acpi_operand_object*** %11, align 8
  br label %91

91:                                               ; preds = %88, %86
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %13, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %13, align 8
  br label %49

95:                                               ; preds = %56
  %96 = load i64, i64* %7, align 8
  %97 = add i64 %96, 0
  store i64 %97, i64* %7, align 8
  %98 = load i64, i64* %12, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %127

100:                                              ; preds = %95
  %101 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %11, align 8
  %102 = load %union.acpi_operand_object*, %union.acpi_operand_object** %101, align 8
  %103 = bitcast %union.acpi_operand_object* %102 to %struct.TYPE_6__*
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @ACPI_TYPE_STRING, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %100
  %109 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %11, align 8
  %110 = load %union.acpi_operand_object*, %union.acpi_operand_object** %109, align 8
  %111 = bitcast %union.acpi_operand_object* %110 to %struct.TYPE_7__*
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, 1
  %115 = load i64, i64* %7, align 8
  %116 = add nsw i64 %115, %114
  store i64 %116, i64* %7, align 8
  br label %126

117:                                              ; preds = %100
  %118 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %11, align 8
  %119 = load %union.acpi_operand_object*, %union.acpi_operand_object** %118, align 8
  %120 = bitcast %union.acpi_operand_object* %119 to %struct.TYPE_8__*
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @acpi_ns_get_pathname_length(i32 %122)
  %124 = load i64, i64* %7, align 8
  %125 = add nsw i64 %124, %123
  store i64 %125, i64* %7, align 8
  br label %126

126:                                              ; preds = %117, %108
  br label %130

127:                                              ; preds = %95
  %128 = load i64, i64* %7, align 8
  %129 = add i64 %128, 8
  store i64 %129, i64* %7, align 8
  br label %130

130:                                              ; preds = %127, %126
  %131 = load i64, i64* %7, align 8
  %132 = call i64 @ACPI_ROUND_UP_TO_64BIT(i64 %131)
  store i64 %132, i64* %7, align 8
  %133 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %134 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %133, i32 1
  store %union.acpi_operand_object** %134, %union.acpi_operand_object*** %8, align 8
  br label %135

135:                                              ; preds = %130
  %136 = load i64, i64* %9, align 8
  %137 = add nsw i64 %136, 1
  store i64 %137, i64* %9, align 8
  br label %24

138:                                              ; preds = %24
  %139 = load i64, i64* %7, align 8
  %140 = add i64 %139, 4
  %141 = load i64*, i64** %5, align 8
  store i64 %140, i64* %141, align 8
  %142 = load i32, i32* @AE_OK, align 4
  %143 = call i32 @return_ACPI_STATUS(i32 %142)
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i64 @acpi_ns_get_pathname_length(i32) #1

declare dso_local i64 @ACPI_ROUND_UP_TO_64BIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

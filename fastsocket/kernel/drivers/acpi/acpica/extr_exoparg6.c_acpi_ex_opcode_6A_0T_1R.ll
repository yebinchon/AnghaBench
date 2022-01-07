; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exoparg6.c_acpi_ex_opcode_6A_0T_1R.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exoparg6.c_acpi_ex_opcode_6A_0T_1R.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { i32, %union.acpi_operand_object*, %union.acpi_operand_object** }
%union.acpi_operand_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, %union.acpi_operand_object** }
%struct.TYPE_4__ = type { i64 }

@AE_OK = common dso_local global i32 0, align 4
@ex_opcode_6A_0T_1R = common dso_local global i32 0, align 4
@MAX_MATCH_OPERATOR = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Match operator out of range\00", align 1
@AE_AML_OPERAND_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Index (%X%8.8X) beyond package end (%X)\00", align 1
@AE_AML_PACKAGE_LIMIT = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_INTEGER_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Unknown AML opcode %X\00", align 1
@AE_AML_BAD_OPCODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_opcode_6A_0T_1R(%struct.acpi_walk_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_walk_state*, align 8
  %4 = alloca %union.acpi_operand_object**, align 8
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %union.acpi_operand_object*, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %3, align 8
  %9 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %10 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %9, i32 0, i32 2
  %11 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %10, align 8
  %12 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %11, i64 0
  store %union.acpi_operand_object** %12, %union.acpi_operand_object*** %4, align 8
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %5, align 8
  %13 = load i32, i32* @AE_OK, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @ex_opcode_6A_0T_1R, align 4
  %15 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %16 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @acpi_ps_get_opcode_name(i32 %17)
  %19 = call i32 @ACPI_FUNCTION_TRACE_STR(i32 %14, i32 %18)
  %20 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %21 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %149 [
    i32 128, label %23
    i32 129, label %146
  ]

23:                                               ; preds = %1
  %24 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %25 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %24, i64 1
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %25, align 8
  %27 = bitcast %union.acpi_operand_object* %26 to %struct.TYPE_4__*
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MAX_MATCH_OPERATOR, align 8
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %41, label %32

32:                                               ; preds = %23
  %33 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %34 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %33, i64 3
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %34, align 8
  %36 = bitcast %union.acpi_operand_object* %35 to %struct.TYPE_4__*
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MAX_MATCH_OPERATOR, align 8
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %32, %23
  %42 = load i32, i32* @AE_INFO, align 4
  %43 = call i32 @ACPI_ERROR(i32 ptrtoint ([28 x i8]* @.str to i32))
  %44 = load i32, i32* @AE_AML_OPERAND_VALUE, align 4
  store i32 %44, i32* %6, align 4
  br label %157

45:                                               ; preds = %32
  %46 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %47 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %46, i64 5
  %48 = load %union.acpi_operand_object*, %union.acpi_operand_object** %47, align 8
  %49 = bitcast %union.acpi_operand_object* %48 to %struct.TYPE_4__*
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %54 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %53, i64 0
  %55 = load %union.acpi_operand_object*, %union.acpi_operand_object** %54, align 8
  %56 = bitcast %union.acpi_operand_object* %55 to %struct.TYPE_3__*
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp uge i64 %52, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %45
  %61 = load i32, i32* @AE_INFO, align 4
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @ACPI_FORMAT_UINT64(i64 %62)
  %64 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %65 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %64, i64 0
  %66 = load %union.acpi_operand_object*, %union.acpi_operand_object** %65, align 8
  %67 = bitcast %union.acpi_operand_object* %66 to %struct.TYPE_3__*
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 @ACPI_ERROR(i32 %70)
  %72 = load i32, i32* @AE_AML_PACKAGE_LIMIT, align 4
  store i32 %72, i32* %6, align 4
  br label %157

73:                                               ; preds = %45
  %74 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %75 = call %union.acpi_operand_object* @acpi_ut_create_internal_object(i32 %74)
  store %union.acpi_operand_object* %75, %union.acpi_operand_object** %5, align 8
  %76 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %77 = icmp ne %union.acpi_operand_object* %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %79, i32* %6, align 4
  br label %157

80:                                               ; preds = %73
  %81 = load i64, i64* @ACPI_INTEGER_MAX, align 8
  %82 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %83 = bitcast %union.acpi_operand_object* %82 to %struct.TYPE_4__*
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  store i64 %81, i64* %84, align 8
  br label %85

85:                                               ; preds = %142, %80
  %86 = load i64, i64* %7, align 8
  %87 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %88 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %87, i64 0
  %89 = load %union.acpi_operand_object*, %union.acpi_operand_object** %88, align 8
  %90 = bitcast %union.acpi_operand_object* %89 to %struct.TYPE_3__*
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ult i64 %86, %92
  br i1 %93, label %94, label %145

94:                                               ; preds = %85
  %95 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %96 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %95, i64 0
  %97 = load %union.acpi_operand_object*, %union.acpi_operand_object** %96, align 8
  %98 = bitcast %union.acpi_operand_object* %97 to %struct.TYPE_3__*
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %99, align 8
  %101 = load i64, i64* %7, align 8
  %102 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %100, i64 %101
  %103 = load %union.acpi_operand_object*, %union.acpi_operand_object** %102, align 8
  store %union.acpi_operand_object* %103, %union.acpi_operand_object** %8, align 8
  %104 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %105 = icmp ne %union.acpi_operand_object* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %94
  br label %142

107:                                              ; preds = %94
  %108 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %109 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %108, i64 1
  %110 = load %union.acpi_operand_object*, %union.acpi_operand_object** %109, align 8
  %111 = bitcast %union.acpi_operand_object* %110 to %struct.TYPE_4__*
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  %115 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %116 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %117 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %116, i64 2
  %118 = load %union.acpi_operand_object*, %union.acpi_operand_object** %117, align 8
  %119 = call i32 @acpi_ex_do_match(i32 %114, %union.acpi_operand_object* %115, %union.acpi_operand_object* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %107
  br label %142

122:                                              ; preds = %107
  %123 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %124 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %123, i64 3
  %125 = load %union.acpi_operand_object*, %union.acpi_operand_object** %124, align 8
  %126 = bitcast %union.acpi_operand_object* %125 to %struct.TYPE_4__*
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = trunc i64 %128 to i32
  %130 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %131 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %132 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %131, i64 4
  %133 = load %union.acpi_operand_object*, %union.acpi_operand_object** %132, align 8
  %134 = call i32 @acpi_ex_do_match(i32 %129, %union.acpi_operand_object* %130, %union.acpi_operand_object* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %122
  br label %142

137:                                              ; preds = %122
  %138 = load i64, i64* %7, align 8
  %139 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %140 = bitcast %union.acpi_operand_object* %139 to %struct.TYPE_4__*
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  store i64 %138, i64* %141, align 8
  br label %145

142:                                              ; preds = %136, %121, %106
  %143 = load i64, i64* %7, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %7, align 8
  br label %85

145:                                              ; preds = %137, %85
  br label %156

146:                                              ; preds = %1
  %147 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %148 = call i32 @acpi_ex_load_table_op(%struct.acpi_walk_state* %147, %union.acpi_operand_object** %5)
  store i32 %148, i32* %6, align 4
  br label %156

149:                                              ; preds = %1
  %150 = load i32, i32* @AE_INFO, align 4
  %151 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %152 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @ACPI_ERROR(i32 %153)
  %155 = load i32, i32* @AE_AML_BAD_OPCODE, align 4
  store i32 %155, i32* %6, align 4
  br label %157

156:                                              ; preds = %146, %145
  br label %157

157:                                              ; preds = %156, %149, %78, %60, %41
  %158 = load i32, i32* %6, align 4
  %159 = call i64 @ACPI_FAILURE(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %157
  %162 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %163 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %162)
  br label %168

164:                                              ; preds = %157
  %165 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %166 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %167 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %166, i32 0, i32 1
  store %union.acpi_operand_object* %165, %union.acpi_operand_object** %167, align 8
  br label %168

168:                                              ; preds = %164, %161
  %169 = load i32, i32* %6, align 4
  %170 = call i32 @return_ACPI_STATUS(i32 %169)
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_STR(i32, i32) #1

declare dso_local i32 @acpi_ps_get_opcode_name(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @ACPI_FORMAT_UINT64(i64) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object(i32) #1

declare dso_local i32 @acpi_ex_do_match(i32, %union.acpi_operand_object*, %union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ex_load_table_op(%struct.acpi_walk_state*, %union.acpi_operand_object**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

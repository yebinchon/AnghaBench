; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exresolv.c_acpi_ex_resolve_object_to_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exresolv.c_acpi_ex_resolve_object_to_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32, %union.acpi_operand_object**, i32, i32 }
%struct.TYPE_4__ = type { %union.acpi_operand_object*, i32 }
%struct.acpi_walk_state = type { i32 }
%struct.TYPE_6__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@ex_resolve_object_to_value = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"[Arg/Local %X] ValueObj is %p\0A\00", align 1
@AML_INT_METHODCALL_OP = common dso_local global i32 0, align 4
@AML_COPY_OP = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"Attempt to dereference an Index to NULL package element Idx=%p\00", align 1
@AE_AML_UNINITIALIZED_ELEMENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Unknown TargetType %X in Index/Reference object %p\00", align 1
@AE_AML_INTERNAL = common dso_local global i32 0, align 4
@ACPI_TYPE_DEVICE = common dso_local global i32 0, align 4
@ACPI_TYPE_THERMAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Unknown Reference type %X in %p\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"FieldRead SourceDesc=%p Type=%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.acpi_operand_object**, %struct.acpi_walk_state*)* @acpi_ex_resolve_object_to_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ex_resolve_object_to_value(%union.acpi_operand_object** %0, %struct.acpi_walk_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.acpi_operand_object**, align 8
  %5 = alloca %struct.acpi_walk_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.acpi_operand_object*, align 8
  %8 = alloca %union.acpi_operand_object*, align 8
  %9 = alloca i32, align 4
  store %union.acpi_operand_object** %0, %union.acpi_operand_object*** %4, align 8
  store %struct.acpi_walk_state* %1, %struct.acpi_walk_state** %5, align 8
  %10 = load i32, i32* @AE_OK, align 4
  store i32 %10, i32* %6, align 4
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %8, align 8
  %11 = load i32, i32* @ex_resolve_object_to_value, align 4
  %12 = call i32 @ACPI_FUNCTION_TRACE(i32 %11)
  %13 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  store %union.acpi_operand_object* %14, %union.acpi_operand_object** %7, align 8
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %16 = bitcast %union.acpi_operand_object* %15 to %struct.TYPE_6__*
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %177 [
    i32 130, label %19
    i32 134, label %153
    i32 128, label %156
    i32 133, label %159
    i32 129, label %159
    i32 132, label %159
    i32 131, label %159
  ]

19:                                               ; preds = %2
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %21 = bitcast %union.acpi_operand_object* %20 to %struct.TYPE_5__*
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  switch i32 %24, label %145 [
    i32 138, label %25
    i32 141, label %25
    i32 139, label %52
    i32 136, label %104
    i32 140, label %104
    i32 135, label %104
    i32 137, label %105
  ]

25:                                               ; preds = %19, %19
  %26 = load i32, i32* %9, align 4
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %28 = bitcast %union.acpi_operand_object* %27 to %struct.TYPE_5__*
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %32 = call i32 @acpi_ds_method_data_get_value(i32 %26, i32 %30, %struct.acpi_walk_state* %31, %union.acpi_operand_object** %8)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @ACPI_FAILURE(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @return_ACPI_STATUS(i32 %37)
  br label %39

39:                                               ; preds = %36, %25
  %40 = load i32, i32* @ACPI_DB_EXEC, align 4
  %41 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %42 = bitcast %union.acpi_operand_object* %41 to %struct.TYPE_5__*
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %46 = ptrtoint %union.acpi_operand_object* %45 to i32
  %47 = call i32 @ACPI_DEBUG_PRINT(i32 %46)
  %48 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %49 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %48)
  %50 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %51 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  store %union.acpi_operand_object* %50, %union.acpi_operand_object** %51, align 8
  br label %152

52:                                               ; preds = %19
  %53 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %54 = bitcast %union.acpi_operand_object* %53 to %struct.TYPE_5__*
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %93 [
    i32 133, label %57
    i32 128, label %58
  ]

57:                                               ; preds = %52
  br label %103

58:                                               ; preds = %52
  %59 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %60 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @AML_INT_METHODCALL_OP, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %66 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @AML_COPY_OP, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64, %58
  br label %103

71:                                               ; preds = %64
  %72 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %73 = bitcast %union.acpi_operand_object* %72 to %struct.TYPE_5__*
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  %75 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %74, align 8
  %76 = load %union.acpi_operand_object*, %union.acpi_operand_object** %75, align 8
  store %union.acpi_operand_object* %76, %union.acpi_operand_object** %8, align 8
  %77 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %78 = icmp ne %union.acpi_operand_object* %77, null
  br i1 %78, label %79, label %86

79:                                               ; preds = %71
  %80 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %81 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %80)
  %82 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %83 = call i32 @acpi_ut_add_reference(%union.acpi_operand_object* %82)
  %84 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %85 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  store %union.acpi_operand_object* %84, %union.acpi_operand_object** %85, align 8
  br label %92

86:                                               ; preds = %71
  %87 = load i32, i32* @AE_INFO, align 4
  %88 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %89 = ptrtoint %union.acpi_operand_object* %88 to i32
  %90 = call i32 @ACPI_ERROR(i32 %89)
  %91 = load i32, i32* @AE_AML_UNINITIALIZED_ELEMENT, align 4
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %86, %79
  br label %103

93:                                               ; preds = %52
  %94 = load i32, i32* @AE_INFO, align 4
  %95 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %96 = bitcast %union.acpi_operand_object* %95 to %struct.TYPE_5__*
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %100 = ptrtoint %union.acpi_operand_object* %99 to i32
  %101 = call i32 @ACPI_ERROR(i32 %100)
  %102 = load i32, i32* @AE_AML_INTERNAL, align 4
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %93, %92, %70, %57
  br label %152

104:                                              ; preds = %19, %19, %19
  br label %152

105:                                              ; preds = %19
  %106 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %107 = bitcast %union.acpi_operand_object* %106 to %struct.TYPE_5__*
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @ACPI_TYPE_DEVICE, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %123, label %114

114:                                              ; preds = %105
  %115 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %116 = bitcast %union.acpi_operand_object* %115 to %struct.TYPE_5__*
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @ACPI_TYPE_THERMAL, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %131

123:                                              ; preds = %114, %105
  %124 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %125 = bitcast %union.acpi_operand_object* %124 to %struct.TYPE_5__*
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = bitcast %struct.TYPE_4__* %127 to i8*
  %129 = bitcast i8* %128 to %union.acpi_operand_object*
  %130 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  store %union.acpi_operand_object* %129, %union.acpi_operand_object** %130, align 8
  br label %142

131:                                              ; preds = %114
  %132 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %133 = bitcast %union.acpi_operand_object* %132 to %struct.TYPE_5__*
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load %union.acpi_operand_object*, %union.acpi_operand_object** %136, align 8
  %138 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  store %union.acpi_operand_object* %137, %union.acpi_operand_object** %138, align 8
  %139 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %140 = load %union.acpi_operand_object*, %union.acpi_operand_object** %139, align 8
  %141 = call i32 @acpi_ut_add_reference(%union.acpi_operand_object* %140)
  br label %142

142:                                              ; preds = %131, %123
  %143 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %144 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %143)
  br label %152

145:                                              ; preds = %19
  %146 = load i32, i32* @AE_INFO, align 4
  %147 = load i32, i32* %9, align 4
  %148 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %149 = ptrtoint %union.acpi_operand_object* %148 to i32
  %150 = call i32 @ACPI_ERROR(i32 %149)
  %151 = load i32, i32* @AE_AML_INTERNAL, align 4
  store i32 %151, i32* %6, align 4
  br label %152

152:                                              ; preds = %145, %142, %104, %103, %39
  br label %178

153:                                              ; preds = %2
  %154 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %155 = call i32 @acpi_ds_get_buffer_arguments(%union.acpi_operand_object* %154)
  store i32 %155, i32* %6, align 4
  br label %178

156:                                              ; preds = %2
  %157 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %158 = call i32 @acpi_ds_get_package_arguments(%union.acpi_operand_object* %157)
  store i32 %158, i32* %6, align 4
  br label %178

159:                                              ; preds = %2, %2, %2, %2
  %160 = load i32, i32* @ACPI_DB_EXEC, align 4
  %161 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %162 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %163 = bitcast %union.acpi_operand_object* %162 to %struct.TYPE_6__*
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @ACPI_DEBUG_PRINT(i32 %165)
  %167 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %168 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %169 = call i32 @acpi_ex_read_data_from_field(%struct.acpi_walk_state* %167, %union.acpi_operand_object* %168, %union.acpi_operand_object** %8)
  store i32 %169, i32* %6, align 4
  %170 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %171 = load %union.acpi_operand_object*, %union.acpi_operand_object** %170, align 8
  %172 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %171)
  %173 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %174 = bitcast %union.acpi_operand_object* %173 to i8*
  %175 = bitcast i8* %174 to %union.acpi_operand_object*
  %176 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  store %union.acpi_operand_object* %175, %union.acpi_operand_object** %176, align 8
  br label %178

177:                                              ; preds = %2
  br label %178

178:                                              ; preds = %177, %159, %156, %153, %152
  %179 = load i32, i32* %6, align 4
  %180 = call i32 @return_ACPI_STATUS(i32 %179)
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_ds_method_data_get_value(i32, i32, %struct.acpi_walk_state*, %union.acpi_operand_object**) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ut_add_reference(%union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @acpi_ds_get_buffer_arguments(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ds_get_package_arguments(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ex_read_data_from_field(%struct.acpi_walk_state*, %union.acpi_operand_object*, %union.acpi_operand_object**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

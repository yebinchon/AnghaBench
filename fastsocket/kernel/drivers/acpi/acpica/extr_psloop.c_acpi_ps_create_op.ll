; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_psloop.c_acpi_ps_create_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_psloop.c_acpi_ps_create_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { i64, i64 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, %union.acpi_parse_object*, i32, %struct.TYPE_4__* }
%union.acpi_parse_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.acpi_opcode_info = type { i32, i32 }
%struct.TYPE_5__ = type { i64*, i64 }

@AE_OK = common dso_local global i64 0, align 8
@ps_create_op = common dso_local global i32 0, align 4
@AE_CTRL_PARSE_CONTINUE = common dso_local global i64 0, align 8
@AE_NO_MEMORY = common dso_local global i64 0, align 8
@AML_NAMED = common dso_local global i32 0, align 4
@AML_CREATE = common dso_local global i32 0, align 4
@AML_BANK_FIELD_OP = common dso_local global i64 0, align 8
@AML_HAS_TARGET = common dso_local global i32 0, align 4
@ACPI_PARSEOP_TARGET = common dso_local global i32 0, align 4
@AML_INCREMENT_OP = common dso_local global i64 0, align 8
@AE_CTRL_PENDING = common dso_local global i64 0, align 8
@AE_CTRL_PARSE_PENDING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.acpi_walk_state*, i64*, %union.acpi_parse_object**)* @acpi_ps_create_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @acpi_ps_create_op(%struct.acpi_walk_state* %0, i64* %1, %union.acpi_parse_object** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.acpi_walk_state*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %union.acpi_parse_object**, align 8
  %8 = alloca i64, align 8
  %9 = alloca %union.acpi_parse_object*, align 8
  %10 = alloca %union.acpi_parse_object*, align 8
  %11 = alloca %union.acpi_parse_object*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.acpi_opcode_info*, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %5, align 8
  store i64* %1, i64** %6, align 8
  store %union.acpi_parse_object** %2, %union.acpi_parse_object*** %7, align 8
  %14 = load i64, i64* @AE_OK, align 8
  store i64 %14, i64* %8, align 8
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %10, align 8
  %15 = load i32, i32* @ps_create_op, align 4
  %16 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %17 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %15, %struct.acpi_walk_state* %16)
  %18 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %19 = call i64 @acpi_ps_get_aml_opcode(%struct.acpi_walk_state* %18)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @AE_CTRL_PARSE_CONTINUE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i64, i64* @AE_CTRL_PARSE_CONTINUE, align 8
  %25 = call i32 @return_ACPI_STATUS(i64 %24)
  br label %26

26:                                               ; preds = %23, %3
  %27 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %28 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i8* @acpi_ps_get_opcode_info(i64 %29)
  %31 = bitcast i8* %30 to %struct.TYPE_4__*
  %32 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %33 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %32, i32 0, i32 4
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %33, align 8
  %34 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %35 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call %union.acpi_parse_object* @acpi_ps_alloc_op(i64 %36)
  store %union.acpi_parse_object* %37, %union.acpi_parse_object** %9, align 8
  %38 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %39 = icmp ne %union.acpi_parse_object* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %26
  %41 = load i64, i64* @AE_NO_MEMORY, align 8
  %42 = call i32 @return_ACPI_STATUS(i64 %41)
  br label %43

43:                                               ; preds = %40, %26
  %44 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %45 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %44, i32 0, i32 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @AML_NAMED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %43
  %53 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %54 = load i64*, i64** %6, align 8
  %55 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %56 = call i64 @acpi_ps_build_named_op(%struct.acpi_walk_state* %53, i64* %54, %union.acpi_parse_object* %55, %union.acpi_parse_object** %10)
  store i64 %56, i64* %8, align 8
  %57 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %58 = call i32 @acpi_ps_free_op(%union.acpi_parse_object* %57)
  %59 = load i64, i64* %8, align 8
  %60 = call i64 @ACPI_FAILURE(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @return_ACPI_STATUS(i64 %63)
  br label %65

65:                                               ; preds = %62, %52
  %66 = load %union.acpi_parse_object*, %union.acpi_parse_object** %10, align 8
  %67 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %7, align 8
  store %union.acpi_parse_object* %66, %union.acpi_parse_object** %67, align 8
  %68 = load i64, i64* @AE_OK, align 8
  %69 = call i32 @return_ACPI_STATUS(i64 %68)
  br label %70

70:                                               ; preds = %65, %43
  %71 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %72 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %71, i32 0, i32 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @AML_CREATE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %70
  %80 = load i64*, i64** %6, align 8
  %81 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %82 = bitcast %union.acpi_parse_object* %81 to %struct.TYPE_5__*
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  store i64* %80, i64** %83, align 8
  %84 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %85 = bitcast %union.acpi_parse_object* %84 to %struct.TYPE_5__*
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %79, %70
  %88 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %89 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @AML_BANK_FIELD_OP, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %87
  %94 = load i64*, i64** %6, align 8
  %95 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %96 = bitcast %union.acpi_parse_object* %95 to %struct.TYPE_5__*
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  store i64* %94, i64** %97, align 8
  %98 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %99 = bitcast %union.acpi_parse_object* %98 to %struct.TYPE_5__*
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  store i64 0, i64* %100, align 8
  br label %101

101:                                              ; preds = %93, %87
  %102 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %103 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %102, i32 0, i32 3
  %104 = call %union.acpi_parse_object* @acpi_ps_get_parent_scope(i32* %103)
  store %union.acpi_parse_object* %104, %union.acpi_parse_object** %11, align 8
  %105 = load %union.acpi_parse_object*, %union.acpi_parse_object** %11, align 8
  %106 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %107 = call i32 @acpi_ps_append_arg(%union.acpi_parse_object* %105, %union.acpi_parse_object* %106)
  %108 = load %union.acpi_parse_object*, %union.acpi_parse_object** %11, align 8
  %109 = icmp ne %union.acpi_parse_object* %108, null
  br i1 %109, label %110, label %158

110:                                              ; preds = %101
  %111 = load %union.acpi_parse_object*, %union.acpi_parse_object** %11, align 8
  %112 = bitcast %union.acpi_parse_object* %111 to %struct.TYPE_6__*
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i8* @acpi_ps_get_opcode_info(i64 %114)
  %116 = bitcast i8* %115 to %struct.acpi_opcode_info*
  store %struct.acpi_opcode_info* %116, %struct.acpi_opcode_info** %13, align 8
  %117 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %13, align 8
  %118 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @AML_HAS_TARGET, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %142

123:                                              ; preds = %110
  %124 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %13, align 8
  %125 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @acpi_ps_get_argument_count(i32 %126)
  store i64 %127, i64* %12, align 8
  %128 = load %union.acpi_parse_object*, %union.acpi_parse_object** %11, align 8
  %129 = bitcast %union.acpi_parse_object* %128 to %struct.TYPE_6__*
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %12, align 8
  %133 = icmp sgt i64 %131, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %123
  %135 = load i32, i32* @ACPI_PARSEOP_TARGET, align 4
  %136 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %137 = bitcast %union.acpi_parse_object* %136 to %struct.TYPE_6__*
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %139, %135
  store i32 %140, i32* %138, align 8
  br label %141

141:                                              ; preds = %134, %123
  br label %157

142:                                              ; preds = %110
  %143 = load %union.acpi_parse_object*, %union.acpi_parse_object** %11, align 8
  %144 = bitcast %union.acpi_parse_object* %143 to %struct.TYPE_6__*
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @AML_INCREMENT_OP, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %156

149:                                              ; preds = %142
  %150 = load i32, i32* @ACPI_PARSEOP_TARGET, align 4
  %151 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %152 = bitcast %union.acpi_parse_object* %151 to %struct.TYPE_6__*
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %150
  store i32 %155, i32* %153, align 8
  br label %156

156:                                              ; preds = %149, %142
  br label %157

157:                                              ; preds = %156, %141
  br label %158

158:                                              ; preds = %157, %101
  %159 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %160 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %159, i32 0, i32 1
  %161 = load i64 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, i64 (%struct.acpi_walk_state*, %union.acpi_parse_object**)** %160, align 8
  %162 = icmp ne i64 (%struct.acpi_walk_state*, %union.acpi_parse_object**)* %161, null
  br i1 %162, label %163, label %183

163:                                              ; preds = %158
  %164 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %165 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %7, align 8
  store %union.acpi_parse_object* %164, %union.acpi_parse_object** %165, align 8
  %166 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %167 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %166, i32 0, i32 2
  store %union.acpi_parse_object* %164, %union.acpi_parse_object** %167, align 8
  %168 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %169 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %168, i32 0, i32 1
  %170 = load i64 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, i64 (%struct.acpi_walk_state*, %union.acpi_parse_object**)** %169, align 8
  %171 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %172 = call i64 %170(%struct.acpi_walk_state* %171, %union.acpi_parse_object** %9)
  store i64 %172, i64* %8, align 8
  %173 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %174 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %175 = load i64, i64* %8, align 8
  %176 = call i64 @acpi_ps_next_parse_state(%struct.acpi_walk_state* %173, %union.acpi_parse_object* %174, i64 %175)
  store i64 %176, i64* %8, align 8
  %177 = load i64, i64* %8, align 8
  %178 = load i64, i64* @AE_CTRL_PENDING, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %163
  %181 = load i64, i64* @AE_CTRL_PARSE_PENDING, align 8
  store i64 %181, i64* %8, align 8
  br label %182

182:                                              ; preds = %180, %163
  br label %183

183:                                              ; preds = %182, %158
  %184 = load i64, i64* %8, align 8
  %185 = call i32 @return_ACPI_STATUS(i64 %184)
  %186 = load i64, i64* %4, align 8
  ret i64 %186
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.acpi_walk_state*) #1

declare dso_local i64 @acpi_ps_get_aml_opcode(%struct.acpi_walk_state*) #1

declare dso_local i32 @return_ACPI_STATUS(i64) #1

declare dso_local i8* @acpi_ps_get_opcode_info(i64) #1

declare dso_local %union.acpi_parse_object* @acpi_ps_alloc_op(i64) #1

declare dso_local i64 @acpi_ps_build_named_op(%struct.acpi_walk_state*, i64*, %union.acpi_parse_object*, %union.acpi_parse_object**) #1

declare dso_local i32 @acpi_ps_free_op(%union.acpi_parse_object*) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local %union.acpi_parse_object* @acpi_ps_get_parent_scope(i32*) #1

declare dso_local i32 @acpi_ps_append_arg(%union.acpi_parse_object*, %union.acpi_parse_object*) #1

declare dso_local i64 @acpi_ps_get_argument_count(i32) #1

declare dso_local i64 @acpi_ps_next_parse_state(%struct.acpi_walk_state*, %union.acpi_parse_object*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

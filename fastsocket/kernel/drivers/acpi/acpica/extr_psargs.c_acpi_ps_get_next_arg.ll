; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_psargs.c_acpi_ps_get_next_arg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_psargs.c_acpi_ps_get_next_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { i32, i32 }
%struct.acpi_parse_state = type { i32, i32 }
%union.acpi_parse_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__, %union.acpi_parse_object* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@ps_get_next_arg = common dso_local global i32 0, align 4
@AML_BYTE_OP = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@AML_INT_BYTELIST_OP = common dso_local global i32 0, align 4
@AML_INT_NAMEPATH_OP = common dso_local global i32 0, align 4
@AML_UNLOAD_OP = common dso_local global i32 0, align 4
@AML_INT_METHODCALL_OP = common dso_local global i32 0, align 4
@ACPI_VAR_ARGS = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Invalid ArgType: %X\00", align 1
@AE_AML_OPERAND_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ps_get_next_arg(%struct.acpi_walk_state* %0, %struct.acpi_parse_state* %1, i32 %2, %union.acpi_parse_object** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_walk_state*, align 8
  %7 = alloca %struct.acpi_parse_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.acpi_parse_object**, align 8
  %10 = alloca %union.acpi_parse_object*, align 8
  %11 = alloca %union.acpi_parse_object*, align 8
  %12 = alloca %union.acpi_parse_object*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %6, align 8
  store %struct.acpi_parse_state* %1, %struct.acpi_parse_state** %7, align 8
  store i32 %2, i32* %8, align 4
  store %union.acpi_parse_object** %3, %union.acpi_parse_object*** %9, align 8
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %10, align 8
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %11, align 8
  %15 = load i32, i32* @AE_OK, align 4
  store i32 %15, i32* %14, align 4
  %16 = load i32, i32* @ps_get_next_arg, align 4
  %17 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %7, align 8
  %18 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %16, %struct.acpi_parse_state* %17)
  %19 = load i32, i32* %8, align 4
  switch i32 %19, label %190 [
    i32 144, label %20
    i32 128, label %20
    i32 139, label %20
    i32 142, label %20
    i32 137, label %20
    i32 136, label %20
    i32 134, label %33
    i32 138, label %38
    i32 143, label %82
    i32 131, label %122
    i32 132, label %122
    i32 133, label %122
    i32 141, label %174
    i32 130, label %174
    i32 140, label %177
    i32 129, label %177
    i32 135, label %177
  ]

20:                                               ; preds = %4, %4, %4, %4, %4, %4
  %21 = load i32, i32* @AML_BYTE_OP, align 4
  %22 = call %union.acpi_parse_object* @acpi_ps_alloc_op(i32 %21)
  store %union.acpi_parse_object* %22, %union.acpi_parse_object** %10, align 8
  %23 = load %union.acpi_parse_object*, %union.acpi_parse_object** %10, align 8
  %24 = icmp ne %union.acpi_parse_object* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @AE_NO_MEMORY, align 4
  %27 = call i32 @return_ACPI_STATUS(i32 %26)
  br label %28

28:                                               ; preds = %25, %20
  %29 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %union.acpi_parse_object*, %union.acpi_parse_object** %10, align 8
  %32 = call i32 @acpi_ps_get_next_simple_arg(%struct.acpi_parse_state* %29, i32 %30, %union.acpi_parse_object* %31)
  br label %195

33:                                               ; preds = %4
  %34 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %7, align 8
  %35 = call i32 @acpi_ps_get_next_package_end(%struct.acpi_parse_state* %34)
  %36 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %7, align 8
  %37 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %195

38:                                               ; preds = %4
  %39 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %7, align 8
  %40 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %7, align 8
  %43 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %81

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %73, %46
  %48 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %7, align 8
  %49 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %7, align 8
  %52 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %47
  %56 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %7, align 8
  %57 = call %union.acpi_parse_object* @acpi_ps_get_next_field(%struct.acpi_parse_state* %56)
  store %union.acpi_parse_object* %57, %union.acpi_parse_object** %12, align 8
  %58 = load %union.acpi_parse_object*, %union.acpi_parse_object** %12, align 8
  %59 = icmp ne %union.acpi_parse_object* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @AE_NO_MEMORY, align 4
  %62 = call i32 @return_ACPI_STATUS(i32 %61)
  br label %63

63:                                               ; preds = %60, %55
  %64 = load %union.acpi_parse_object*, %union.acpi_parse_object** %11, align 8
  %65 = icmp ne %union.acpi_parse_object* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load %union.acpi_parse_object*, %union.acpi_parse_object** %12, align 8
  %68 = load %union.acpi_parse_object*, %union.acpi_parse_object** %11, align 8
  %69 = bitcast %union.acpi_parse_object* %68 to %struct.TYPE_6__*
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  store %union.acpi_parse_object* %67, %union.acpi_parse_object** %70, align 8
  br label %73

71:                                               ; preds = %63
  %72 = load %union.acpi_parse_object*, %union.acpi_parse_object** %12, align 8
  store %union.acpi_parse_object* %72, %union.acpi_parse_object** %10, align 8
  br label %73

73:                                               ; preds = %71, %66
  %74 = load %union.acpi_parse_object*, %union.acpi_parse_object** %12, align 8
  store %union.acpi_parse_object* %74, %union.acpi_parse_object** %11, align 8
  br label %47

75:                                               ; preds = %47
  %76 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %7, align 8
  %77 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %7, align 8
  %80 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %75, %38
  br label %195

82:                                               ; preds = %4
  %83 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %7, align 8
  %84 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %7, align 8
  %87 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %121

90:                                               ; preds = %82
  %91 = load i32, i32* @AML_INT_BYTELIST_OP, align 4
  %92 = call %union.acpi_parse_object* @acpi_ps_alloc_op(i32 %91)
  store %union.acpi_parse_object* %92, %union.acpi_parse_object** %10, align 8
  %93 = load %union.acpi_parse_object*, %union.acpi_parse_object** %10, align 8
  %94 = icmp ne %union.acpi_parse_object* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = load i32, i32* @AE_NO_MEMORY, align 4
  %97 = call i32 @return_ACPI_STATUS(i32 %96)
  br label %98

98:                                               ; preds = %95, %90
  %99 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %7, align 8
  %100 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %7, align 8
  %103 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ACPI_PTR_DIFF(i32 %101, i32 %104)
  %106 = load %union.acpi_parse_object*, %union.acpi_parse_object** %10, align 8
  %107 = bitcast %union.acpi_parse_object* %106 to %struct.TYPE_6__*
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  store i32 %105, i32* %109, align 4
  %110 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %7, align 8
  %111 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %union.acpi_parse_object*, %union.acpi_parse_object** %10, align 8
  %114 = bitcast %union.acpi_parse_object* %113 to %struct.TYPE_5__*
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  store i32 %112, i32* %115, align 8
  %116 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %7, align 8
  %117 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %7, align 8
  %120 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %98, %82
  br label %195

122:                                              ; preds = %4, %4, %4
  %123 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %7, align 8
  %124 = call i32 @acpi_ps_peek_opcode(%struct.acpi_parse_state* %123)
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %13, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %135, label %127

127:                                              ; preds = %122
  %128 = load i32, i32* %13, align 4
  %129 = call i32 @acpi_ps_is_leading_char(i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %127
  %132 = load i32, i32* %13, align 4
  %133 = call i32 @acpi_ps_is_prefix_char(i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %170

135:                                              ; preds = %131, %127, %122
  %136 = load i32, i32* @AML_INT_NAMEPATH_OP, align 4
  %137 = call %union.acpi_parse_object* @acpi_ps_alloc_op(i32 %136)
  store %union.acpi_parse_object* %137, %union.acpi_parse_object** %10, align 8
  %138 = load %union.acpi_parse_object*, %union.acpi_parse_object** %10, align 8
  %139 = icmp ne %union.acpi_parse_object* %138, null
  br i1 %139, label %143, label %140

140:                                              ; preds = %135
  %141 = load i32, i32* @AE_NO_MEMORY, align 4
  %142 = call i32 @return_ACPI_STATUS(i32 %141)
  br label %143

143:                                              ; preds = %140, %135
  %144 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %145 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @AML_UNLOAD_OP, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %164

149:                                              ; preds = %143
  %150 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %151 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %7, align 8
  %152 = load %union.acpi_parse_object*, %union.acpi_parse_object** %10, align 8
  %153 = call i32 @acpi_ps_get_next_namepath(%struct.acpi_walk_state* %150, %struct.acpi_parse_state* %151, %union.acpi_parse_object* %152, i32 1)
  store i32 %153, i32* %14, align 4
  %154 = load %union.acpi_parse_object*, %union.acpi_parse_object** %10, align 8
  %155 = bitcast %union.acpi_parse_object* %154 to %struct.TYPE_6__*
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @AML_INT_METHODCALL_OP, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %149
  %161 = load %union.acpi_parse_object*, %union.acpi_parse_object** %10, align 8
  %162 = call i32 @acpi_ps_free_op(%union.acpi_parse_object* %161)
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %10, align 8
  br label %163

163:                                              ; preds = %160, %149
  br label %169

164:                                              ; preds = %143
  %165 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %166 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %7, align 8
  %167 = load %union.acpi_parse_object*, %union.acpi_parse_object** %10, align 8
  %168 = call i32 @acpi_ps_get_next_namepath(%struct.acpi_walk_state* %165, %struct.acpi_parse_state* %166, %union.acpi_parse_object* %167, i32 0)
  store i32 %168, i32* %14, align 4
  br label %169

169:                                              ; preds = %164, %163
  br label %173

170:                                              ; preds = %131
  %171 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %172 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %171, i32 0, i32 0
  store i32 1, i32* %172, align 4
  br label %173

173:                                              ; preds = %170, %169
  br label %195

174:                                              ; preds = %4, %4
  %175 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %176 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %175, i32 0, i32 0
  store i32 1, i32* %176, align 4
  br label %195

177:                                              ; preds = %4, %4, %4
  %178 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %7, align 8
  %179 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %7, align 8
  %182 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = icmp slt i32 %180, %183
  br i1 %184, label %185, label %189

185:                                              ; preds = %177
  %186 = load i32, i32* @ACPI_VAR_ARGS, align 4
  %187 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %188 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %187, i32 0, i32 0
  store i32 %186, i32* %188, align 4
  br label %189

189:                                              ; preds = %185, %177
  br label %195

190:                                              ; preds = %4
  %191 = load i32, i32* @AE_INFO, align 4
  %192 = load i32, i32* %8, align 4
  %193 = call i32 @ACPI_ERROR(i32 %192)
  %194 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  store i32 %194, i32* %14, align 4
  br label %195

195:                                              ; preds = %190, %189, %174, %173, %121, %81, %33, %28
  %196 = load %union.acpi_parse_object*, %union.acpi_parse_object** %10, align 8
  %197 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %9, align 8
  store %union.acpi_parse_object* %196, %union.acpi_parse_object** %197, align 8
  %198 = load i32, i32* %14, align 4
  %199 = call i32 @return_ACPI_STATUS(i32 %198)
  %200 = load i32, i32* %5, align 4
  ret i32 %200
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.acpi_parse_state*) #1

declare dso_local %union.acpi_parse_object* @acpi_ps_alloc_op(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ps_get_next_simple_arg(%struct.acpi_parse_state*, i32, %union.acpi_parse_object*) #1

declare dso_local i32 @acpi_ps_get_next_package_end(%struct.acpi_parse_state*) #1

declare dso_local %union.acpi_parse_object* @acpi_ps_get_next_field(%struct.acpi_parse_state*) #1

declare dso_local i32 @ACPI_PTR_DIFF(i32, i32) #1

declare dso_local i32 @acpi_ps_peek_opcode(%struct.acpi_parse_state*) #1

declare dso_local i32 @acpi_ps_is_leading_char(i32) #1

declare dso_local i32 @acpi_ps_is_prefix_char(i32) #1

declare dso_local i32 @acpi_ps_get_next_namepath(%struct.acpi_walk_state*, %struct.acpi_parse_state*, %union.acpi_parse_object*, i32) #1

declare dso_local i32 @acpi_ps_free_op(%union.acpi_parse_object*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

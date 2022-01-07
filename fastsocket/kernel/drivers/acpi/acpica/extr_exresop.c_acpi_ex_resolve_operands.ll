; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exresop.c_acpi_ex_resolve_operands.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exresop.c_acpi_ex_resolve_operands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.acpi_walk_state = type { i32, i32 }
%struct.acpi_opcode_info = type { i64, i64, i32 }
%struct.acpi_namespace_node = type { i32 }
%struct.TYPE_3__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@ex_resolve_operands = common dso_local global i32 0, align 4
@AML_CLASS_UNKNOWN = common dso_local global i64 0, align 8
@AE_AML_BAD_OPCODE = common dso_local global i32 0, align 4
@ARGI_INVALID_OPCODE = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unknown AML opcode %X\00", align 1
@AE_AML_INTERNAL = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Opcode %X [%s] RequiredOperandTypes=%8.8X\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Null stack entry at %p\00", align 1
@ACPI_TYPE_LOCAL_ALIAS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Bad operand object type [%X]\00", align 1
@AE_AML_OPERAND_TYPE = common dso_local global i32 0, align 4
@AML_DEBUG_OP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"Operand is a Reference, Class [%s] %2.2X\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Unknown Reference Class %2.2X in %p\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Invalid descriptor %p [%s]\00", align 1
@AML_STORE_OP = common dso_local global i32 0, align 4
@ACPI_TYPE_MUTEX = common dso_local global i32 0, align 4
@ACPI_TYPE_EVENT = common dso_local global i32 0, align 4
@ACPI_TYPE_ANY = common dso_local global i32 0, align 4
@AE_TYPE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [46 x i8] c"Needed [Integer/String/Buffer], found [%s] %p\00", align 1
@ACPI_IMPLICIT_CONVERT_HEX = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [56 x i8] c"Needed [Buffer/String/Package/Reference], found [%s] %p\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"Needed [Buffer/String/Package], found [%s] %p\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"Needed [Region/Buffer], found [%s] %p\00", align 1
@acpi_gbl_enable_interpreter_slack = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [61 x i8] c"Needed Integer/Buffer/String/Package/Ref/Ddb], found [%s] %p\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"Internal - Unknown ARGI (required operand) type %X\00", align 1
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_resolve_operands(i32 %0, %union.acpi_operand_object** %1, %struct.acpi_walk_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %union.acpi_operand_object**, align 8
  %7 = alloca %struct.acpi_walk_state*, align 8
  %8 = alloca %union.acpi_operand_object*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.acpi_opcode_info*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %union.acpi_operand_object** %1, %union.acpi_operand_object*** %6, align 8
  store %struct.acpi_walk_state* %2, %struct.acpi_walk_state** %7, align 8
  %16 = load i32, i32* @AE_OK, align 4
  store i32 %16, i32* %9, align 4
  store i32 0, i32* %15, align 4
  %17 = load i32, i32* @ex_resolve_operands, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @ACPI_FUNCTION_TRACE_U32(i32 %17, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i32 %20)
  store %struct.acpi_opcode_info* %21, %struct.acpi_opcode_info** %12, align 8
  %22 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %12, align 8
  %23 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AML_CLASS_UNKNOWN, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @AE_AML_BAD_OPCODE, align 4
  %29 = call i32 @return_ACPI_STATUS(i32 %28)
  br label %30

30:                                               ; preds = %27, %3
  %31 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %12, align 8
  %32 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* @ARGI_INVALID_OPCODE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load i32, i32* @AE_INFO, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @ACPI_ERROR(i32 %39)
  %41 = load i32, i32* @AE_AML_INTERNAL, align 4
  %42 = call i32 @return_ACPI_STATUS(i32 %41)
  br label %43

43:                                               ; preds = %37, %30
  %44 = load i32, i32* @ACPI_DB_EXEC, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %12, align 8
  %47 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i64, i64* %11, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @ACPI_DEBUG_PRINT(i32 %50)
  br label %52

52:                                               ; preds = %477, %43
  %53 = load i64, i64* %11, align 8
  %54 = call i64 @GET_CURRENT_ARG_TYPE(i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %478

56:                                               ; preds = %52
  %57 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %58 = icmp ne %union.acpi_operand_object** %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %61 = load %union.acpi_operand_object*, %union.acpi_operand_object** %60, align 8
  %62 = icmp ne %union.acpi_operand_object* %61, null
  br i1 %62, label %70, label %63

63:                                               ; preds = %59, %56
  %64 = load i32, i32* @AE_INFO, align 4
  %65 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %66 = ptrtoint %union.acpi_operand_object** %65 to i32
  %67 = call i32 @ACPI_ERROR(i32 %66)
  %68 = load i32, i32* @AE_AML_INTERNAL, align 4
  %69 = call i32 @return_ACPI_STATUS(i32 %68)
  br label %70

70:                                               ; preds = %63, %59
  %71 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %72 = load %union.acpi_operand_object*, %union.acpi_operand_object** %71, align 8
  store %union.acpi_operand_object* %72, %union.acpi_operand_object** %8, align 8
  %73 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %74 = call i32 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object* %73)
  switch i32 %74, label %140 [
    i32 169, label %75
    i32 168, label %94
  ]

75:                                               ; preds = %70
  %76 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %77 = bitcast %union.acpi_operand_object* %76 to %struct.acpi_namespace_node*
  %78 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @ACPI_TYPE_LOCAL_ALIAS, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %75
  %84 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %85 = bitcast %union.acpi_operand_object* %84 to %struct.acpi_namespace_node*
  %86 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %85)
  store %union.acpi_operand_object* %86, %union.acpi_operand_object** %8, align 8
  %87 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %88 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  store %union.acpi_operand_object* %87, %union.acpi_operand_object** %88, align 8
  %89 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %90 = bitcast %union.acpi_operand_object* %89 to %struct.acpi_namespace_node*
  %91 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %83, %75
  br label %148

94:                                               ; preds = %70
  %95 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %96 = bitcast %union.acpi_operand_object* %95 to %struct.TYPE_4__*
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @acpi_ut_valid_object_type(i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %94
  %103 = load i32, i32* @AE_INFO, align 4
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @ACPI_ERROR(i32 %104)
  %106 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %107 = call i32 @return_ACPI_STATUS(i32 %106)
  br label %108

108:                                              ; preds = %102, %94
  %109 = load i32, i32* %10, align 4
  %110 = icmp eq i32 %109, 154
  br i1 %110, label %111, label %139

111:                                              ; preds = %108
  %112 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %113 = bitcast %union.acpi_operand_object* %112 to %struct.TYPE_3__*
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  switch i32 %115, label %127 [
    i32 166, label %116
    i32 167, label %118
    i32 164, label %118
    i32 165, label %118
    i32 162, label %118
    i32 161, label %118
    i32 163, label %118
  ]

116:                                              ; preds = %111
  %117 = load i32, i32* @AML_DEBUG_OP, align 4
  store i32 %117, i32* %15, align 4
  br label %118

118:                                              ; preds = %111, %111, %111, %111, %111, %111, %116
  %119 = load i32, i32* @ACPI_DB_EXEC, align 4
  %120 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %121 = call i32 @acpi_ut_get_reference_name(%union.acpi_operand_object* %120)
  %122 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %123 = bitcast %union.acpi_operand_object* %122 to %struct.TYPE_3__*
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @ACPI_DEBUG_PRINT(i32 %125)
  br label %138

127:                                              ; preds = %111
  %128 = load i32, i32* @AE_INFO, align 4
  %129 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %130 = bitcast %union.acpi_operand_object* %129 to %struct.TYPE_3__*
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %134 = ptrtoint %union.acpi_operand_object* %133 to i32
  %135 = call i32 @ACPI_ERROR(i32 %134)
  %136 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %137 = call i32 @return_ACPI_STATUS(i32 %136)
  br label %138

138:                                              ; preds = %127, %118
  br label %139

139:                                              ; preds = %138, %108
  br label %148

140:                                              ; preds = %70
  %141 = load i32, i32* @AE_INFO, align 4
  %142 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %143 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %144 = call i32 @acpi_ut_get_descriptor_name(%union.acpi_operand_object* %143)
  %145 = call i32 @ACPI_ERROR(i32 %144)
  %146 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %147 = call i32 @return_ACPI_STATUS(i32 %146)
  br label %148

148:                                              ; preds = %140, %139, %93
  %149 = load i64, i64* %11, align 8
  %150 = call i64 @GET_CURRENT_ARG_TYPE(i64 %149)
  store i64 %150, i64* %13, align 8
  %151 = load i64, i64* %11, align 8
  %152 = call i32 @INCREMENT_ARG_LIST(i64 %151)
  %153 = load i64, i64* %13, align 8
  switch i64 %153, label %202 [
    i64 132, label %154
    i64 133, label %166
    i64 137, label %166
    i64 135, label %166
    i64 141, label %166
    i64 128, label %166
    i64 139, label %166
    i64 130, label %166
    i64 143, label %182
  ]

154:                                              ; preds = %148
  %155 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %156 = call i32 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object* %155)
  %157 = icmp eq i32 %156, 168
  br i1 %157, label %158, label %165

158:                                              ; preds = %154
  %159 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %160 = bitcast %union.acpi_operand_object* %159 to %struct.TYPE_4__*
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %162, 150
  br i1 %163, label %164, label %165

164:                                              ; preds = %158
  br label %470

165:                                              ; preds = %158, %154
  br label %166

166:                                              ; preds = %148, %148, %148, %148, %148, %148, %148, %165
  %167 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %168 = call i32 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object* %167)
  %169 = icmp eq i32 %168, 169
  br i1 %169, label %170, label %171

170:                                              ; preds = %166
  br label %470

171:                                              ; preds = %166
  %172 = load i32, i32* %10, align 4
  %173 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %174 = call i32 @acpi_ex_check_object_type(i32 154, i32 %172, %union.acpi_operand_object* %173)
  store i32 %174, i32* %9, align 4
  %175 = load i32, i32* %9, align 4
  %176 = call i64 @ACPI_FAILURE(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %171
  %179 = load i32, i32* %9, align 4
  %180 = call i32 @return_ACPI_STATUS(i32 %179)
  br label %181

181:                                              ; preds = %178, %171
  br label %470

182:                                              ; preds = %148
  %183 = load i32, i32* %5, align 4
  %184 = load i32, i32* @AML_STORE_OP, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %201

186:                                              ; preds = %182
  %187 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %188 = load %union.acpi_operand_object*, %union.acpi_operand_object** %187, align 8
  %189 = bitcast %union.acpi_operand_object* %188 to %struct.TYPE_4__*
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = icmp eq i32 %191, 154
  br i1 %192, label %193, label %201

193:                                              ; preds = %186
  %194 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %195 = load %union.acpi_operand_object*, %union.acpi_operand_object** %194, align 8
  %196 = bitcast %union.acpi_operand_object* %195 to %struct.TYPE_3__*
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = icmp eq i32 %198, 165
  br i1 %199, label %200, label %201

200:                                              ; preds = %193
  br label %470

201:                                              ; preds = %193, %186, %182
  br label %203

202:                                              ; preds = %148
  br label %203

203:                                              ; preds = %202, %201
  %204 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %205 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %206 = call i32 @acpi_ex_resolve_to_value(%union.acpi_operand_object** %204, %struct.acpi_walk_state* %205)
  store i32 %206, i32* %9, align 4
  %207 = load i32, i32* %9, align 4
  %208 = call i64 @ACPI_FAILURE(i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %203
  %211 = load i32, i32* %9, align 4
  %212 = call i32 @return_ACPI_STATUS(i32 %211)
  br label %213

213:                                              ; preds = %210, %203
  %214 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %215 = load %union.acpi_operand_object*, %union.acpi_operand_object** %214, align 8
  store %union.acpi_operand_object* %215, %union.acpi_operand_object** %8, align 8
  %216 = load i64, i64* %13, align 8
  switch i64 %216, label %446 [
    i64 136, label %217
    i64 140, label %219
    i64 134, label %221
    i64 149, label %222
    i64 142, label %224
    i64 138, label %225
    i64 148, label %257
    i64 129, label %289
    i64 145, label %322
    i64 147, label %338
    i64 144, label %373
    i64 146, label %389
    i64 131, label %405
    i64 143, label %421
  ]

217:                                              ; preds = %213
  %218 = load i32, i32* @ACPI_TYPE_MUTEX, align 4
  store i32 %218, i32* %14, align 4
  br label %453

219:                                              ; preds = %213
  %220 = load i32, i32* @ACPI_TYPE_EVENT, align 4
  store i32 %220, i32* %14, align 4
  br label %453

221:                                              ; preds = %213
  store i32 152, i32* %14, align 4
  br label %453

222:                                              ; preds = %213
  %223 = load i32, i32* @ACPI_TYPE_ANY, align 4
  store i32 %223, i32* %14, align 4
  br label %453

224:                                              ; preds = %213
  store i32 154, i32* %14, align 4
  br label %453

225:                                              ; preds = %213
  %226 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %227 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %228 = call i32 @acpi_ex_convert_to_integer(%union.acpi_operand_object* %226, %union.acpi_operand_object** %227, i32 16)
  store i32 %228, i32* %9, align 4
  %229 = load i32, i32* %9, align 4
  %230 = call i64 @ACPI_FAILURE(i32 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %248

232:                                              ; preds = %225
  %233 = load i32, i32* %9, align 4
  %234 = load i32, i32* @AE_TYPE, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %245

236:                                              ; preds = %232
  %237 = load i32, i32* @AE_INFO, align 4
  %238 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %239 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %238)
  %240 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %241 = ptrtoint %union.acpi_operand_object* %240 to i32
  %242 = call i32 @ACPI_ERROR(i32 %241)
  %243 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %244 = call i32 @return_ACPI_STATUS(i32 %243)
  br label %245

245:                                              ; preds = %236, %232
  %246 = load i32, i32* %9, align 4
  %247 = call i32 @return_ACPI_STATUS(i32 %246)
  br label %248

248:                                              ; preds = %245, %225
  %249 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %250 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %251 = load %union.acpi_operand_object*, %union.acpi_operand_object** %250, align 8
  %252 = icmp ne %union.acpi_operand_object* %249, %251
  br i1 %252, label %253, label %256

253:                                              ; preds = %248
  %254 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %255 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %254)
  br label %256

256:                                              ; preds = %253, %248
  br label %470

257:                                              ; preds = %213
  %258 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %259 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %260 = call i32 @acpi_ex_convert_to_buffer(%union.acpi_operand_object* %258, %union.acpi_operand_object** %259)
  store i32 %260, i32* %9, align 4
  %261 = load i32, i32* %9, align 4
  %262 = call i64 @ACPI_FAILURE(i32 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %280

264:                                              ; preds = %257
  %265 = load i32, i32* %9, align 4
  %266 = load i32, i32* @AE_TYPE, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %268, label %277

268:                                              ; preds = %264
  %269 = load i32, i32* @AE_INFO, align 4
  %270 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %271 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %270)
  %272 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %273 = ptrtoint %union.acpi_operand_object* %272 to i32
  %274 = call i32 @ACPI_ERROR(i32 %273)
  %275 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %276 = call i32 @return_ACPI_STATUS(i32 %275)
  br label %277

277:                                              ; preds = %268, %264
  %278 = load i32, i32* %9, align 4
  %279 = call i32 @return_ACPI_STATUS(i32 %278)
  br label %280

280:                                              ; preds = %277, %257
  %281 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %282 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %283 = load %union.acpi_operand_object*, %union.acpi_operand_object** %282, align 8
  %284 = icmp ne %union.acpi_operand_object* %281, %283
  br i1 %284, label %285, label %288

285:                                              ; preds = %280
  %286 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %287 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %286)
  br label %288

288:                                              ; preds = %285, %280
  br label %470

289:                                              ; preds = %213
  %290 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %291 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %292 = load i32, i32* @ACPI_IMPLICIT_CONVERT_HEX, align 4
  %293 = call i32 @acpi_ex_convert_to_string(%union.acpi_operand_object* %290, %union.acpi_operand_object** %291, i32 %292)
  store i32 %293, i32* %9, align 4
  %294 = load i32, i32* %9, align 4
  %295 = call i64 @ACPI_FAILURE(i32 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %313

297:                                              ; preds = %289
  %298 = load i32, i32* %9, align 4
  %299 = load i32, i32* @AE_TYPE, align 4
  %300 = icmp eq i32 %298, %299
  br i1 %300, label %301, label %310

301:                                              ; preds = %297
  %302 = load i32, i32* @AE_INFO, align 4
  %303 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %304 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %303)
  %305 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %306 = ptrtoint %union.acpi_operand_object* %305 to i32
  %307 = call i32 @ACPI_ERROR(i32 %306)
  %308 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %309 = call i32 @return_ACPI_STATUS(i32 %308)
  br label %310

310:                                              ; preds = %301, %297
  %311 = load i32, i32* %9, align 4
  %312 = call i32 @return_ACPI_STATUS(i32 %311)
  br label %313

313:                                              ; preds = %310, %289
  %314 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %315 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %316 = load %union.acpi_operand_object*, %union.acpi_operand_object** %315, align 8
  %317 = icmp ne %union.acpi_operand_object* %314, %316
  br i1 %317, label %318, label %321

318:                                              ; preds = %313
  %319 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %320 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %319)
  br label %321

321:                                              ; preds = %318, %313
  br label %470

322:                                              ; preds = %213
  %323 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %324 = bitcast %union.acpi_operand_object* %323 to %struct.TYPE_4__*
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  switch i32 %326, label %328 [
    i32 157, label %327
    i32 150, label %327
    i32 160, label %327
  ]

327:                                              ; preds = %322, %322, %322
  br label %337

328:                                              ; preds = %322
  %329 = load i32, i32* @AE_INFO, align 4
  %330 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %331 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %330)
  %332 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %333 = ptrtoint %union.acpi_operand_object* %332 to i32
  %334 = call i32 @ACPI_ERROR(i32 %333)
  %335 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %336 = call i32 @return_ACPI_STATUS(i32 %335)
  br label %337

337:                                              ; preds = %328, %327
  br label %470

338:                                              ; preds = %213
  %339 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %340 = bitcast %union.acpi_operand_object* %339 to %struct.TYPE_4__*
  %341 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  switch i32 %342, label %363 [
    i32 150, label %343
    i32 160, label %343
    i32 157, label %344
  ]

343:                                              ; preds = %338, %338
  br label %372

344:                                              ; preds = %338
  %345 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %346 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %347 = call i32 @acpi_ex_convert_to_buffer(%union.acpi_operand_object* %345, %union.acpi_operand_object** %346)
  store i32 %347, i32* %9, align 4
  %348 = load i32, i32* %9, align 4
  %349 = call i64 @ACPI_FAILURE(i32 %348)
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %354

351:                                              ; preds = %344
  %352 = load i32, i32* %9, align 4
  %353 = call i32 @return_ACPI_STATUS(i32 %352)
  br label %354

354:                                              ; preds = %351, %344
  %355 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %356 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %357 = load %union.acpi_operand_object*, %union.acpi_operand_object** %356, align 8
  %358 = icmp ne %union.acpi_operand_object* %355, %357
  br i1 %358, label %359, label %362

359:                                              ; preds = %354
  %360 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %361 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %360)
  br label %362

362:                                              ; preds = %359, %354
  br label %372

363:                                              ; preds = %338
  %364 = load i32, i32* @AE_INFO, align 4
  %365 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %366 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %365)
  %367 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %368 = ptrtoint %union.acpi_operand_object* %367 to i32
  %369 = call i32 @ACPI_ERROR(i32 %368)
  %370 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %371 = call i32 @return_ACPI_STATUS(i32 %370)
  br label %372

372:                                              ; preds = %363, %362, %343
  br label %470

373:                                              ; preds = %213
  %374 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %375 = bitcast %union.acpi_operand_object* %374 to %struct.TYPE_4__*
  %376 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 4
  switch i32 %377, label %379 [
    i32 152, label %378
    i32 150, label %378
    i32 160, label %378
    i32 154, label %378
  ]

378:                                              ; preds = %373, %373, %373, %373
  br label %388

379:                                              ; preds = %373
  %380 = load i32, i32* @AE_INFO, align 4
  %381 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %382 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %381)
  %383 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %384 = ptrtoint %union.acpi_operand_object* %383 to i32
  %385 = call i32 @ACPI_ERROR(i32 %384)
  %386 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %387 = call i32 @return_ACPI_STATUS(i32 %386)
  br label %388

388:                                              ; preds = %379, %378
  br label %470

389:                                              ; preds = %213
  %390 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %391 = bitcast %union.acpi_operand_object* %390 to %struct.TYPE_4__*
  %392 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 4
  switch i32 %393, label %395 [
    i32 152, label %394
    i32 150, label %394
    i32 160, label %394
  ]

394:                                              ; preds = %389, %389, %389
  br label %404

395:                                              ; preds = %389
  %396 = load i32, i32* @AE_INFO, align 4
  %397 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %398 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %397)
  %399 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %400 = ptrtoint %union.acpi_operand_object* %399 to i32
  %401 = call i32 @ACPI_ERROR(i32 %400)
  %402 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %403 = call i32 @return_ACPI_STATUS(i32 %402)
  br label %404

404:                                              ; preds = %395, %394
  br label %470

405:                                              ; preds = %213
  %406 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %407 = bitcast %union.acpi_operand_object* %406 to %struct.TYPE_4__*
  %408 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 4
  switch i32 %409, label %411 [
    i32 160, label %410
    i32 151, label %410
  ]

410:                                              ; preds = %405, %405
  br label %420

411:                                              ; preds = %405
  %412 = load i32, i32* @AE_INFO, align 4
  %413 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %414 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %413)
  %415 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %416 = ptrtoint %union.acpi_operand_object* %415 to i32
  %417 = call i32 @ACPI_ERROR(i32 %416)
  %418 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %419 = call i32 @return_ACPI_STATUS(i32 %418)
  br label %420

420:                                              ; preds = %411, %410
  br label %470

421:                                              ; preds = %213
  %422 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %423 = bitcast %union.acpi_operand_object* %422 to %struct.TYPE_4__*
  %424 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 4
  switch i32 %425, label %427 [
    i32 157, label %426
    i32 152, label %426
    i32 150, label %426
    i32 160, label %426
    i32 159, label %426
    i32 154, label %426
    i32 153, label %426
    i32 156, label %426
    i32 155, label %426
    i32 158, label %426
  ]

426:                                              ; preds = %421, %421, %421, %421, %421, %421, %421, %421, %421, %421
  br label %445

427:                                              ; preds = %421
  %428 = load i32, i32* @acpi_gbl_enable_interpreter_slack, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %431

430:                                              ; preds = %427
  br label %445

431:                                              ; preds = %427
  %432 = load i32, i32* %15, align 4
  %433 = load i32, i32* @AML_DEBUG_OP, align 4
  %434 = icmp eq i32 %432, %433
  br i1 %434, label %435, label %436

435:                                              ; preds = %431
  br label %445

436:                                              ; preds = %431
  %437 = load i32, i32* @AE_INFO, align 4
  %438 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %439 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %438)
  %440 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %441 = ptrtoint %union.acpi_operand_object* %440 to i32
  %442 = call i32 @ACPI_ERROR(i32 %441)
  %443 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %444 = call i32 @return_ACPI_STATUS(i32 %443)
  br label %445

445:                                              ; preds = %436, %435, %430, %426
  br label %470

446:                                              ; preds = %213
  %447 = load i32, i32* @AE_INFO, align 4
  %448 = load i64, i64* %13, align 8
  %449 = trunc i64 %448 to i32
  %450 = call i32 @ACPI_ERROR(i32 %449)
  %451 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %452 = call i32 @return_ACPI_STATUS(i32 %451)
  br label %453

453:                                              ; preds = %446, %224, %222, %221, %219, %217
  %454 = load i32, i32* %14, align 4
  %455 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %456 = load %union.acpi_operand_object*, %union.acpi_operand_object** %455, align 8
  %457 = bitcast %union.acpi_operand_object* %456 to %struct.TYPE_4__*
  %458 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 4
  %460 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %461 = load %union.acpi_operand_object*, %union.acpi_operand_object** %460, align 8
  %462 = call i32 @acpi_ex_check_object_type(i32 %454, i32 %459, %union.acpi_operand_object* %461)
  store i32 %462, i32* %9, align 4
  %463 = load i32, i32* %9, align 4
  %464 = call i64 @ACPI_FAILURE(i32 %463)
  %465 = icmp ne i64 %464, 0
  br i1 %465, label %466, label %469

466:                                              ; preds = %453
  %467 = load i32, i32* %9, align 4
  %468 = call i32 @return_ACPI_STATUS(i32 %467)
  br label %469

469:                                              ; preds = %466, %453
  br label %470

470:                                              ; preds = %469, %445, %420, %404, %388, %372, %337, %321, %288, %256, %200, %181, %170, %164
  %471 = load i64, i64* %11, align 8
  %472 = call i64 @GET_CURRENT_ARG_TYPE(i64 %471)
  %473 = icmp ne i64 %472, 0
  br i1 %473, label %474, label %477

474:                                              ; preds = %470
  %475 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %476 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %475, i32 -1
  store %union.acpi_operand_object** %476, %union.acpi_operand_object*** %6, align 8
  br label %477

477:                                              ; preds = %474, %470
  br label %52

478:                                              ; preds = %52
  %479 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %480 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %479, i32 0, i32 1
  %481 = load i32, i32* %480, align 4
  %482 = load i32, i32* %5, align 4
  %483 = call i32 @acpi_ps_get_opcode_name(i32 %482)
  %484 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %485 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %484, i32 0, i32 0
  %486 = load i32, i32* %485, align 4
  %487 = call i32 @ACPI_DUMP_OPERANDS(i32 %481, i32 %483, i32 %486)
  %488 = load i32, i32* %9, align 4
  %489 = call i32 @return_ACPI_STATUS(i32 %488)
  %490 = load i32, i32* %4, align 4
  ret i32 %490
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_U32(i32, i32) #1

declare dso_local %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i64 @GET_CURRENT_ARG_TYPE(i64) #1

declare dso_local i32 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object*) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_ut_valid_object_type(i32) #1

declare dso_local i32 @acpi_ut_get_reference_name(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ut_get_descriptor_name(%union.acpi_operand_object*) #1

declare dso_local i32 @INCREMENT_ARG_LIST(i64) #1

declare dso_local i32 @acpi_ex_check_object_type(i32, i32, %union.acpi_operand_object*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ex_resolve_to_value(%union.acpi_operand_object**, %struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ex_convert_to_integer(%union.acpi_operand_object*, %union.acpi_operand_object**, i32) #1

declare dso_local i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ex_convert_to_buffer(%union.acpi_operand_object*, %union.acpi_operand_object**) #1

declare dso_local i32 @acpi_ex_convert_to_string(%union.acpi_operand_object*, %union.acpi_operand_object**, i32) #1

declare dso_local i32 @ACPI_DUMP_OPERANDS(i32, i32, i32) #1

declare dso_local i32 @acpi_ps_get_opcode_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

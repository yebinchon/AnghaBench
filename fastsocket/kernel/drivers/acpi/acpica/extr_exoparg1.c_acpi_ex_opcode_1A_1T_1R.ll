; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exoparg1.c_acpi_ex_opcode_1A_1T_1R.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exoparg1.c_acpi_ex_opcode_1A_1T_1R.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i32 }
%struct.acpi_walk_state = type { i32, %union.acpi_operand_object*, %union.acpi_operand_object** }
%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@ex_opcode_1A_1T_1R = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_INTEGER_BIT_SIZE = common dso_local global i32 0, align 4
@acpi_gbl_integer_nybble_width = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"BCD digit too large (not decimal): 0x%X\00", align 1
@AE_AML_NUMERIC_OVERFLOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Integer too large to convert to BCD: %8.8X%8.8X\00", align 1
@acpi_gbl_root_node = common dso_local global %struct.acpi_namespace_node* null, align 8
@ACPI_INTEGER_MAX = common dso_local global i32 0, align 4
@ACPI_EXPLICIT_CONVERT_DECIMAL = common dso_local global i32 0, align 4
@ACPI_EXPLICIT_CONVERT_HEX = common dso_local global i32 0, align 4
@ACPI_ANY_BASE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"%s is obsolete and not implemented\00", align 1
@AE_SUPPORT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Unknown AML opcode %X\00", align 1
@AE_AML_BAD_OPCODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_opcode_1A_1T_1R(%struct.acpi_walk_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_walk_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.acpi_operand_object**, align 8
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca %union.acpi_operand_object*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %3, align 8
  %12 = load i32, i32* @AE_OK, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %14 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %13, i32 0, i32 2
  %15 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %14, align 8
  %16 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %15, i64 0
  store %union.acpi_operand_object** %16, %union.acpi_operand_object*** %5, align 8
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %6, align 8
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %7, align 8
  %17 = load i32, i32* @ex_opcode_1A_1T_1R, align 4
  %18 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %19 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @acpi_ps_get_opcode_name(i32 %20)
  %22 = call i32 @ACPI_FUNCTION_TRACE_STR(i32 %17, i32 %21)
  %23 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %24 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %366 [
    i32 141, label %26
    i32 138, label %26
    i32 137, label %26
    i32 136, label %26
    i32 132, label %26
    i32 140, label %26
    i32 133, label %260
    i32 139, label %293
    i32 130, label %299
    i32 129, label %314
    i32 131, label %329
    i32 128, label %343
    i32 135, label %358
    i32 134, label %358
  ]

26:                                               ; preds = %1, %1, %1, %1, %1, %1
  %27 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %28 = call %union.acpi_operand_object* @acpi_ut_create_internal_object(i32 %27)
  store %union.acpi_operand_object* %28, %union.acpi_operand_object** %6, align 8
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %30 = icmp ne %union.acpi_operand_object* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %32, i32* %4, align 4
  br label %385

33:                                               ; preds = %26
  %34 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %35 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %258 [
    i32 141, label %37
    i32 138, label %48
    i32 137, label %84
    i32 136, label %129
    i32 132, label %175
    i32 140, label %224
  ]

37:                                               ; preds = %33
  %38 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %39 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %38, i64 0
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %39, align 8
  %41 = bitcast %union.acpi_operand_object* %40 to %struct.TYPE_2__*
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = xor i32 %43, -1
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %46 = bitcast %union.acpi_operand_object* %45 to %struct.TYPE_2__*
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  br label %259

48:                                               ; preds = %33
  %49 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %50 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %49, i64 0
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %50, align 8
  %52 = bitcast %union.acpi_operand_object* %51 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %56 = bitcast %union.acpi_operand_object* %55 to %struct.TYPE_2__*
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %76, %48
  %59 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %60 = bitcast %union.acpi_operand_object* %59 to %struct.TYPE_2__*
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @ACPI_INTEGER_BIT_SIZE, align 4
  %67 = icmp slt i32 %65, %66
  br label %68

68:                                               ; preds = %64, %58
  %69 = phi i1 [ false, %58 ], [ %67, %64 ]
  br i1 %69, label %70, label %79

70:                                               ; preds = %68
  %71 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %72 = bitcast %union.acpi_operand_object* %71 to %struct.TYPE_2__*
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = ashr i32 %74, 1
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %70
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %58

79:                                               ; preds = %68
  %80 = load i32, i32* %8, align 4
  %81 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %82 = bitcast %union.acpi_operand_object* %81 to %struct.TYPE_2__*
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 4
  br label %259

84:                                               ; preds = %33
  %85 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %86 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %85, i64 0
  %87 = load %union.acpi_operand_object*, %union.acpi_operand_object** %86, align 8
  %88 = bitcast %union.acpi_operand_object* %87 to %struct.TYPE_2__*
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %92 = bitcast %union.acpi_operand_object* %91 to %struct.TYPE_2__*
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 4
  store i32 0, i32* %8, align 4
  br label %94

94:                                               ; preds = %112, %84
  %95 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %96 = bitcast %union.acpi_operand_object* %95 to %struct.TYPE_2__*
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @ACPI_INTEGER_BIT_SIZE, align 4
  %103 = icmp slt i32 %101, %102
  br label %104

104:                                              ; preds = %100, %94
  %105 = phi i1 [ false, %94 ], [ %103, %100 ]
  br i1 %105, label %106, label %115

106:                                              ; preds = %104
  %107 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %108 = bitcast %union.acpi_operand_object* %107 to %struct.TYPE_2__*
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = shl i32 %110, 1
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %106
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %8, align 4
  br label %94

115:                                              ; preds = %104
  %116 = load i32, i32* %8, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  br label %124

119:                                              ; preds = %115
  %120 = load i32, i32* @ACPI_INTEGER_BIT_SIZE, align 4
  %121 = add nsw i32 %120, 1
  %122 = load i32, i32* %8, align 4
  %123 = sub nsw i32 %121, %122
  br label %124

124:                                              ; preds = %119, %118
  %125 = phi i32 [ 0, %118 ], [ %123, %119 ]
  %126 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %127 = bitcast %union.acpi_operand_object* %126 to %struct.TYPE_2__*
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  store i32 %125, i32* %128, align 4
  br label %259

129:                                              ; preds = %33
  store i32 1, i32* %10, align 4
  %130 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %131 = bitcast %union.acpi_operand_object* %130 to %struct.TYPE_2__*
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  store i32 0, i32* %132, align 4
  %133 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %134 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %133, i64 0
  %135 = load %union.acpi_operand_object*, %union.acpi_operand_object** %134, align 8
  %136 = bitcast %union.acpi_operand_object* %135 to %struct.TYPE_2__*
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %139

139:                                              ; preds = %171, %129
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* @acpi_gbl_integer_nybble_width, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = load i32, i32* %11, align 4
  %145 = icmp sgt i32 %144, 0
  br label %146

146:                                              ; preds = %143, %139
  %147 = phi i1 [ false, %139 ], [ %145, %143 ]
  br i1 %147, label %148, label %174

148:                                              ; preds = %146
  %149 = load i32, i32* %11, align 4
  %150 = and i32 %149, 15
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %8, align 4
  %152 = icmp sgt i32 %151, 9
  br i1 %152, label %153, label %158

153:                                              ; preds = %148
  %154 = load i32, i32* @AE_INFO, align 4
  %155 = load i32, i32* %8, align 4
  %156 = call i32 @ACPI_ERROR(i32 %155)
  %157 = load i32, i32* @AE_AML_NUMERIC_OVERFLOW, align 4
  store i32 %157, i32* %4, align 4
  br label %385

158:                                              ; preds = %148
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* %10, align 4
  %161 = mul nsw i32 %159, %160
  %162 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %163 = bitcast %union.acpi_operand_object* %162 to %struct.TYPE_2__*
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %165, %161
  store i32 %166, i32* %164, align 4
  %167 = load i32, i32* %11, align 4
  %168 = ashr i32 %167, 4
  store i32 %168, i32* %11, align 4
  %169 = load i32, i32* %10, align 4
  %170 = mul nsw i32 %169, 10
  store i32 %170, i32* %10, align 4
  br label %171

171:                                              ; preds = %158
  %172 = load i32, i32* %9, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %9, align 4
  br label %139

174:                                              ; preds = %146
  br label %259

175:                                              ; preds = %33
  %176 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %177 = bitcast %union.acpi_operand_object* %176 to %struct.TYPE_2__*
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  store i32 0, i32* %178, align 4
  %179 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %180 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %179, i64 0
  %181 = load %union.acpi_operand_object*, %union.acpi_operand_object** %180, align 8
  %182 = bitcast %union.acpi_operand_object* %181 to %struct.TYPE_2__*
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %185

185:                                              ; preds = %206, %175
  %186 = load i32, i32* %9, align 4
  %187 = load i32, i32* @acpi_gbl_integer_nybble_width, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %185
  %190 = load i32, i32* %11, align 4
  %191 = icmp sgt i32 %190, 0
  br label %192

192:                                              ; preds = %189, %185
  %193 = phi i1 [ false, %185 ], [ %191, %189 ]
  br i1 %193, label %194, label %209

194:                                              ; preds = %192
  %195 = load i32, i32* %11, align 4
  %196 = call i32 @acpi_ut_short_divide(i32 %195, i32 10, i32* %11, i32* %8)
  %197 = load i32, i32* %8, align 4
  %198 = load i32, i32* %9, align 4
  %199 = call i32 @ACPI_MUL_4(i32 %198)
  %200 = shl i32 %197, %199
  %201 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %202 = bitcast %union.acpi_operand_object* %201 to %struct.TYPE_2__*
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = or i32 %204, %200
  store i32 %205, i32* %203, align 4
  br label %206

206:                                              ; preds = %194
  %207 = load i32, i32* %9, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %9, align 4
  br label %185

209:                                              ; preds = %192
  %210 = load i32, i32* %11, align 4
  %211 = icmp sgt i32 %210, 0
  br i1 %211, label %212, label %223

212:                                              ; preds = %209
  %213 = load i32, i32* @AE_INFO, align 4
  %214 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %215 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %214, i64 0
  %216 = load %union.acpi_operand_object*, %union.acpi_operand_object** %215, align 8
  %217 = bitcast %union.acpi_operand_object* %216 to %struct.TYPE_2__*
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @ACPI_FORMAT_UINT64(i32 %219)
  %221 = call i32 @ACPI_ERROR(i32 %220)
  %222 = load i32, i32* @AE_AML_NUMERIC_OVERFLOW, align 4
  store i32 %222, i32* %4, align 4
  br label %385

223:                                              ; preds = %209
  br label %259

224:                                              ; preds = %33
  %225 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %226 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %225, i64 0
  %227 = load %union.acpi_operand_object*, %union.acpi_operand_object** %226, align 8
  %228 = bitcast %union.acpi_operand_object* %227 to %struct.acpi_namespace_node*
  %229 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8
  %230 = icmp eq %struct.acpi_namespace_node* %228, %229
  br i1 %230, label %231, label %235

231:                                              ; preds = %224
  %232 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %233 = bitcast %union.acpi_operand_object* %232 to %struct.TYPE_2__*
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 0
  store i32 0, i32* %234, align 4
  br label %385

235:                                              ; preds = %224
  %236 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %237 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %236, i64 0
  %238 = load %union.acpi_operand_object*, %union.acpi_operand_object** %237, align 8
  %239 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %240 = call i32 @acpi_ex_get_object_reference(%union.acpi_operand_object* %238, %union.acpi_operand_object** %7, %struct.acpi_walk_state* %239)
  store i32 %240, i32* %4, align 4
  %241 = load i32, i32* %4, align 4
  %242 = call i64 @ACPI_FAILURE(i32 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %235
  br label %385

245:                                              ; preds = %235
  %246 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %247 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %248 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %247, i64 1
  %249 = load %union.acpi_operand_object*, %union.acpi_operand_object** %248, align 8
  %250 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %251 = call i32 @acpi_ex_store(%union.acpi_operand_object* %246, %union.acpi_operand_object* %249, %struct.acpi_walk_state* %250)
  store i32 %251, i32* %4, align 4
  %252 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %253 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %252)
  %254 = load i32, i32* @ACPI_INTEGER_MAX, align 4
  %255 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %256 = bitcast %union.acpi_operand_object* %255 to %struct.TYPE_2__*
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i32 0, i32 0
  store i32 %254, i32* %257, align 4
  br label %385

258:                                              ; preds = %33
  br label %259

259:                                              ; preds = %258, %223, %174, %124, %79, %37
  br label %373

260:                                              ; preds = %1
  %261 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %262 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %261, i64 0
  %263 = load %union.acpi_operand_object*, %union.acpi_operand_object** %262, align 8
  %264 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %265 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %264, i64 1
  %266 = load %union.acpi_operand_object*, %union.acpi_operand_object** %265, align 8
  %267 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %268 = call i32 @acpi_ex_store(%union.acpi_operand_object* %263, %union.acpi_operand_object* %266, %struct.acpi_walk_state* %267)
  store i32 %268, i32* %4, align 4
  %269 = load i32, i32* %4, align 4
  %270 = call i64 @ACPI_FAILURE(i32 %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %260
  %273 = load i32, i32* %4, align 4
  %274 = call i32 @return_ACPI_STATUS(i32 %273)
  br label %275

275:                                              ; preds = %272, %260
  %276 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %277 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %276, i32 0, i32 1
  %278 = load %union.acpi_operand_object*, %union.acpi_operand_object** %277, align 8
  %279 = icmp ne %union.acpi_operand_object* %278, null
  br i1 %279, label %290, label %280

280:                                              ; preds = %275
  %281 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %282 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %281, i64 0
  %283 = load %union.acpi_operand_object*, %union.acpi_operand_object** %282, align 8
  %284 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %285 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %284, i32 0, i32 1
  store %union.acpi_operand_object* %283, %union.acpi_operand_object** %285, align 8
  %286 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %287 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %286, i32 0, i32 2
  %288 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %287, align 8
  %289 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %288, i64 0
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %289, align 8
  br label %290

290:                                              ; preds = %280, %275
  %291 = load i32, i32* %4, align 4
  %292 = call i32 @return_ACPI_STATUS(i32 %291)
  br label %293

293:                                              ; preds = %1, %290
  %294 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %295 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %294, i64 0
  %296 = load %union.acpi_operand_object*, %union.acpi_operand_object** %295, align 8
  %297 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %298 = call i32 @acpi_ut_copy_iobject_to_iobject(%union.acpi_operand_object* %296, %union.acpi_operand_object** %6, %struct.acpi_walk_state* %297)
  store i32 %298, i32* %4, align 4
  br label %373

299:                                              ; preds = %1
  %300 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %301 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %300, i64 0
  %302 = load %union.acpi_operand_object*, %union.acpi_operand_object** %301, align 8
  %303 = load i32, i32* @ACPI_EXPLICIT_CONVERT_DECIMAL, align 4
  %304 = call i32 @acpi_ex_convert_to_string(%union.acpi_operand_object* %302, %union.acpi_operand_object** %6, i32 %303)
  store i32 %304, i32* %4, align 4
  %305 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %306 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %307 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %306, i64 0
  %308 = load %union.acpi_operand_object*, %union.acpi_operand_object** %307, align 8
  %309 = icmp eq %union.acpi_operand_object* %305, %308
  br i1 %309, label %310, label %313

310:                                              ; preds = %299
  %311 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %312 = call i32 @acpi_ut_add_reference(%union.acpi_operand_object* %311)
  br label %313

313:                                              ; preds = %310, %299
  br label %373

314:                                              ; preds = %1
  %315 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %316 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %315, i64 0
  %317 = load %union.acpi_operand_object*, %union.acpi_operand_object** %316, align 8
  %318 = load i32, i32* @ACPI_EXPLICIT_CONVERT_HEX, align 4
  %319 = call i32 @acpi_ex_convert_to_string(%union.acpi_operand_object* %317, %union.acpi_operand_object** %6, i32 %318)
  store i32 %319, i32* %4, align 4
  %320 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %321 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %322 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %321, i64 0
  %323 = load %union.acpi_operand_object*, %union.acpi_operand_object** %322, align 8
  %324 = icmp eq %union.acpi_operand_object* %320, %323
  br i1 %324, label %325, label %328

325:                                              ; preds = %314
  %326 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %327 = call i32 @acpi_ut_add_reference(%union.acpi_operand_object* %326)
  br label %328

328:                                              ; preds = %325, %314
  br label %373

329:                                              ; preds = %1
  %330 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %331 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %330, i64 0
  %332 = load %union.acpi_operand_object*, %union.acpi_operand_object** %331, align 8
  %333 = call i32 @acpi_ex_convert_to_buffer(%union.acpi_operand_object* %332, %union.acpi_operand_object** %6)
  store i32 %333, i32* %4, align 4
  %334 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %335 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %336 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %335, i64 0
  %337 = load %union.acpi_operand_object*, %union.acpi_operand_object** %336, align 8
  %338 = icmp eq %union.acpi_operand_object* %334, %337
  br i1 %338, label %339, label %342

339:                                              ; preds = %329
  %340 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %341 = call i32 @acpi_ut_add_reference(%union.acpi_operand_object* %340)
  br label %342

342:                                              ; preds = %339, %329
  br label %373

343:                                              ; preds = %1
  %344 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %345 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %344, i64 0
  %346 = load %union.acpi_operand_object*, %union.acpi_operand_object** %345, align 8
  %347 = load i32, i32* @ACPI_ANY_BASE, align 4
  %348 = call i32 @acpi_ex_convert_to_integer(%union.acpi_operand_object* %346, %union.acpi_operand_object** %6, i32 %347)
  store i32 %348, i32* %4, align 4
  %349 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %350 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %351 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %350, i64 0
  %352 = load %union.acpi_operand_object*, %union.acpi_operand_object** %351, align 8
  %353 = icmp eq %union.acpi_operand_object* %349, %352
  br i1 %353, label %354, label %357

354:                                              ; preds = %343
  %355 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %356 = call i32 @acpi_ut_add_reference(%union.acpi_operand_object* %355)
  br label %357

357:                                              ; preds = %354, %343
  br label %373

358:                                              ; preds = %1, %1
  %359 = load i32, i32* @AE_INFO, align 4
  %360 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %361 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = call i32 @acpi_ps_get_opcode_name(i32 %362)
  %364 = call i32 @ACPI_ERROR(i32 %363)
  %365 = load i32, i32* @AE_SUPPORT, align 4
  store i32 %365, i32* %4, align 4
  br label %385

366:                                              ; preds = %1
  %367 = load i32, i32* @AE_INFO, align 4
  %368 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %369 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = call i32 @ACPI_ERROR(i32 %370)
  %372 = load i32, i32* @AE_AML_BAD_OPCODE, align 4
  store i32 %372, i32* %4, align 4
  br label %385

373:                                              ; preds = %357, %342, %328, %313, %293, %259
  %374 = load i32, i32* %4, align 4
  %375 = call i64 @ACPI_SUCCESS(i32 %374)
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %384

377:                                              ; preds = %373
  %378 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %379 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %380 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %379, i64 1
  %381 = load %union.acpi_operand_object*, %union.acpi_operand_object** %380, align 8
  %382 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %383 = call i32 @acpi_ex_store(%union.acpi_operand_object* %378, %union.acpi_operand_object* %381, %struct.acpi_walk_state* %382)
  store i32 %383, i32* %4, align 4
  br label %384

384:                                              ; preds = %377, %373
  br label %385

385:                                              ; preds = %384, %366, %358, %245, %244, %231, %212, %153, %31
  %386 = load i32, i32* %4, align 4
  %387 = call i64 @ACPI_FAILURE(i32 %386)
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %392

389:                                              ; preds = %385
  %390 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %391 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %390)
  br label %402

392:                                              ; preds = %385
  %393 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %394 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %393, i32 0, i32 1
  %395 = load %union.acpi_operand_object*, %union.acpi_operand_object** %394, align 8
  %396 = icmp ne %union.acpi_operand_object* %395, null
  br i1 %396, label %401, label %397

397:                                              ; preds = %392
  %398 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %399 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %400 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %399, i32 0, i32 1
  store %union.acpi_operand_object* %398, %union.acpi_operand_object** %400, align 8
  br label %401

401:                                              ; preds = %397, %392
  br label %402

402:                                              ; preds = %401, %389
  %403 = load i32, i32* %4, align 4
  %404 = call i32 @return_ACPI_STATUS(i32 %403)
  %405 = load i32, i32* %2, align 4
  ret i32 %405
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_STR(i32, i32) #1

declare dso_local i32 @acpi_ps_get_opcode_name(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @acpi_ut_short_divide(i32, i32, i32*, i32*) #1

declare dso_local i32 @ACPI_MUL_4(i32) #1

declare dso_local i32 @ACPI_FORMAT_UINT64(i32) #1

declare dso_local i32 @acpi_ex_get_object_reference(%union.acpi_operand_object*, %union.acpi_operand_object**, %struct.acpi_walk_state*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ex_store(%union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ut_copy_iobject_to_iobject(%union.acpi_operand_object*, %union.acpi_operand_object**, %struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ex_convert_to_string(%union.acpi_operand_object*, %union.acpi_operand_object**, i32) #1

declare dso_local i32 @acpi_ut_add_reference(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ex_convert_to_buffer(%union.acpi_operand_object*, %union.acpi_operand_object**) #1

declare dso_local i32 @acpi_ex_convert_to_integer(%union.acpi_operand_object*, %union.acpi_operand_object**, i32) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

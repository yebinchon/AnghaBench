; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exresolv.c_acpi_ex_resolve_multiple.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exresolv.c_acpi_ex_resolve_multiple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { i32 }
%union.acpi_operand_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32, %union.acpi_operand_object**, %union.acpi_operand_object*, %union.acpi_operand_object* }
%struct.acpi_namespace_node = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }

@ACPI_TYPE_LOCAL_ALIAS = common dso_local global i64 0, align 8
@AE_AML_OPERAND_TYPE = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_REFERENCE = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Not a NS node %p [%s]\00", align 1
@AE_AML_INTERNAL = common dso_local global i32 0, align 4
@AE_AML_CIRCULAR_REFERENCE = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@ACPI_TYPE_DDB_HANDLE = common dso_local global i64 0, align 8
@ACPI_TYPE_ANY = common dso_local global i64 0, align 8
@ACPI_TYPE_DEBUG_OBJECT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Unknown Reference Class %2.2X\00", align 1
@ACPI_TYPE_FIELD_UNIT = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_resolve_multiple(%struct.acpi_walk_state* %0, %union.acpi_operand_object* %1, i64* %2, %union.acpi_operand_object** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_walk_state*, align 8
  %7 = alloca %union.acpi_operand_object*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %union.acpi_operand_object**, align 8
  %10 = alloca %union.acpi_operand_object*, align 8
  %11 = alloca %struct.acpi_namespace_node*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %6, align 8
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %7, align 8
  store i64* %2, i64** %8, align 8
  store %union.acpi_operand_object** %3, %union.acpi_operand_object*** %9, align 8
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %15 = bitcast %union.acpi_operand_object* %14 to i8*
  %16 = bitcast i8* %15 to %union.acpi_operand_object*
  store %union.acpi_operand_object* %16, %union.acpi_operand_object** %10, align 8
  %17 = call i32 @ACPI_FUNCTION_TRACE(i32 (%struct.acpi_walk_state*, %union.acpi_operand_object*, i64*, %union.acpi_operand_object**)* @acpi_ex_resolve_multiple)
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %19 = call i32 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object* %18)
  switch i32 %19, label %47 [
    i32 139, label %20
    i32 140, label %25
  ]

20:                                               ; preds = %4
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %22 = bitcast %union.acpi_operand_object* %21 to %struct.TYPE_4__*
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %12, align 8
  br label %50

25:                                               ; preds = %4
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %27 = bitcast %union.acpi_operand_object* %26 to %struct.acpi_namespace_node*
  %28 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %12, align 8
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %31 = bitcast %union.acpi_operand_object* %30 to %struct.acpi_namespace_node*
  %32 = bitcast %struct.acpi_namespace_node* %31 to %union.acpi_operand_object*
  %33 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%union.acpi_operand_object* %32)
  store %union.acpi_operand_object* %33, %union.acpi_operand_object** %10, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* @ACPI_TYPE_LOCAL_ALIAS, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %25
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %39 = bitcast %union.acpi_operand_object* %38 to %struct.acpi_namespace_node*
  %40 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %12, align 8
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %43 = bitcast %union.acpi_operand_object* %42 to %struct.acpi_namespace_node*
  %44 = bitcast %struct.acpi_namespace_node* %43 to %union.acpi_operand_object*
  %45 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%union.acpi_operand_object* %44)
  store %union.acpi_operand_object* %45, %union.acpi_operand_object** %10, align 8
  br label %46

46:                                               ; preds = %37, %25
  br label %50

47:                                               ; preds = %4
  %48 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %49 = call i32 @return_ACPI_STATUS(i32 %48)
  br label %50

50:                                               ; preds = %47, %46, %20
  %51 = load i64, i64* %12, align 8
  %52 = load i64, i64* @ACPI_TYPE_LOCAL_REFERENCE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %207

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %201, %55
  %57 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %58 = bitcast %union.acpi_operand_object* %57 to %struct.TYPE_4__*
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ACPI_TYPE_LOCAL_REFERENCE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %202

63:                                               ; preds = %56
  %64 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %65 = bitcast %union.acpi_operand_object* %64 to %struct.TYPE_3__*
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  switch i32 %67, label %192 [
    i32 133, label %68
    i32 134, label %68
    i32 136, label %118
    i32 132, label %137
    i32 135, label %139
    i32 138, label %139
    i32 137, label %190
  ]

68:                                               ; preds = %63, %63
  %69 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %70 = bitcast %union.acpi_operand_object* %69 to %struct.TYPE_3__*
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 133
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %76 = bitcast %union.acpi_operand_object* %75 to %struct.TYPE_3__*
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 5
  %78 = load %union.acpi_operand_object*, %union.acpi_operand_object** %77, align 8
  %79 = bitcast %union.acpi_operand_object* %78 to %struct.acpi_namespace_node*
  store %struct.acpi_namespace_node* %79, %struct.acpi_namespace_node** %11, align 8
  br label %86

80:                                               ; preds = %68
  %81 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %82 = bitcast %union.acpi_operand_object* %81 to %struct.TYPE_3__*
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 4
  %84 = load %union.acpi_operand_object*, %union.acpi_operand_object** %83, align 8
  %85 = bitcast %union.acpi_operand_object* %84 to %struct.acpi_namespace_node*
  store %struct.acpi_namespace_node* %85, %struct.acpi_namespace_node** %11, align 8
  br label %86

86:                                               ; preds = %80, %74
  %87 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %11, align 8
  %88 = bitcast %struct.acpi_namespace_node* %87 to %union.acpi_operand_object*
  %89 = call i32 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object* %88)
  %90 = icmp ne i32 %89, 140
  br i1 %90, label %91, label %100

91:                                               ; preds = %86
  %92 = load i32, i32* @AE_INFO, align 4
  %93 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %11, align 8
  %94 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %11, align 8
  %95 = bitcast %struct.acpi_namespace_node* %94 to %union.acpi_operand_object*
  %96 = call i32 @acpi_ut_get_descriptor_name(%union.acpi_operand_object* %95)
  %97 = call i32 @ACPI_ERROR(i32 %96)
  %98 = load i32, i32* @AE_AML_INTERNAL, align 4
  %99 = call i32 @return_ACPI_STATUS(i32 %98)
  br label %100

100:                                              ; preds = %91, %86
  %101 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %11, align 8
  %102 = bitcast %struct.acpi_namespace_node* %101 to %union.acpi_operand_object*
  %103 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%union.acpi_operand_object* %102)
  store %union.acpi_operand_object* %103, %union.acpi_operand_object** %10, align 8
  %104 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %105 = icmp ne %union.acpi_operand_object* %104, null
  br i1 %105, label %110, label %106

106:                                              ; preds = %100
  %107 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %11, align 8
  %108 = bitcast %struct.acpi_namespace_node* %107 to %union.acpi_operand_object*
  %109 = call i64 @acpi_ns_get_type(%union.acpi_operand_object* %108)
  store i64 %109, i64* %12, align 8
  br label %207

110:                                              ; preds = %100
  %111 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %112 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %113 = icmp eq %union.acpi_operand_object* %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load i32, i32* @AE_AML_CIRCULAR_REFERENCE, align 4
  %116 = call i32 @return_ACPI_STATUS(i32 %115)
  br label %117

117:                                              ; preds = %114, %110
  br label %201

118:                                              ; preds = %63
  %119 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %120 = bitcast %union.acpi_operand_object* %119 to %struct.TYPE_3__*
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %12, align 8
  %123 = load i64, i64* %12, align 8
  %124 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %118
  br label %207

127:                                              ; preds = %118
  %128 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %129 = bitcast %union.acpi_operand_object* %128 to %struct.TYPE_3__*
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 3
  %131 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %130, align 8
  %132 = load %union.acpi_operand_object*, %union.acpi_operand_object** %131, align 8
  store %union.acpi_operand_object* %132, %union.acpi_operand_object** %10, align 8
  %133 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %134 = icmp ne %union.acpi_operand_object* %133, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %127
  store i64 0, i64* %12, align 8
  br label %207

136:                                              ; preds = %127
  br label %201

137:                                              ; preds = %63
  %138 = load i64, i64* @ACPI_TYPE_DDB_HANDLE, align 8
  store i64 %138, i64* %12, align 8
  br label %207

139:                                              ; preds = %63, %63
  %140 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %9, align 8
  %141 = icmp ne %union.acpi_operand_object** %140, null
  br i1 %141, label %142, label %162

142:                                              ; preds = %139
  %143 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %144 = bitcast %union.acpi_operand_object* %143 to %struct.TYPE_3__*
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %148 = bitcast %union.acpi_operand_object* %147 to %struct.TYPE_3__*
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %152 = call i32 @acpi_ds_method_data_get_value(i32 %146, i32 %150, %struct.acpi_walk_state* %151, %union.acpi_operand_object** %10)
  store i32 %152, i32* %13, align 4
  %153 = load i32, i32* %13, align 4
  %154 = call i32 @ACPI_FAILURE(i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %142
  %157 = load i32, i32* %13, align 4
  %158 = call i32 @return_ACPI_STATUS(i32 %157)
  br label %159

159:                                              ; preds = %156, %142
  %160 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %161 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %160)
  br label %189

162:                                              ; preds = %139
  %163 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %164 = bitcast %union.acpi_operand_object* %163 to %struct.TYPE_3__*
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %168 = bitcast %union.acpi_operand_object* %167 to %struct.TYPE_3__*
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %6, align 8
  %172 = bitcast %struct.acpi_namespace_node** %11 to %union.acpi_operand_object**
  %173 = call i32 @acpi_ds_method_data_get_node(i32 %166, i32 %170, %struct.acpi_walk_state* %171, %union.acpi_operand_object** %172)
  store i32 %173, i32* %13, align 4
  %174 = load i32, i32* %13, align 4
  %175 = call i32 @ACPI_FAILURE(i32 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %162
  %178 = load i32, i32* %13, align 4
  %179 = call i32 @return_ACPI_STATUS(i32 %178)
  br label %180

180:                                              ; preds = %177, %162
  %181 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %11, align 8
  %182 = bitcast %struct.acpi_namespace_node* %181 to %union.acpi_operand_object*
  %183 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%union.acpi_operand_object* %182)
  store %union.acpi_operand_object* %183, %union.acpi_operand_object** %10, align 8
  %184 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %185 = icmp ne %union.acpi_operand_object* %184, null
  br i1 %185, label %188, label %186

186:                                              ; preds = %180
  %187 = load i64, i64* @ACPI_TYPE_ANY, align 8
  store i64 %187, i64* %12, align 8
  br label %207

188:                                              ; preds = %180
  br label %189

189:                                              ; preds = %188, %159
  br label %201

190:                                              ; preds = %63
  %191 = load i64, i64* @ACPI_TYPE_DEBUG_OBJECT, align 8
  store i64 %191, i64* %12, align 8
  br label %207

192:                                              ; preds = %63
  %193 = load i32, i32* @AE_INFO, align 4
  %194 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %195 = bitcast %union.acpi_operand_object* %194 to %struct.TYPE_3__*
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @ACPI_ERROR(i32 %197)
  %199 = load i32, i32* @AE_AML_INTERNAL, align 4
  %200 = call i32 @return_ACPI_STATUS(i32 %199)
  br label %201

201:                                              ; preds = %192, %189, %136, %117
  br label %56

202:                                              ; preds = %56
  %203 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %204 = bitcast %union.acpi_operand_object* %203 to %struct.TYPE_4__*
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  store i64 %206, i64* %12, align 8
  br label %207

207:                                              ; preds = %202, %190, %186, %137, %135, %126, %106, %54
  %208 = load i64, i64* %12, align 8
  switch i64 %208, label %213 [
    i64 129, label %209
    i64 131, label %209
    i64 130, label %209
    i64 128, label %211
  ]

209:                                              ; preds = %207, %207, %207
  %210 = load i64, i64* @ACPI_TYPE_FIELD_UNIT, align 8
  store i64 %210, i64* %12, align 8
  br label %214

211:                                              ; preds = %207
  %212 = load i64, i64* @ACPI_TYPE_ANY, align 8
  store i64 %212, i64* %12, align 8
  br label %214

213:                                              ; preds = %207
  br label %214

214:                                              ; preds = %213, %211, %209
  %215 = load i64, i64* %12, align 8
  %216 = load i64*, i64** %8, align 8
  store i64 %215, i64* %216, align 8
  %217 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %9, align 8
  %218 = icmp ne %union.acpi_operand_object** %217, null
  br i1 %218, label %219, label %222

219:                                              ; preds = %214
  %220 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %221 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %9, align 8
  store %union.acpi_operand_object* %220, %union.acpi_operand_object** %221, align 8
  br label %222

222:                                              ; preds = %219, %214
  %223 = load i32, i32* @AE_OK, align 4
  %224 = call i32 @return_ACPI_STATUS(i32 %223)
  %225 = load i32, i32* %5, align 4
  ret i32 %225
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32 (%struct.acpi_walk_state*, %union.acpi_operand_object*, i64*, %union.acpi_operand_object**)*) #1

declare dso_local i32 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object*) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%union.acpi_operand_object*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @acpi_ut_get_descriptor_name(%union.acpi_operand_object*) #1

declare dso_local i64 @acpi_ns_get_type(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ds_method_data_get_value(i32, i32, %struct.acpi_walk_state*, %union.acpi_operand_object**) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ds_method_data_get_node(i32, i32, %struct.acpi_walk_state*, %union.acpi_operand_object**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

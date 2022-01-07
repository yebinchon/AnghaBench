; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exfield.c_acpi_ex_write_data_to_field.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exfield.c_acpi_ex_write_data_to_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i8* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_13__ = type { i64, i8* }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }

@ex_write_data_to_field = common dso_local global i32 0, align 4
@AE_AML_NO_OPERAND = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER_FIELD = common dso_local global i32 0, align 4
@AOPOBJ_DATA_VALID = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_REGION_FIELD = common dso_local global i32 0, align 4
@ACPI_ADR_SPACE_SMBUS = common dso_local global i64 0, align 8
@ACPI_ADR_SPACE_IPMI = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"SMBus or IPMI write requires Buffer, found type %s\00", align 1
@AE_AML_OPERAND_TYPE = common dso_local global i32 0, align 4
@ACPI_SMBUS_BUFFER_SIZE = common dso_local global i64 0, align 8
@ACPI_WRITE = common dso_local global i32 0, align 4
@ACPI_IPMI_BUFFER_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [66 x i8] c"SMBus or IPMI write requires Buffer of length %X, found length %X\00", align 1
@AE_AML_BUFFER_LIMIT = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_DB_BFIELD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"FieldWrite [FROM]: Obj %p (%s:%X), Buf %p, ByteLen %X\0A\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"FieldWrite [TO]:   Obj %p (%s:%X), BitLen %X, BitOff %X, ByteOff %X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_write_data_to_field(%union.acpi_operand_object* %0, %union.acpi_operand_object* %1, %union.acpi_operand_object** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca %union.acpi_operand_object**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %union.acpi_operand_object*, align 8
  %12 = alloca i64, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %5, align 8
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %6, align 8
  store %union.acpi_operand_object** %2, %union.acpi_operand_object*** %7, align 8
  %13 = load i32, i32* @ex_write_data_to_field, align 4
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %15 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %13, %union.acpi_operand_object* %14)
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %17 = icmp ne %union.acpi_operand_object* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %20 = icmp ne %union.acpi_operand_object* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18, %3
  %22 = load i32, i32* @AE_AML_NO_OPERAND, align 4
  %23 = call i32 @return_ACPI_STATUS(i32 %22)
  br label %24

24:                                               ; preds = %21, %18
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %26 = bitcast %union.acpi_operand_object* %25 to %struct.TYPE_15__*
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @ACPI_TYPE_BUFFER_FIELD, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %24
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %33 = bitcast %union.acpi_operand_object* %32 to %struct.TYPE_15__*
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @AOPOBJ_DATA_VALID, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %31
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %41 = call i32 @acpi_ds_get_buffer_field_arguments(%union.acpi_operand_object* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i64 @ACPI_FAILURE(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @return_ACPI_STATUS(i32 %46)
  br label %48

48:                                               ; preds = %45, %39
  br label %49

49:                                               ; preds = %48, %31
  br label %172

50:                                               ; preds = %24
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %52 = bitcast %union.acpi_operand_object* %51 to %struct.TYPE_15__*
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @ACPI_TYPE_LOCAL_REGION_FIELD, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %171

57:                                               ; preds = %50
  %58 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %59 = bitcast %union.acpi_operand_object* %58 to %struct.TYPE_11__*
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @ACPI_ADR_SPACE_SMBUS, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %77, label %67

67:                                               ; preds = %57
  %68 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %69 = bitcast %union.acpi_operand_object* %68 to %struct.TYPE_11__*
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @ACPI_ADR_SPACE_IPMI, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %171

77:                                               ; preds = %67, %57
  %78 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %79 = bitcast %union.acpi_operand_object* %78 to %struct.TYPE_15__*
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 130
  br i1 %82, label %83, label %90

83:                                               ; preds = %77
  %84 = load i32, i32* @AE_INFO, align 4
  %85 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %86 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %85)
  %87 = call i32 @ACPI_ERROR(i32 %86)
  %88 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %89 = call i32 @return_ACPI_STATUS(i32 %88)
  br label %90

90:                                               ; preds = %83, %77
  %91 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %92 = bitcast %union.acpi_operand_object* %91 to %struct.TYPE_11__*
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @ACPI_ADR_SPACE_SMBUS, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %90
  %101 = load i64, i64* @ACPI_SMBUS_BUFFER_SIZE, align 8
  store i64 %101, i64* %9, align 8
  %102 = load i32, i32* @ACPI_WRITE, align 4
  %103 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %104 = bitcast %union.acpi_operand_object* %103 to %struct.TYPE_11__*
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = shl i32 %106, 16
  %108 = or i32 %102, %107
  %109 = sext i32 %108 to i64
  store i64 %109, i64* %12, align 8
  br label %114

110:                                              ; preds = %90
  %111 = load i64, i64* @ACPI_IPMI_BUFFER_SIZE, align 8
  store i64 %111, i64* %9, align 8
  %112 = load i32, i32* @ACPI_WRITE, align 4
  %113 = sext i32 %112 to i64
  store i64 %113, i64* %12, align 8
  br label %114

114:                                              ; preds = %110, %100
  %115 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %116 = bitcast %union.acpi_operand_object* %115 to %struct.TYPE_13__*
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %9, align 8
  %120 = icmp slt i64 %118, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %114
  %122 = load i32, i32* @AE_INFO, align 4
  %123 = load i64, i64* %9, align 8
  %124 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %125 = bitcast %union.acpi_operand_object* %124 to %struct.TYPE_13__*
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  %129 = call i32 @ACPI_ERROR(i32 %128)
  %130 = load i32, i32* @AE_AML_BUFFER_LIMIT, align 4
  %131 = call i32 @return_ACPI_STATUS(i32 %130)
  br label %132

132:                                              ; preds = %121, %114
  %133 = load i64, i64* %9, align 8
  %134 = call %union.acpi_operand_object* @acpi_ut_create_buffer_object(i64 %133)
  store %union.acpi_operand_object* %134, %union.acpi_operand_object** %11, align 8
  %135 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %136 = icmp ne %union.acpi_operand_object* %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %132
  %138 = load i32, i32* @AE_NO_MEMORY, align 4
  %139 = call i32 @return_ACPI_STATUS(i32 %138)
  br label %140

140:                                              ; preds = %137, %132
  %141 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %142 = bitcast %union.acpi_operand_object* %141 to %struct.TYPE_13__*
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  store i8* %144, i8** %10, align 8
  %145 = load i8*, i8** %10, align 8
  %146 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %147 = bitcast %union.acpi_operand_object* %146 to %struct.TYPE_13__*
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = load i64, i64* %9, align 8
  %151 = call i32 @ACPI_MEMCPY(i8* %145, i8* %149, i64 %150)
  %152 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %153 = bitcast %union.acpi_operand_object* %152 to %struct.TYPE_16__*
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @acpi_ex_acquire_global_lock(i32 %155)
  %157 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %158 = load i8*, i8** %10, align 8
  %159 = bitcast i8* %158 to i32*
  %160 = load i64, i64* %12, align 8
  %161 = call i32 @acpi_ex_access_region(%union.acpi_operand_object* %157, i32 0, i32* %159, i64 %160)
  store i32 %161, i32* %8, align 4
  %162 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %163 = bitcast %union.acpi_operand_object* %162 to %struct.TYPE_16__*
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @acpi_ex_release_global_lock(i32 %165)
  %167 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %168 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %7, align 8
  store %union.acpi_operand_object* %167, %union.acpi_operand_object** %168, align 8
  %169 = load i32, i32* %8, align 4
  %170 = call i32 @return_ACPI_STATUS(i32 %169)
  br label %171

171:                                              ; preds = %140, %67, %50
  br label %172

172:                                              ; preds = %171, %49
  %173 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %174 = bitcast %union.acpi_operand_object* %173 to %struct.TYPE_15__*
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  switch i32 %176, label %200 [
    i32 129, label %177
    i32 130, label %182
    i32 128, label %191
  ]

177:                                              ; preds = %172
  %178 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %179 = bitcast %union.acpi_operand_object* %178 to %struct.TYPE_12__*
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = bitcast i32* %180 to i8*
  store i8* %181, i8** %10, align 8
  store i64 4, i64* %9, align 8
  br label %203

182:                                              ; preds = %172
  %183 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %184 = bitcast %union.acpi_operand_object* %183 to %struct.TYPE_13__*
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 1
  %186 = load i8*, i8** %185, align 8
  store i8* %186, i8** %10, align 8
  %187 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %188 = bitcast %union.acpi_operand_object* %187 to %struct.TYPE_13__*
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  store i64 %190, i64* %9, align 8
  br label %203

191:                                              ; preds = %172
  %192 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %193 = bitcast %union.acpi_operand_object* %192 to %struct.TYPE_14__*
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 1
  %195 = load i8*, i8** %194, align 8
  store i8* %195, i8** %10, align 8
  %196 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %197 = bitcast %union.acpi_operand_object* %196 to %struct.TYPE_14__*
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  store i64 %199, i64* %9, align 8
  br label %203

200:                                              ; preds = %172
  %201 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %202 = call i32 @return_ACPI_STATUS(i32 %201)
  br label %203

203:                                              ; preds = %200, %191, %182, %177
  %204 = load i32, i32* @ACPI_DB_BFIELD, align 4
  %205 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %206 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %207 = bitcast %union.acpi_operand_object* %206 to %struct.TYPE_15__*
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @acpi_ut_get_type_name(i32 %209)
  %211 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %212 = bitcast %union.acpi_operand_object* %211 to %struct.TYPE_15__*
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i8*, i8** %10, align 8
  %216 = load i64, i64* %9, align 8
  %217 = trunc i64 %216 to i32
  %218 = call i32 @ACPI_DEBUG_PRINT(i32 %217)
  %219 = load i32, i32* @ACPI_DB_BFIELD, align 4
  %220 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %221 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %222 = bitcast %union.acpi_operand_object* %221 to %struct.TYPE_15__*
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @acpi_ut_get_type_name(i32 %224)
  %226 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %227 = bitcast %union.acpi_operand_object* %226 to %struct.TYPE_15__*
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %231 = bitcast %union.acpi_operand_object* %230 to %struct.TYPE_16__*
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %235 = bitcast %union.acpi_operand_object* %234 to %struct.TYPE_16__*
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %239 = bitcast %union.acpi_operand_object* %238 to %struct.TYPE_16__*
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @ACPI_DEBUG_PRINT(i32 %241)
  %243 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %244 = bitcast %union.acpi_operand_object* %243 to %struct.TYPE_16__*
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = call i32 @acpi_ex_acquire_global_lock(i32 %246)
  %248 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %249 = load i8*, i8** %10, align 8
  %250 = load i64, i64* %9, align 8
  %251 = call i32 @acpi_ex_insert_into_field(%union.acpi_operand_object* %248, i8* %249, i64 %250)
  store i32 %251, i32* %8, align 4
  %252 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %253 = bitcast %union.acpi_operand_object* %252 to %struct.TYPE_16__*
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @acpi_ex_release_global_lock(i32 %255)
  %257 = load i32, i32* %8, align 4
  %258 = call i32 @return_ACPI_STATUS(i32 %257)
  %259 = load i32, i32* %4, align 4
  ret i32 %259
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_operand_object*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ds_get_buffer_field_arguments(%union.acpi_operand_object*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object*) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_buffer_object(i64) #1

declare dso_local i32 @ACPI_MEMCPY(i8*, i8*, i64) #1

declare dso_local i32 @acpi_ex_acquire_global_lock(i32) #1

declare dso_local i32 @acpi_ex_access_region(%union.acpi_operand_object*, i32, i32*, i64) #1

declare dso_local i32 @acpi_ex_release_global_lock(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_get_type_name(i32) #1

declare dso_local i32 @acpi_ex_insert_into_field(%union.acpi_operand_object*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

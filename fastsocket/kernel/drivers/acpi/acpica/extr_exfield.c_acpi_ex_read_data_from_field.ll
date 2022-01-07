; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exfield.c_acpi_ex_read_data_from_field.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exfield.c_acpi_ex_read_data_from_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { i32 }
%union.acpi_operand_object = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_12__ = type { i64 }

@ex_read_data_from_field = common dso_local global i32 0, align 4
@AE_AML_NO_OPERAND = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER_FIELD = common dso_local global i64 0, align 8
@AOPOBJ_DATA_VALID = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_REGION_FIELD = common dso_local global i64 0, align 8
@ACPI_ADR_SPACE_SMBUS = common dso_local global i64 0, align 8
@ACPI_ADR_SPACE_IPMI = common dso_local global i64 0, align 8
@ACPI_SMBUS_BUFFER_SIZE = common dso_local global i64 0, align 8
@ACPI_READ = common dso_local global i32 0, align 4
@ACPI_IPMI_BUFFER_SIZE = common dso_local global i64 0, align 8
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@acpi_integer = common dso_local global i32 0, align 4
@acpi_gbl_integer_byte_width = common dso_local global i64 0, align 8
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@ACPI_DB_BFIELD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"FieldRead [TO]:   Obj %p, Type %X, Buf %p, ByteLen %X\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"FieldRead [FROM]: BitLen %X, BitOff %X, ByteOff %X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_read_data_from_field(%struct.acpi_walk_state* %0, %union.acpi_operand_object* %1, %union.acpi_operand_object** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_walk_state*, align 8
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca %union.acpi_operand_object**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.acpi_operand_object*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %5, align 8
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %6, align 8
  store %union.acpi_operand_object** %2, %union.acpi_operand_object*** %7, align 8
  %13 = load i32, i32* @ex_read_data_from_field, align 4
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %15 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %13, %union.acpi_operand_object* %14)
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %17 = icmp ne %union.acpi_operand_object* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @AE_AML_NO_OPERAND, align 4
  %20 = call i32 @return_ACPI_STATUS(i32 %19)
  br label %21

21:                                               ; preds = %18, %3
  %22 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %7, align 8
  %23 = icmp ne %union.acpi_operand_object** %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %26 = call i32 @return_ACPI_STATUS(i32 %25)
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %29 = bitcast %union.acpi_operand_object* %28 to %struct.TYPE_13__*
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ACPI_TYPE_BUFFER_FIELD, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %27
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %36 = bitcast %union.acpi_operand_object* %35 to %struct.TYPE_13__*
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @AOPOBJ_DATA_VALID, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %34
  %43 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %44 = call i32 @acpi_ds_get_buffer_field_arguments(%union.acpi_operand_object* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @ACPI_FAILURE(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @return_ACPI_STATUS(i32 %49)
  br label %51

51:                                               ; preds = %48, %42
  br label %52

52:                                               ; preds = %51, %34
  br label %131

53:                                               ; preds = %27
  %54 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %55 = bitcast %union.acpi_operand_object* %54 to %struct.TYPE_13__*
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ACPI_TYPE_LOCAL_REGION_FIELD, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %130

60:                                               ; preds = %53
  %61 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %62 = bitcast %union.acpi_operand_object* %61 to %struct.TYPE_10__*
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @ACPI_ADR_SPACE_SMBUS, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %80, label %70

70:                                               ; preds = %60
  %71 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %72 = bitcast %union.acpi_operand_object* %71 to %struct.TYPE_10__*
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @ACPI_ADR_SPACE_IPMI, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %130

80:                                               ; preds = %70, %60
  %81 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %82 = bitcast %union.acpi_operand_object* %81 to %struct.TYPE_10__*
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ACPI_ADR_SPACE_SMBUS, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %80
  %91 = load i64, i64* @ACPI_SMBUS_BUFFER_SIZE, align 8
  store i64 %91, i64* %10, align 8
  %92 = load i32, i32* @ACPI_READ, align 4
  %93 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %94 = bitcast %union.acpi_operand_object* %93 to %struct.TYPE_10__*
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = shl i32 %96, 16
  %98 = or i32 %92, %97
  store i32 %98, i32* %12, align 4
  br label %102

99:                                               ; preds = %80
  %100 = load i64, i64* @ACPI_IPMI_BUFFER_SIZE, align 8
  store i64 %100, i64* %10, align 8
  %101 = load i32, i32* @ACPI_READ, align 4
  store i32 %101, i32* %12, align 4
  br label %102

102:                                              ; preds = %99, %90
  %103 = load i64, i64* %10, align 8
  %104 = call %union.acpi_operand_object* @acpi_ut_create_buffer_object(i64 %103)
  store %union.acpi_operand_object* %104, %union.acpi_operand_object** %9, align 8
  %105 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %106 = icmp ne %union.acpi_operand_object* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %102
  %108 = load i32, i32* @AE_NO_MEMORY, align 4
  %109 = call i32 @return_ACPI_STATUS(i32 %108)
  br label %110

110:                                              ; preds = %107, %102
  %111 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %112 = bitcast %union.acpi_operand_object* %111 to %struct.TYPE_14__*
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @acpi_ex_acquire_global_lock(i32 %114)
  %116 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %117 = load i32, i32* @acpi_integer, align 4
  %118 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %119 = bitcast %union.acpi_operand_object* %118 to %struct.TYPE_11__*
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @ACPI_CAST_PTR(i32 %117, i8* %121)
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @acpi_ex_access_region(%union.acpi_operand_object* %116, i32 0, i32 %122, i32 %123)
  store i32 %124, i32* %8, align 4
  %125 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %126 = bitcast %union.acpi_operand_object* %125 to %struct.TYPE_14__*
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @acpi_ex_release_global_lock(i32 %128)
  br label %210

130:                                              ; preds = %70, %53
  br label %131

131:                                              ; preds = %130, %52
  %132 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %133 = bitcast %union.acpi_operand_object* %132 to %struct.TYPE_10__*
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @ACPI_ROUND_BITS_UP_TO_BYTES(i32 %135)
  store i64 %136, i64* %10, align 8
  %137 = load i64, i64* %10, align 8
  %138 = load i64, i64* @acpi_gbl_integer_byte_width, align 8
  %139 = icmp sgt i64 %137, %138
  br i1 %139, label %140, label %153

140:                                              ; preds = %131
  %141 = load i64, i64* %10, align 8
  %142 = call %union.acpi_operand_object* @acpi_ut_create_buffer_object(i64 %141)
  store %union.acpi_operand_object* %142, %union.acpi_operand_object** %9, align 8
  %143 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %144 = icmp ne %union.acpi_operand_object* %143, null
  br i1 %144, label %148, label %145

145:                                              ; preds = %140
  %146 = load i32, i32* @AE_NO_MEMORY, align 4
  %147 = call i32 @return_ACPI_STATUS(i32 %146)
  br label %148

148:                                              ; preds = %145, %140
  %149 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %150 = bitcast %union.acpi_operand_object* %149 to %struct.TYPE_11__*
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  store i8* %152, i8** %11, align 8
  br label %170

153:                                              ; preds = %131
  %154 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %155 = call %union.acpi_operand_object* @acpi_ut_create_internal_object(i32 %154)
  store %union.acpi_operand_object* %155, %union.acpi_operand_object** %9, align 8
  %156 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %157 = icmp ne %union.acpi_operand_object* %156, null
  br i1 %157, label %161, label %158

158:                                              ; preds = %153
  %159 = load i32, i32* @AE_NO_MEMORY, align 4
  %160 = call i32 @return_ACPI_STATUS(i32 %159)
  br label %161

161:                                              ; preds = %158, %153
  %162 = load i64, i64* @acpi_gbl_integer_byte_width, align 8
  store i64 %162, i64* %10, align 8
  %163 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %164 = bitcast %union.acpi_operand_object* %163 to %struct.TYPE_12__*
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  store i64 0, i64* %165, align 8
  %166 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %167 = bitcast %union.acpi_operand_object* %166 to %struct.TYPE_12__*
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = bitcast i64* %168 to i8*
  store i8* %169, i8** %11, align 8
  br label %170

170:                                              ; preds = %161, %148
  %171 = load i32, i32* @ACPI_DB_BFIELD, align 4
  %172 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %173 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %174 = bitcast %union.acpi_operand_object* %173 to %struct.TYPE_13__*
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i8*, i8** %11, align 8
  %178 = load i64, i64* %10, align 8
  %179 = trunc i64 %178 to i32
  %180 = call i32 @ACPI_DEBUG_PRINT(i32 %179)
  %181 = load i32, i32* @ACPI_DB_BFIELD, align 4
  %182 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %183 = bitcast %union.acpi_operand_object* %182 to %struct.TYPE_14__*
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %187 = bitcast %union.acpi_operand_object* %186 to %struct.TYPE_14__*
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %191 = bitcast %union.acpi_operand_object* %190 to %struct.TYPE_14__*
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @ACPI_DEBUG_PRINT(i32 %193)
  %195 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %196 = bitcast %union.acpi_operand_object* %195 to %struct.TYPE_14__*
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @acpi_ex_acquire_global_lock(i32 %198)
  %200 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %201 = load i8*, i8** %11, align 8
  %202 = load i64, i64* %10, align 8
  %203 = trunc i64 %202 to i32
  %204 = call i32 @acpi_ex_extract_from_field(%union.acpi_operand_object* %200, i8* %201, i32 %203)
  store i32 %204, i32* %8, align 4
  %205 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %206 = bitcast %union.acpi_operand_object* %205 to %struct.TYPE_14__*
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @acpi_ex_release_global_lock(i32 %208)
  br label %210

210:                                              ; preds = %170, %110
  %211 = load i32, i32* %8, align 4
  %212 = call i64 @ACPI_FAILURE(i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %210
  %215 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %216 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %215)
  br label %220

217:                                              ; preds = %210
  %218 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %219 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %7, align 8
  store %union.acpi_operand_object* %218, %union.acpi_operand_object** %219, align 8
  br label %220

220:                                              ; preds = %217, %214
  %221 = load i32, i32* %8, align 4
  %222 = call i32 @return_ACPI_STATUS(i32 %221)
  %223 = load i32, i32* %4, align 4
  ret i32 %223
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_operand_object*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ds_get_buffer_field_arguments(%union.acpi_operand_object*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_buffer_object(i64) #1

declare dso_local i32 @acpi_ex_acquire_global_lock(i32) #1

declare dso_local i32 @acpi_ex_access_region(%union.acpi_operand_object*, i32, i32, i32) #1

declare dso_local i32 @ACPI_CAST_PTR(i32, i8*) #1

declare dso_local i32 @acpi_ex_release_global_lock(i32) #1

declare dso_local i64 @ACPI_ROUND_BITS_UP_TO_BYTES(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ex_extract_from_field(%union.acpi_operand_object*, i8*, i32) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

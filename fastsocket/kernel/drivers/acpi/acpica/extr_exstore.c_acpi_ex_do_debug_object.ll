; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exstore.c_acpi_ex_do_debug_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exstore.c_acpi_ex_do_debug_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %union.acpi_operand_object*, %union.acpi_operand_object*, i32, i32 }
%struct.acpi_namespace_node = type { %union.acpi_operand_object*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64, %union.acpi_operand_object** }
%struct.TYPE_13__ = type { i32 }

@ex_do_debug_object = common dso_local global i32 0, align 4
@ACPI_DB_DEBUG_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"[ACPI Debug] %*s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"(%.2u) \00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"[Null Object]\0A\00", align 1
@return_VOID = common dso_local global i32 0, align 4
@ACPI_DESC_TYPE_OPERAND = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"%p, Invalid Internal Object!\0A\00", align 1
@ACPI_DESC_TYPE_NAMED = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"%s: %p\0A\00", align 1
@acpi_gbl_integer_byte_width = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"0x%8.8X\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"0x%8.8X%8.8X\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"[0x%.2X]\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"[0x%.2X] \22%s\22\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"[Contains 0x%.2X Elements]\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"[%s] \00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"0x%X\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"Table Index 0x%X\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c" %p - Not a valid namespace node\0A\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"Node %p [%4.4s] \00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"Device\0A\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"Thermal Zone\0A\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.acpi_operand_object*, i64, i64)* @acpi_ex_do_debug_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_ex_do_debug_object(%union.acpi_operand_object* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %union.acpi_operand_object*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* @ex_do_debug_object, align 4
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %10 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %8, %union.acpi_operand_object* %9)
  %11 = load i64, i64* %5, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13, %3
  %17 = load i32, i32* @ACPI_DB_DEBUG_OBJECT, align 4
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 ptrtoint ([2 x i8]* @.str.1 to i32))
  br label %20

20:                                               ; preds = %16, %13
  %21 = load i64, i64* %6, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32, i32* @ACPI_DB_DEBUG_OBJECT, align 4
  %25 = load i64, i64* %6, align 8
  %26 = sub nsw i64 %25, 1
  %27 = trunc i64 %26 to i32
  %28 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %27)
  br label %29

29:                                               ; preds = %23, %20
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %31 = icmp ne %union.acpi_operand_object* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @ACPI_DB_DEBUG_OBJECT, align 4
  %34 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 ptrtoint ([15 x i8]* @.str.3 to i32))
  %35 = load i32, i32* @return_VOID, align 4
  br label %36

36:                                               ; preds = %32, %29
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %38 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object* %37)
  %39 = load i64, i64* @ACPI_DESC_TYPE_OPERAND, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %36
  %42 = load i32, i32* @ACPI_DB_DEBUG_OBJECT, align 4
  %43 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %44 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %43)
  %45 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %44)
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %47 = call i32 @acpi_ut_valid_internal_object(%union.acpi_operand_object* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %41
  %50 = load i32, i32* @ACPI_DB_DEBUG_OBJECT, align 4
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %52 = ptrtoint %union.acpi_operand_object* %51 to i32
  %53 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %52)
  %54 = load i32, i32* @return_VOID, align 4
  br label %55

55:                                               ; preds = %49, %41
  br label %75

56:                                               ; preds = %36
  %57 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %58 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object* %57)
  %59 = load i64, i64* @ACPI_DESC_TYPE_NAMED, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %56
  %62 = load i32, i32* @ACPI_DB_DEBUG_OBJECT, align 4
  %63 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %64 = bitcast %union.acpi_operand_object* %63 to %struct.acpi_namespace_node*
  %65 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @acpi_ut_get_type_name(i32 %66)
  %68 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %69 = ptrtoint %union.acpi_operand_object* %68 to i32
  %70 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %69)
  %71 = load i32, i32* @return_VOID, align 4
  br label %74

72:                                               ; preds = %56
  %73 = load i32, i32* @return_VOID, align 4
  br label %74

74:                                               ; preds = %72, %61
  br label %75

75:                                               ; preds = %74, %55
  %76 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %77 = bitcast %union.acpi_operand_object* %76 to %struct.TYPE_8__*
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  switch i32 %79, label %287 [
    i32 132, label %80
    i32 134, label %101
    i32 129, label %128
    i32 130, label %139
    i32 131, label %170
  ]

80:                                               ; preds = %75
  %81 = load i32, i32* @acpi_gbl_integer_byte_width, align 4
  %82 = icmp eq i32 %81, 4
  br i1 %82, label %83, label %92

83:                                               ; preds = %80
  %84 = load i32, i32* @ACPI_DB_DEBUG_OBJECT, align 4
  %85 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %86 = bitcast %union.acpi_operand_object* %85 to %struct.TYPE_9__*
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = trunc i64 %89 to i32
  %91 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %90)
  br label %100

92:                                               ; preds = %80
  %93 = load i32, i32* @ACPI_DB_DEBUG_OBJECT, align 4
  %94 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %95 = bitcast %union.acpi_operand_object* %94 to %struct.TYPE_9__*
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @ACPI_FORMAT_UINT64(i32 %97)
  %99 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %98)
  br label %100

100:                                              ; preds = %92, %83
  br label %292

101:                                              ; preds = %75
  %102 = load i32, i32* @ACPI_DB_DEBUG_OBJECT, align 4
  %103 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %104 = bitcast %union.acpi_operand_object* %103 to %struct.TYPE_10__*
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = trunc i64 %107 to i32
  %109 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %108)
  %110 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %111 = bitcast %union.acpi_operand_object* %110 to %struct.TYPE_10__*
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %115 = bitcast %union.acpi_operand_object* %114 to %struct.TYPE_10__*
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp slt i32 %117, 256
  br i1 %118, label %119, label %124

119:                                              ; preds = %101
  %120 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %121 = bitcast %union.acpi_operand_object* %120 to %struct.TYPE_10__*
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  br label %125

124:                                              ; preds = %101
  br label %125

125:                                              ; preds = %124, %119
  %126 = phi i32 [ %123, %119 ], [ 256, %124 ]
  %127 = call i32 @ACPI_DUMP_BUFFER(i32 %113, i32 %126)
  br label %292

128:                                              ; preds = %75
  %129 = load i32, i32* @ACPI_DB_DEBUG_OBJECT, align 4
  %130 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %131 = bitcast %union.acpi_operand_object* %130 to %struct.TYPE_11__*
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %135 = bitcast %union.acpi_operand_object* %134 to %struct.TYPE_11__*
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %137)
  br label %292

139:                                              ; preds = %75
  %140 = load i32, i32* @ACPI_DB_DEBUG_OBJECT, align 4
  %141 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %142 = bitcast %union.acpi_operand_object* %141 to %struct.TYPE_12__*
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = trunc i64 %144 to i32
  %146 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %145)
  store i64 0, i64* %7, align 8
  br label %147

147:                                              ; preds = %166, %139
  %148 = load i64, i64* %7, align 8
  %149 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %150 = bitcast %union.acpi_operand_object* %149 to %struct.TYPE_12__*
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp slt i64 %148, %152
  br i1 %153, label %154, label %169

154:                                              ; preds = %147
  %155 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %156 = bitcast %union.acpi_operand_object* %155 to %struct.TYPE_12__*
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 1
  %158 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %157, align 8
  %159 = load i64, i64* %7, align 8
  %160 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %158, i64 %159
  %161 = load %union.acpi_operand_object*, %union.acpi_operand_object** %160, align 8
  %162 = load i64, i64* %5, align 8
  %163 = add nsw i64 %162, 4
  %164 = load i64, i64* %7, align 8
  %165 = add nsw i64 %164, 1
  call void @acpi_ex_do_debug_object(%union.acpi_operand_object* %161, i64 %163, i64 %165)
  br label %166

166:                                              ; preds = %154
  %167 = load i64, i64* %7, align 8
  %168 = add nsw i64 %167, 1
  store i64 %168, i64* %7, align 8
  br label %147

169:                                              ; preds = %147
  br label %292

170:                                              ; preds = %75
  %171 = load i32, i32* @ACPI_DB_DEBUG_OBJECT, align 4
  %172 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %173 = call i32 @acpi_ut_get_reference_name(%union.acpi_operand_object* %172)
  %174 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %173)
  %175 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %176 = bitcast %union.acpi_operand_object* %175 to %struct.TYPE_14__*
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  switch i32 %178, label %193 [
    i32 136, label %179
    i32 135, label %186
  ]

179:                                              ; preds = %170
  %180 = load i32, i32* @ACPI_DB_DEBUG_OBJECT, align 4
  %181 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %182 = bitcast %union.acpi_operand_object* %181 to %struct.TYPE_14__*
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %184)
  br label %194

186:                                              ; preds = %170
  %187 = load i32, i32* @ACPI_DB_DEBUG_OBJECT, align 4
  %188 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %189 = bitcast %union.acpi_operand_object* %188 to %struct.TYPE_14__*
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %191)
  br label %296

193:                                              ; preds = %170
  br label %194

194:                                              ; preds = %193, %179
  %195 = load i32, i32* @ACPI_DB_DEBUG_OBJECT, align 4
  %196 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 ptrtoint ([3 x i8]* @.str.15 to i32))
  %197 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %198 = bitcast %union.acpi_operand_object* %197 to %struct.TYPE_14__*
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 1
  %200 = load %union.acpi_operand_object*, %union.acpi_operand_object** %199, align 8
  %201 = icmp ne %union.acpi_operand_object* %200, null
  br i1 %201, label %202, label %253

202:                                              ; preds = %194
  %203 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %204 = bitcast %union.acpi_operand_object* %203 to %struct.TYPE_14__*
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 1
  %206 = load %union.acpi_operand_object*, %union.acpi_operand_object** %205, align 8
  %207 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object* %206)
  %208 = load i64, i64* @ACPI_DESC_TYPE_NAMED, align 8
  %209 = icmp ne i64 %207, %208
  br i1 %209, label %210, label %218

210:                                              ; preds = %202
  %211 = load i32, i32* @ACPI_DB_DEBUG_OBJECT, align 4
  %212 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %213 = bitcast %union.acpi_operand_object* %212 to %struct.TYPE_14__*
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 1
  %215 = load %union.acpi_operand_object*, %union.acpi_operand_object** %214, align 8
  %216 = ptrtoint %union.acpi_operand_object* %215 to i32
  %217 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %216)
  br label %252

218:                                              ; preds = %202
  %219 = load i32, i32* @ACPI_DB_DEBUG_OBJECT, align 4
  %220 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %221 = bitcast %union.acpi_operand_object* %220 to %struct.TYPE_14__*
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 1
  %223 = load %union.acpi_operand_object*, %union.acpi_operand_object** %222, align 8
  %224 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %225 = bitcast %union.acpi_operand_object* %224 to %struct.TYPE_14__*
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 1
  %227 = load %union.acpi_operand_object*, %union.acpi_operand_object** %226, align 8
  %228 = bitcast %union.acpi_operand_object* %227 to %struct.TYPE_13__*
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %230)
  %232 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %233 = bitcast %union.acpi_operand_object* %232 to %struct.TYPE_14__*
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 1
  %235 = load %union.acpi_operand_object*, %union.acpi_operand_object** %234, align 8
  %236 = bitcast %union.acpi_operand_object* %235 to i32*
  %237 = load i32, i32* %236, align 8
  switch i32 %237, label %242 [
    i32 133, label %238
    i32 128, label %240
  ]

238:                                              ; preds = %218
  %239 = call i32 @acpi_os_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  br label %251

240:                                              ; preds = %218
  %241 = call i32 @acpi_os_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0))
  br label %251

242:                                              ; preds = %218
  %243 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %244 = bitcast %union.acpi_operand_object* %243 to %struct.TYPE_14__*
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 1
  %246 = load %union.acpi_operand_object*, %union.acpi_operand_object** %245, align 8
  %247 = bitcast %union.acpi_operand_object* %246 to %union.acpi_operand_object**
  %248 = load %union.acpi_operand_object*, %union.acpi_operand_object** %247, align 8
  %249 = load i64, i64* %5, align 8
  %250 = add nsw i64 %249, 4
  call void @acpi_ex_do_debug_object(%union.acpi_operand_object* %248, i64 %250, i64 0)
  br label %251

251:                                              ; preds = %242, %240, %238
  br label %252

252:                                              ; preds = %251, %210
  br label %286

253:                                              ; preds = %194
  %254 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %255 = bitcast %union.acpi_operand_object* %254 to %struct.TYPE_14__*
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 0
  %257 = load %union.acpi_operand_object*, %union.acpi_operand_object** %256, align 8
  %258 = icmp ne %union.acpi_operand_object* %257, null
  br i1 %258, label %259, label %285

259:                                              ; preds = %253
  %260 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %261 = bitcast %union.acpi_operand_object* %260 to %struct.TYPE_14__*
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 0
  %263 = load %union.acpi_operand_object*, %union.acpi_operand_object** %262, align 8
  %264 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object* %263)
  %265 = load i64, i64* @ACPI_DESC_TYPE_NAMED, align 8
  %266 = icmp eq i64 %264, %265
  br i1 %266, label %267, label %277

267:                                              ; preds = %259
  %268 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %269 = bitcast %union.acpi_operand_object* %268 to %struct.TYPE_14__*
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 0
  %271 = load %union.acpi_operand_object*, %union.acpi_operand_object** %270, align 8
  %272 = bitcast %union.acpi_operand_object* %271 to %struct.acpi_namespace_node*
  %273 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %272, i32 0, i32 0
  %274 = load %union.acpi_operand_object*, %union.acpi_operand_object** %273, align 8
  %275 = load i64, i64* %5, align 8
  %276 = add nsw i64 %275, 4
  call void @acpi_ex_do_debug_object(%union.acpi_operand_object* %274, i64 %276, i64 0)
  br label %284

277:                                              ; preds = %259
  %278 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %279 = bitcast %union.acpi_operand_object* %278 to %struct.TYPE_14__*
  %280 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %279, i32 0, i32 0
  %281 = load %union.acpi_operand_object*, %union.acpi_operand_object** %280, align 8
  %282 = load i64, i64* %5, align 8
  %283 = add nsw i64 %282, 4
  call void @acpi_ex_do_debug_object(%union.acpi_operand_object* %281, i64 %283, i64 0)
  br label %284

284:                                              ; preds = %277, %267
  br label %285

285:                                              ; preds = %284, %253
  br label %286

286:                                              ; preds = %285, %252
  br label %292

287:                                              ; preds = %75
  %288 = load i32, i32* @ACPI_DB_DEBUG_OBJECT, align 4
  %289 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %290 = ptrtoint %union.acpi_operand_object* %289 to i32
  %291 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %290)
  br label %292

292:                                              ; preds = %287, %286, %169, %128, %125, %100
  %293 = load i32, i32* @ACPI_DB_EXEC, align 4
  %294 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 ptrtoint ([2 x i8]* @.str.21 to i32))
  %295 = load i32, i32* @return_VOID, align 4
  br label %296

296:                                              ; preds = %292, %186
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT_RAW(i32) #1

declare dso_local i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ut_valid_internal_object(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ut_get_type_name(i32) #1

declare dso_local i32 @ACPI_FORMAT_UINT64(i32) #1

declare dso_local i32 @ACPI_DUMP_BUFFER(i32, i32) #1

declare dso_local i32 @acpi_ut_get_reference_name(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_os_printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_bus.c_acpi_run_osc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_bus.c_acpi_run_osc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_osc_context = type { i32, %struct.TYPE_8__, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_6__ = type { i32, i32* }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%union.acpi_object = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32* }
%struct.acpi_buffer = type { i32, %union.acpi_object*, i32, i32* }
%struct.TYPE_5__ = type { i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@AE_ERROR = common dso_local global i64 0, align 8
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@ACPI_TYPE_INTEGER = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"_OSC\00", align 1
@AE_NULL_OBJECT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"_OSC evaluation returned wrong type\00", align 1
@AE_TYPE = common dso_local global i64 0, align 8
@OSC_REQUEST_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"_OSC request failed\00", align 1
@OSC_INVALID_UUID_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"_OSC invalid UUID\00", align 1
@OSC_INVALID_REVISION_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"_OSC invalid revision\00", align 1
@OSC_CAPABILITIES_MASK_ERROR = common dso_local global i32 0, align 4
@OSC_QUERY_TYPE = common dso_local global i64 0, align 8
@OSC_QUERY_ENABLE = common dso_local global i32 0, align 4
@AE_SUPPORT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @acpi_run_osc(i32 %0, %struct.acpi_osc_context* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_osc_context*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.acpi_object_list, align 8
  %8 = alloca [4 x %union.acpi_object], align 16
  %9 = alloca %union.acpi_object*, align 8
  %10 = alloca [16 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca %struct.acpi_buffer, align 8
  store i32 %0, i32* %4, align 4
  store %struct.acpi_osc_context* %1, %struct.acpi_osc_context** %5, align 8
  %13 = bitcast %struct.acpi_buffer* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 32, i1 false)
  %14 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %12, i32 0, i32 0
  %15 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  store i32 %15, i32* %14, align 8
  %16 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %5, align 8
  %17 = icmp ne %struct.acpi_osc_context* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i64, i64* @AE_ERROR, align 8
  store i64 %19, i64* %3, align 8
  br label %238

20:                                               ; preds = %2
  %21 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %5, align 8
  %22 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %25 = call i64 @acpi_str_to_uuid(i32 %23, i32* %24)
  %26 = call i64 @ACPI_FAILURE(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i64, i64* @AE_ERROR, align 8
  store i64 %29, i64* %3, align 8
  br label %238

30:                                               ; preds = %20
  %31 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %32 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %5, align 8
  %33 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %5, align 8
  %36 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  %38 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %7, i32 0, i32 0
  store i32 4, i32* %38, align 8
  %39 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %8, i64 0, i64 0
  %40 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %7, i32 0, i32 1
  store %union.acpi_object* %39, %union.acpi_object** %40, align 8
  %41 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %42 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %8, i64 0, i64 0
  %43 = bitcast %union.acpi_object* %42 to i64*
  store i64 %41, i64* %43, align 16
  %44 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %8, i64 0, i64 0
  %45 = bitcast %union.acpi_object* %44 to %struct.TYPE_7__*
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store i32 16, i32* %46, align 16
  %47 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %48 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %8, i64 0, i64 0
  %49 = bitcast %union.acpi_object* %48 to %struct.TYPE_7__*
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  store i32* %47, i32** %50, align 8
  %51 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %52 = ptrtoint i8* %51 to i64
  %53 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %8, i64 0, i64 1
  %54 = bitcast %union.acpi_object* %53 to i64*
  store i64 %52, i64* %54, align 16
  %55 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %5, align 8
  %56 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %8, i64 0, i64 1
  %59 = bitcast %union.acpi_object* %58 to %struct.TYPE_5__*
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 16
  %61 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %62 = ptrtoint i8* %61 to i64
  %63 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %8, i64 0, i64 2
  %64 = bitcast %union.acpi_object* %63 to i64*
  store i64 %62, i64* %64, align 16
  %65 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %5, align 8
  %66 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = udiv i64 %69, 4
  %71 = trunc i64 %70 to i32
  %72 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %8, i64 0, i64 2
  %73 = bitcast %union.acpi_object* %72 to %struct.TYPE_5__*
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 16
  %75 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %76 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %8, i64 0, i64 3
  %77 = bitcast %union.acpi_object* %76 to i64*
  store i64 %75, i64* %77, align 16
  %78 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %5, align 8
  %79 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %8, i64 0, i64 3
  %83 = bitcast %union.acpi_object* %82 to %struct.TYPE_7__*
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 16
  %85 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %5, align 8
  %86 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %8, i64 0, i64 3
  %90 = bitcast %union.acpi_object* %89 to %struct.TYPE_7__*
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  store i32* %88, i32** %91, align 8
  %92 = load i32, i32* %4, align 4
  %93 = call i64 @acpi_evaluate_object(i32 %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.acpi_object_list* %7, %struct.acpi_buffer* %12)
  store i64 %93, i64* %6, align 8
  %94 = load i64, i64* %6, align 8
  %95 = call i64 @ACPI_FAILURE(i64 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %30
  %98 = load i64, i64* %6, align 8
  store i64 %98, i64* %3, align 8
  br label %238

99:                                               ; preds = %30
  %100 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %12, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %99
  %104 = load i64, i64* @AE_NULL_OBJECT, align 8
  store i64 %104, i64* %3, align 8
  br label %238

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %12, i32 0, i32 1
  %107 = load %union.acpi_object*, %union.acpi_object** %106, align 8
  store %union.acpi_object* %107, %union.acpi_object** %9, align 8
  %108 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %109 = bitcast %union.acpi_object* %108 to i64*
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %123, label %113

113:                                              ; preds = %105
  %114 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %115 = bitcast %union.acpi_object* %114 to %struct.TYPE_7__*
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %5, align 8
  %119 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %117, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %113, %105
  %124 = load i32, i32* %4, align 4
  %125 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %5, align 8
  %126 = call i32 @acpi_print_osc_error(i32 %124, %struct.acpi_osc_context* %125, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %127 = load i64, i64* @AE_TYPE, align 8
  store i64 %127, i64* %6, align 8
  br label %225

128:                                              ; preds = %113
  %129 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %130 = bitcast %union.acpi_object* %129 to %struct.TYPE_7__*
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, -2
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %185

137:                                              ; preds = %128
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* @OSC_REQUEST_ERROR, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = load i32, i32* %4, align 4
  %144 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %5, align 8
  %145 = call i32 @acpi_print_osc_error(i32 %143, %struct.acpi_osc_context* %144, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %146

146:                                              ; preds = %142, %137
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* @OSC_INVALID_UUID_ERROR, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %146
  %152 = load i32, i32* %4, align 4
  %153 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %5, align 8
  %154 = call i32 @acpi_print_osc_error(i32 %152, %struct.acpi_osc_context* %153, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %155

155:                                              ; preds = %151, %146
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* @OSC_INVALID_REVISION_ERROR, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %155
  %161 = load i32, i32* %4, align 4
  %162 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %5, align 8
  %163 = call i32 @acpi_print_osc_error(i32 %161, %struct.acpi_osc_context* %162, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %164

164:                                              ; preds = %160, %155
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* @OSC_CAPABILITIES_MASK_ERROR, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %183

169:                                              ; preds = %164
  %170 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %5, align 8
  %171 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = load i64, i64* @OSC_QUERY_TYPE, align 8
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @OSC_QUERY_ENABLE, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %169
  br label %186

181:                                              ; preds = %169
  %182 = load i64, i64* @AE_SUPPORT, align 8
  store i64 %182, i64* %6, align 8
  br label %225

183:                                              ; preds = %164
  %184 = load i64, i64* @AE_ERROR, align 8
  store i64 %184, i64* %6, align 8
  br label %225

185:                                              ; preds = %128
  br label %186

186:                                              ; preds = %185, %180
  %187 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %188 = bitcast %union.acpi_object* %187 to %struct.TYPE_7__*
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %5, align 8
  %192 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  store i32 %190, i32* %193, align 8
  %194 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %5, align 8
  %195 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @GFP_KERNEL, align 4
  %199 = call i32* @kmalloc(i32 %197, i32 %198)
  %200 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %5, align 8
  %201 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 1
  store i32* %199, i32** %202, align 8
  %203 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %5, align 8
  %204 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 1
  %206 = load i32*, i32** %205, align 8
  %207 = icmp ne i32* %206, null
  br i1 %207, label %210, label %208

208:                                              ; preds = %186
  %209 = load i64, i64* @AE_NO_MEMORY, align 8
  store i64 %209, i64* %6, align 8
  br label %225

210:                                              ; preds = %186
  %211 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %5, align 8
  %212 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 1
  %214 = load i32*, i32** %213, align 8
  %215 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %216 = bitcast %union.acpi_object* %215 to %struct.TYPE_7__*
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 1
  %218 = load i32*, i32** %217, align 8
  %219 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %5, align 8
  %220 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @memcpy(i32* %214, i32* %218, i32 %222)
  %224 = load i64, i64* @AE_OK, align 8
  store i64 %224, i64* %6, align 8
  br label %225

225:                                              ; preds = %210, %208, %183, %181, %123
  %226 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %12, i32 0, i32 1
  %227 = load %union.acpi_object*, %union.acpi_object** %226, align 8
  %228 = call i32 @kfree(%union.acpi_object* %227)
  %229 = load i64, i64* %6, align 8
  %230 = load i64, i64* @AE_OK, align 8
  %231 = icmp ne i64 %229, %230
  br i1 %231, label %232, label %236

232:                                              ; preds = %225
  %233 = load %struct.acpi_osc_context*, %struct.acpi_osc_context** %5, align 8
  %234 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 1
  store i32* null, i32** %235, align 8
  br label %236

236:                                              ; preds = %232, %225
  %237 = load i64, i64* %6, align 8
  store i64 %237, i64* %3, align 8
  br label %238

238:                                              ; preds = %236, %103, %97, %28, %18
  %239 = load i64, i64* %3, align 8
  ret i64 %239
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @ACPI_FAILURE(i64) #2

declare dso_local i64 @acpi_str_to_uuid(i32, i32*) #2

declare dso_local i64 @acpi_evaluate_object(i32, i8*, %struct.acpi_object_list*, %struct.acpi_buffer*) #2

declare dso_local i32 @acpi_print_osc_error(i32, %struct.acpi_osc_context*, i8*) #2

declare dso_local i32* @kmalloc(i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @kfree(%union.acpi_object*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

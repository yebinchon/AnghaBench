; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_psloop.c_acpi_ps_get_arguments.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_psloop.c_acpi_ps_get_arguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { i32, %struct.TYPE_16__, %struct.TYPE_15__*, i32, i32, i32, i32, i8* }
%struct.TYPE_16__ = type { i32*, i32*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32* }
%union.acpi_parse_object = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, i8* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.acpi_opcode_info = type { i32 }
%struct.TYPE_13__ = type { i8*, i32* }

@AE_OK = common dso_local global i32 0, align 4
@ps_get_arguments = common dso_local global i32 0, align 4
@ACPI_IMODE_LOAD_PASS2 = common dso_local global i32 0, align 4
@ACPI_PARSE_DISASSEMBLE = common dso_local global i32 0, align 4
@ACPI_IMODE_LOAD_PASS1 = common dso_local global i32 0, align 4
@ACPI_DB_PARSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Pass1: Skipping an If/Else/While body\0A\00", align 1
@AML_SCOPE_OP = common dso_local global i32 0, align 4
@AML_CLASS_EXECUTE = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [91 x i8] c"Detected an unsupported executable opcode at module-level: [0x%.4X] at table offset 0x%.4X\00", align 1
@AML_NAME_OP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_walk_state*, i32*, %union.acpi_parse_object*)* @acpi_ps_get_arguments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ps_get_arguments(%struct.acpi_walk_state* %0, i32* %1, %union.acpi_parse_object* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_walk_state*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %union.acpi_parse_object*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.acpi_parse_object*, align 8
  %10 = alloca %struct.acpi_opcode_info*, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %5, align 8
  store i32* %1, i32** %6, align 8
  store %union.acpi_parse_object* %2, %union.acpi_parse_object** %7, align 8
  %11 = load i32, i32* @AE_OK, align 4
  store i32 %11, i32* %8, align 4
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %9, align 8
  %12 = load i32, i32* @ps_get_arguments, align 4
  %13 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %14 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %12, %struct.acpi_walk_state* %13)
  %15 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %16 = bitcast %union.acpi_parse_object* %15 to %struct.TYPE_12__*
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %43 [
    i32 139, label %19
    i32 128, label %19
    i32 138, label %19
    i32 132, label %19
    i32 131, label %19
    i32 135, label %28
  ]

19:                                               ; preds = %3, %3, %3, %3, %3
  %20 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %21 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %20, i32 0, i32 1
  %22 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %23 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @GET_CURRENT_ARG_TYPE(i32 %24)
  %26 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %27 = call i32 @acpi_ps_get_next_simple_arg(%struct.TYPE_16__* %21, i32 %25, %union.acpi_parse_object* %26)
  br label %313

28:                                               ; preds = %3
  %29 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %30 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %31 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %30, i32 0, i32 1
  %32 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %33 = call i32 @acpi_ps_get_next_namepath(%struct.acpi_walk_state* %29, %struct.TYPE_16__* %31, %union.acpi_parse_object* %32, i32 1)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @ACPI_FAILURE(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @return_ACPI_STATUS(i32 %38)
  br label %40

40:                                               ; preds = %37, %28
  %41 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %42 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %41, i32 0, i32 6
  store i32 0, i32* %42, align 4
  br label %313

43:                                               ; preds = %3
  br label %44

44:                                               ; preds = %99, %43
  %45 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %46 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @GET_CURRENT_ARG_TYPE(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %52 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  br label %56

56:                                               ; preds = %50, %44
  %57 = phi i1 [ false, %44 ], [ %55, %50 ]
  br i1 %57, label %58, label %104

58:                                               ; preds = %56
  %59 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %60 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %64 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ACPI_PTR_DIFF(i32* %62, i32 %66)
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %71 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %70, i32 0, i32 7
  store i8* %69, i8** %71, align 8
  %72 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %73 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %74 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %73, i32 0, i32 1
  %75 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %76 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @GET_CURRENT_ARG_TYPE(i32 %77)
  %79 = call i32 @acpi_ps_get_next_arg(%struct.acpi_walk_state* %72, %struct.TYPE_16__* %74, i32 %78, %union.acpi_parse_object** %9)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @ACPI_FAILURE(i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %58
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @return_ACPI_STATUS(i32 %84)
  br label %86

86:                                               ; preds = %83, %58
  %87 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %88 = icmp ne %union.acpi_parse_object* %87, null
  br i1 %88, label %89, label %99

89:                                               ; preds = %86
  %90 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %91 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %90, i32 0, i32 7
  %92 = load i8*, i8** %91, align 8
  %93 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %94 = bitcast %union.acpi_parse_object* %93 to %struct.TYPE_12__*
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 2
  store i8* %92, i8** %95, align 8
  %96 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %97 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %98 = call i32 @acpi_ps_append_arg(%union.acpi_parse_object* %96, %union.acpi_parse_object* %97)
  br label %99

99:                                               ; preds = %89, %86
  %100 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %101 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @INCREMENT_ARG_LIST(i32 %102)
  br label %44

104:                                              ; preds = %56
  %105 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %106 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @ACPI_IMODE_LOAD_PASS2, align 4
  %109 = icmp sle i32 %107, %108
  br i1 %109, label %110, label %207

110:                                              ; preds = %104
  %111 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %112 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @ACPI_PARSE_DISASSEMBLE, align 4
  %115 = and i32 %113, %114
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %207

117:                                              ; preds = %110
  %118 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %119 = bitcast %union.acpi_parse_object* %118 to %struct.TYPE_12__*
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  switch i32 %121, label %156 [
    i32 136, label %122
    i32 137, label %122
    i32 129, label %122
  ]

122:                                              ; preds = %117, %117, %117
  %123 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %124 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @ACPI_IMODE_LOAD_PASS1, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %144

128:                                              ; preds = %122
  %129 = load i32*, i32** %6, align 8
  %130 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %131 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i32*, i32** %6, align 8
  %135 = ptrtoint i32* %133 to i64
  %136 = ptrtoint i32* %134 to i64
  %137 = sub i64 %135, %136
  %138 = sdiv exact i64 %137, 4
  %139 = inttoptr i64 %138 to i32*
  %140 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %141 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @acpi_ps_link_module_code(i32* %129, i32* %139, i32 %142)
  br label %144

144:                                              ; preds = %128, %122
  %145 = load i32, i32* @ACPI_DB_PARSE, align 4
  %146 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([39 x i8]* @.str to i32))
  %147 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %148 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %152 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 1
  store i32* %150, i32** %153, align 8
  %154 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %155 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %154, i32 0, i32 3
  store i32 0, i32* %155, align 8
  br label %206

156:                                              ; preds = %117
  %157 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %158 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @ACPI_IMODE_LOAD_PASS1, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %205

162:                                              ; preds = %156
  %163 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %164 = bitcast %union.acpi_parse_object* %163 to %struct.TYPE_12__*
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @AML_SCOPE_OP, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %205

172:                                              ; preds = %162
  %173 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %174 = bitcast %union.acpi_parse_object* %173 to %struct.TYPE_12__*
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i32 %176)
  store %struct.acpi_opcode_info* %177, %struct.acpi_opcode_info** %10, align 8
  %178 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %10, align 8
  %179 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @AML_CLASS_EXECUTE, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %204

183:                                              ; preds = %172
  %184 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %185 = icmp ne %union.acpi_parse_object* %184, null
  br i1 %185, label %204, label %186

186:                                              ; preds = %183
  %187 = load i32, i32* @AE_INFO, align 4
  %188 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %189 = bitcast %union.acpi_parse_object* %188 to %struct.TYPE_12__*
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32*, i32** %6, align 8
  %193 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %194 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = sext i32 %196 to i64
  %198 = sub i64 0, %197
  %199 = getelementptr inbounds i32, i32* %192, i64 %198
  %200 = getelementptr inbounds i32, i32* %199, i64 4
  %201 = bitcast i32* %200 to i8*
  %202 = ptrtoint i8* %201 to i32
  %203 = call i32 @ACPI_WARNING(i32 %202)
  br label %204

204:                                              ; preds = %186, %183, %172
  br label %205

205:                                              ; preds = %204, %162, %156
  br label %206

206:                                              ; preds = %205, %144
  br label %207

207:                                              ; preds = %206, %110, %104
  %208 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %209 = bitcast %union.acpi_parse_object* %208 to %struct.TYPE_12__*
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  switch i32 %211, label %311 [
    i32 134, label %212
    i32 140, label %245
    i32 133, label %245
    i32 130, label %245
    i32 129, label %295
  ]

212:                                              ; preds = %207
  %213 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %214 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  %217 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %218 = bitcast %union.acpi_parse_object* %217 to %struct.TYPE_13__*
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 1
  store i32* %216, i32** %219, align 8
  %220 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %221 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %225 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 1
  %227 = load i32*, i32** %226, align 8
  %228 = ptrtoint i32* %223 to i64
  %229 = ptrtoint i32* %227 to i64
  %230 = sub i64 %228, %229
  %231 = sdiv exact i64 %230, 4
  %232 = inttoptr i64 %231 to i8*
  %233 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %234 = bitcast %union.acpi_parse_object* %233 to %struct.TYPE_13__*
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 0
  store i8* %232, i8** %235, align 8
  %236 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %237 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %241 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i32 0, i32 1
  store i32* %239, i32** %242, align 8
  %243 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %244 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %243, i32 0, i32 3
  store i32 0, i32* %244, align 8
  br label %312

245:                                              ; preds = %207, %207, %207
  %246 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %247 = bitcast %union.acpi_parse_object* %246 to %struct.TYPE_12__*
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 1
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %248, align 8
  %250 = icmp ne %struct.TYPE_11__* %249, null
  br i1 %250, label %251, label %294

251:                                              ; preds = %245
  %252 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %253 = bitcast %union.acpi_parse_object* %252 to %struct.TYPE_12__*
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 1
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @AML_NAME_OP, align 4
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %261, label %294

261:                                              ; preds = %251
  %262 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %263 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %262, i32 0, i32 4
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @ACPI_IMODE_LOAD_PASS2, align 4
  %266 = icmp sle i32 %264, %265
  br i1 %266, label %267, label %294

267:                                              ; preds = %261
  %268 = load i32*, i32** %6, align 8
  %269 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %270 = bitcast %union.acpi_parse_object* %269 to %struct.TYPE_13__*
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 1
  store i32* %268, i32** %271, align 8
  %272 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %273 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %273, i32 0, i32 0
  %275 = load i32*, i32** %274, align 8
  %276 = load i32*, i32** %6, align 8
  %277 = ptrtoint i32* %275 to i64
  %278 = ptrtoint i32* %276 to i64
  %279 = sub i64 %277, %278
  %280 = sdiv exact i64 %279, 4
  %281 = inttoptr i64 %280 to i8*
  %282 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %283 = bitcast %union.acpi_parse_object* %282 to %struct.TYPE_13__*
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %283, i32 0, i32 0
  store i8* %281, i8** %284, align 8
  %285 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %286 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %286, i32 0, i32 0
  %288 = load i32*, i32** %287, align 8
  %289 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %290 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %290, i32 0, i32 1
  store i32* %288, i32** %291, align 8
  %292 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %293 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %292, i32 0, i32 3
  store i32 0, i32* %293, align 8
  br label %294

294:                                              ; preds = %267, %261, %251, %245
  br label %312

295:                                              ; preds = %207
  %296 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %297 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %296, i32 0, i32 2
  %298 = load %struct.TYPE_15__*, %struct.TYPE_15__** %297, align 8
  %299 = icmp ne %struct.TYPE_15__* %298, null
  br i1 %299, label %300, label %310

300:                                              ; preds = %295
  %301 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %302 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i32 0, i32 0
  %304 = load i32*, i32** %303, align 8
  %305 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %306 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %305, i32 0, i32 2
  %307 = load %struct.TYPE_15__*, %struct.TYPE_15__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %308, i32 0, i32 0
  store i32* %304, i32** %309, align 8
  br label %310

310:                                              ; preds = %300, %295
  br label %312

311:                                              ; preds = %207
  br label %312

312:                                              ; preds = %311, %310, %294, %212
  br label %313

313:                                              ; preds = %312, %40, %19
  %314 = load i32, i32* @AE_OK, align 4
  %315 = call i32 @return_ACPI_STATUS(i32 %314)
  %316 = load i32, i32* %4, align 4
  ret i32 %316
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ps_get_next_simple_arg(%struct.TYPE_16__*, i32, %union.acpi_parse_object*) #1

declare dso_local i32 @GET_CURRENT_ARG_TYPE(i32) #1

declare dso_local i32 @acpi_ps_get_next_namepath(%struct.acpi_walk_state*, %struct.TYPE_16__*, %union.acpi_parse_object*, i32) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_PTR_DIFF(i32*, i32) #1

declare dso_local i32 @acpi_ps_get_next_arg(%struct.acpi_walk_state*, %struct.TYPE_16__*, i32, %union.acpi_parse_object**) #1

declare dso_local i32 @acpi_ps_append_arg(%union.acpi_parse_object*, %union.acpi_parse_object*) #1

declare dso_local i32 @INCREMENT_ARG_LIST(i32) #1

declare dso_local i32 @acpi_ps_link_module_code(i32*, i32*, i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i32) #1

declare dso_local i32 @ACPI_WARNING(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

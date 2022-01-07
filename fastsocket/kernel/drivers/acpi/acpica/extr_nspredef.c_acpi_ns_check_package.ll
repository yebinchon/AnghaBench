; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nspredef.c_acpi_ns_check_package.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nspredef.c_acpi_ns_check_package.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_predefined_data = type { i32, i32, %union.acpi_predefined_info* }
%union.acpi_predefined_info = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64, i64, i32, i32 }
%union.acpi_operand_object = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, %union.acpi_operand_object** }
%struct.TYPE_6__ = type { i64, i32, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@ns_check_package = common dso_local global i32 0, align 4
@ACPI_DB_NAMES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"%s Validating return Package of Type %X, Count %X\0A\00", align 1
@AE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Return Package has no elements (empty)\00", align 1
@AE_AML_OPERAND_VALUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"Return Package is larger than needed - found %u, expected %u\00", align 1
@ACPI_RTYPE_INTEGER = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"Invalid internal return type in table entry: %X\00", align 1
@AE_AML_INTERNAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [61 x i8] c"Return Package is too small - found %u elements, expected %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_predefined_data*, %union.acpi_operand_object**)* @acpi_ns_check_package to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ns_check_package(%struct.acpi_predefined_data* %0, %union.acpi_operand_object** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_predefined_data*, align 8
  %5 = alloca %union.acpi_operand_object**, align 8
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca %union.acpi_predefined_info*, align 8
  %8 = alloca %union.acpi_operand_object**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.acpi_predefined_data* %0, %struct.acpi_predefined_data** %4, align 8
  store %union.acpi_operand_object** %1, %union.acpi_operand_object*** %5, align 8
  %13 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  store %union.acpi_operand_object* %14, %union.acpi_operand_object** %6, align 8
  %15 = load i32, i32* @AE_OK, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* @ns_check_package, align 4
  %17 = call i32 @ACPI_FUNCTION_NAME(i32 %16)
  %18 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %4, align 8
  %19 = getelementptr inbounds %struct.acpi_predefined_data, %struct.acpi_predefined_data* %18, i32 0, i32 2
  %20 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %19, align 8
  %21 = getelementptr inbounds %union.acpi_predefined_info, %union.acpi_predefined_info* %20, i64 1
  store %union.acpi_predefined_info* %21, %union.acpi_predefined_info** %7, align 8
  %22 = load i32, i32* @ACPI_DB_NAMES, align 4
  %23 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %4, align 8
  %24 = getelementptr inbounds %struct.acpi_predefined_data, %struct.acpi_predefined_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %27 = bitcast %union.acpi_predefined_info* %26 to %struct.TYPE_10__*
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %31 = bitcast %union.acpi_operand_object* %30 to %struct.TYPE_9__*
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @ACPI_DEBUG_PRINT(i32 %34)
  %36 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %4, align 8
  %37 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %38 = bitcast %union.acpi_predefined_info* %37 to %struct.TYPE_10__*
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %42 = call i32 @acpi_ns_remove_null_elements(%struct.acpi_predefined_data* %36, i32 %40, %union.acpi_operand_object* %41)
  %43 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %44 = bitcast %union.acpi_operand_object* %43 to %struct.TYPE_9__*
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %45, align 8
  store %union.acpi_operand_object** %46, %union.acpi_operand_object*** %8, align 8
  %47 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %48 = bitcast %union.acpi_operand_object* %47 to %struct.TYPE_9__*
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %11, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %2
  %54 = load i32, i32* @AE_INFO, align 4
  %55 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %4, align 8
  %56 = getelementptr inbounds %struct.acpi_predefined_data, %struct.acpi_predefined_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %4, align 8
  %59 = getelementptr inbounds %struct.acpi_predefined_data, %struct.acpi_predefined_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @ACPI_WARN_PREDEFINED(i32 ptrtoint ([39 x i8]* @.str.1 to i32))
  %62 = load i32, i32* @AE_AML_OPERAND_VALUE, align 4
  store i32 %62, i32* %3, align 4
  br label %315

63:                                               ; preds = %2
  %64 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %65 = bitcast %union.acpi_predefined_info* %64 to %struct.TYPE_10__*
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  switch i32 %67, label %286 [
    i32 136, label %68
    i32 134, label %119
    i32 135, label %145
    i32 128, label %206
    i32 129, label %226
    i32 133, label %256
    i32 131, label %256
    i32 130, label %256
    i32 132, label %256
  ]

68:                                               ; preds = %63
  %69 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %70 = bitcast %union.acpi_predefined_info* %69 to %struct.TYPE_10__*
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %74 = bitcast %union.acpi_predefined_info* %73 to %struct.TYPE_10__*
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %72, %76
  store i64 %77, i64* %10, align 8
  %78 = load i64, i64* %11, align 8
  %79 = load i64, i64* %10, align 8
  %80 = icmp ult i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %68
  br label %302

82:                                               ; preds = %68
  %83 = load i64, i64* %11, align 8
  %84 = load i64, i64* %10, align 8
  %85 = icmp ugt i64 %83, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %82
  %87 = load i32, i32* @AE_INFO, align 4
  %88 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %4, align 8
  %89 = getelementptr inbounds %struct.acpi_predefined_data, %struct.acpi_predefined_data* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %4, align 8
  %92 = getelementptr inbounds %struct.acpi_predefined_data, %struct.acpi_predefined_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* %10, align 8
  %96 = trunc i64 %95 to i32
  %97 = call i32 @ACPI_WARN_PREDEFINED(i32 %96)
  br label %98

98:                                               ; preds = %86, %82
  br label %99

99:                                               ; preds = %98
  %100 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %4, align 8
  %101 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %102 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %103 = bitcast %union.acpi_predefined_info* %102 to %struct.TYPE_10__*
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %107 = bitcast %union.acpi_predefined_info* %106 to %struct.TYPE_10__*
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %111 = bitcast %union.acpi_predefined_info* %110 to %struct.TYPE_10__*
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %115 = bitcast %union.acpi_predefined_info* %114 to %struct.TYPE_10__*
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @acpi_ns_check_package_elements(%struct.acpi_predefined_data* %100, %union.acpi_operand_object** %101, i32 %105, i64 %109, i32 %113, i64 %117, i32 0)
  store i32 %118, i32* %9, align 4
  br label %300

119:                                              ; preds = %63
  store i64 0, i64* %12, align 8
  br label %120

120:                                              ; preds = %141, %119
  %121 = load i64, i64* %12, align 8
  %122 = load i64, i64* %11, align 8
  %123 = icmp ult i64 %121, %122
  br i1 %123, label %124, label %144

124:                                              ; preds = %120
  %125 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %4, align 8
  %126 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %127 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %128 = bitcast %union.acpi_predefined_info* %127 to %struct.TYPE_10__*
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = load i64, i64* %12, align 8
  %132 = call i32 @acpi_ns_check_object_type(%struct.acpi_predefined_data* %125, %union.acpi_operand_object** %126, i32 %130, i64 %131)
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @ACPI_FAILURE(i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %124
  %137 = load i32, i32* %9, align 4
  store i32 %137, i32* %3, align 4
  br label %315

138:                                              ; preds = %124
  %139 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %140 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %139, i32 1
  store %union.acpi_operand_object** %140, %union.acpi_operand_object*** %8, align 8
  br label %141

141:                                              ; preds = %138
  %142 = load i64, i64* %12, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %12, align 8
  br label %120

144:                                              ; preds = %120
  br label %300

145:                                              ; preds = %63
  %146 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %147 = bitcast %union.acpi_predefined_info* %146 to %struct.TYPE_6__*
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  store i64 %149, i64* %10, align 8
  %150 = load i64, i64* %11, align 8
  %151 = load i64, i64* %10, align 8
  %152 = icmp ult i64 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %145
  br label %302

154:                                              ; preds = %145
  store i64 0, i64* %12, align 8
  br label %155

155:                                              ; preds = %202, %154
  %156 = load i64, i64* %12, align 8
  %157 = load i64, i64* %11, align 8
  %158 = icmp ult i64 %156, %157
  br i1 %158, label %159, label %205

159:                                              ; preds = %155
  %160 = load i64, i64* %12, align 8
  %161 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %162 = bitcast %union.acpi_predefined_info* %161 to %struct.TYPE_6__*
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp ult i64 %160, %164
  br i1 %165, label %166, label %184

166:                                              ; preds = %159
  %167 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %4, align 8
  %168 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %169 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %170 = bitcast %union.acpi_predefined_info* %169 to %struct.TYPE_6__*
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 2
  %172 = load i32*, i32** %171, align 8
  %173 = load i64, i64* %12, align 8
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i64, i64* %12, align 8
  %177 = call i32 @acpi_ns_check_object_type(%struct.acpi_predefined_data* %167, %union.acpi_operand_object** %168, i32 %175, i64 %176)
  store i32 %177, i32* %9, align 4
  %178 = load i32, i32* %9, align 4
  %179 = call i32 @ACPI_FAILURE(i32 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %166
  %182 = load i32, i32* %9, align 4
  store i32 %182, i32* %3, align 4
  br label %315

183:                                              ; preds = %166
  br label %199

184:                                              ; preds = %159
  %185 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %4, align 8
  %186 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %187 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %188 = bitcast %union.acpi_predefined_info* %187 to %struct.TYPE_6__*
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = load i64, i64* %12, align 8
  %192 = call i32 @acpi_ns_check_object_type(%struct.acpi_predefined_data* %185, %union.acpi_operand_object** %186, i32 %190, i64 %191)
  store i32 %192, i32* %9, align 4
  %193 = load i32, i32* %9, align 4
  %194 = call i32 @ACPI_FAILURE(i32 %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %184
  %197 = load i32, i32* %9, align 4
  store i32 %197, i32* %3, align 4
  br label %315

198:                                              ; preds = %184
  br label %199

199:                                              ; preds = %198, %183
  %200 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %201 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %200, i32 1
  store %union.acpi_operand_object** %201, %union.acpi_operand_object*** %8, align 8
  br label %202

202:                                              ; preds = %199
  %203 = load i64, i64* %12, align 8
  %204 = add i64 %203, 1
  store i64 %204, i64* %12, align 8
  br label %155

205:                                              ; preds = %155
  br label %300

206:                                              ; preds = %63
  %207 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %4, align 8
  %208 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %209 = load i32, i32* @ACPI_RTYPE_INTEGER, align 4
  %210 = call i32 @acpi_ns_check_object_type(%struct.acpi_predefined_data* %207, %union.acpi_operand_object** %208, i32 %209, i64 0)
  store i32 %210, i32* %9, align 4
  %211 = load i32, i32* %9, align 4
  %212 = call i32 @ACPI_FAILURE(i32 %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %206
  %215 = load i32, i32* %9, align 4
  store i32 %215, i32* %3, align 4
  br label %315

216:                                              ; preds = %206
  %217 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %218 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %217, i32 1
  store %union.acpi_operand_object** %218, %union.acpi_operand_object*** %8, align 8
  %219 = load i64, i64* %11, align 8
  %220 = add i64 %219, -1
  store i64 %220, i64* %11, align 8
  %221 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %4, align 8
  %222 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %223 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %224 = load i64, i64* %11, align 8
  %225 = call i32 @acpi_ns_check_package_list(%struct.acpi_predefined_data* %221, %union.acpi_predefined_info* %222, %union.acpi_operand_object** %223, i64 %224)
  store i32 %225, i32* %9, align 4
  br label %300

226:                                              ; preds = %63
  %227 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %4, align 8
  %228 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %229 = load i32, i32* @ACPI_RTYPE_INTEGER, align 4
  %230 = call i32 @acpi_ns_check_object_type(%struct.acpi_predefined_data* %227, %union.acpi_operand_object** %228, i32 %229, i64 0)
  store i32 %230, i32* %9, align 4
  %231 = load i32, i32* %9, align 4
  %232 = call i32 @ACPI_FAILURE(i32 %231)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %226
  %235 = load i32, i32* %9, align 4
  store i32 %235, i32* %3, align 4
  br label %315

236:                                              ; preds = %226
  %237 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %238 = load %union.acpi_operand_object*, %union.acpi_operand_object** %237, align 8
  %239 = bitcast %union.acpi_operand_object* %238 to %struct.TYPE_7__*
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = sext i32 %241 to i64
  store i64 %242, i64* %10, align 8
  %243 = load i64, i64* %10, align 8
  %244 = load i64, i64* %11, align 8
  %245 = icmp uge i64 %243, %244
  br i1 %245, label %246, label %247

246:                                              ; preds = %236
  br label %302

247:                                              ; preds = %236
  %248 = load i64, i64* %10, align 8
  store i64 %248, i64* %11, align 8
  %249 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %250 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %249, i32 1
  store %union.acpi_operand_object** %250, %union.acpi_operand_object*** %8, align 8
  %251 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %4, align 8
  %252 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %253 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %254 = load i64, i64* %11, align 8
  %255 = call i32 @acpi_ns_check_package_list(%struct.acpi_predefined_data* %251, %union.acpi_predefined_info* %252, %union.acpi_operand_object** %253, i64 %254)
  store i32 %255, i32* %9, align 4
  br label %300

256:                                              ; preds = %63, %63, %63, %63
  %257 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %258 = load %union.acpi_operand_object*, %union.acpi_operand_object** %257, align 8
  %259 = bitcast %union.acpi_operand_object* %258 to %struct.TYPE_8__*
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @ACPI_TYPE_PACKAGE, align 4
  %263 = icmp ne i32 %261, %262
  br i1 %263, label %264, label %280

264:                                              ; preds = %256
  %265 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %4, align 8
  %266 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %267 = call i32 @acpi_ns_repair_package_list(%struct.acpi_predefined_data* %265, %union.acpi_operand_object** %266)
  store i32 %267, i32* %9, align 4
  %268 = load i32, i32* %9, align 4
  %269 = call i32 @ACPI_FAILURE(i32 %268)
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %264
  %272 = load i32, i32* %9, align 4
  store i32 %272, i32* %3, align 4
  br label %315

273:                                              ; preds = %264
  %274 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %275 = load %union.acpi_operand_object*, %union.acpi_operand_object** %274, align 8
  store %union.acpi_operand_object* %275, %union.acpi_operand_object** %6, align 8
  %276 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %277 = bitcast %union.acpi_operand_object* %276 to %struct.TYPE_9__*
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i32 0, i32 1
  %279 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %278, align 8
  store %union.acpi_operand_object** %279, %union.acpi_operand_object*** %8, align 8
  store i64 1, i64* %11, align 8
  br label %280

280:                                              ; preds = %273, %256
  %281 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %4, align 8
  %282 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %283 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %284 = load i64, i64* %11, align 8
  %285 = call i32 @acpi_ns_check_package_list(%struct.acpi_predefined_data* %281, %union.acpi_predefined_info* %282, %union.acpi_operand_object** %283, i64 %284)
  store i32 %285, i32* %9, align 4
  br label %300

286:                                              ; preds = %63
  %287 = load i32, i32* @AE_INFO, align 4
  %288 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %4, align 8
  %289 = getelementptr inbounds %struct.acpi_predefined_data, %struct.acpi_predefined_data* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %4, align 8
  %292 = getelementptr inbounds %struct.acpi_predefined_data, %struct.acpi_predefined_data* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %295 = bitcast %union.acpi_predefined_info* %294 to %struct.TYPE_10__*
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = call i32 @ACPI_WARN_PREDEFINED(i32 %297)
  %299 = load i32, i32* @AE_AML_INTERNAL, align 4
  store i32 %299, i32* %3, align 4
  br label %315

300:                                              ; preds = %280, %247, %216, %205, %144, %99
  %301 = load i32, i32* %9, align 4
  store i32 %301, i32* %3, align 4
  br label %315

302:                                              ; preds = %246, %153, %81
  %303 = load i32, i32* @AE_INFO, align 4
  %304 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %4, align 8
  %305 = getelementptr inbounds %struct.acpi_predefined_data, %struct.acpi_predefined_data* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %4, align 8
  %308 = getelementptr inbounds %struct.acpi_predefined_data, %struct.acpi_predefined_data* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = load i64, i64* %11, align 8
  %311 = load i64, i64* %10, align 8
  %312 = trunc i64 %311 to i32
  %313 = call i32 @ACPI_WARN_PREDEFINED(i32 %312)
  %314 = load i32, i32* @AE_AML_OPERAND_VALUE, align 4
  store i32 %314, i32* %3, align 4
  br label %315

315:                                              ; preds = %302, %300, %286, %271, %234, %214, %196, %181, %136, %53
  %316 = load i32, i32* %3, align 4
  ret i32 %316
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ns_remove_null_elements(%struct.acpi_predefined_data*, i32, %union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_WARN_PREDEFINED(i32) #1

declare dso_local i32 @acpi_ns_check_package_elements(%struct.acpi_predefined_data*, %union.acpi_operand_object**, i32, i64, i32, i64, i32) #1

declare dso_local i32 @acpi_ns_check_object_type(%struct.acpi_predefined_data*, %union.acpi_operand_object**, i32, i64) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ns_check_package_list(%struct.acpi_predefined_data*, %union.acpi_predefined_info*, %union.acpi_operand_object**, i64) #1

declare dso_local i32 @acpi_ns_repair_package_list(%struct.acpi_predefined_data*, %union.acpi_operand_object**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

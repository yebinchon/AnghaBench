; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nspredef.c_acpi_ns_check_package_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nspredef.c_acpi_ns_check_package_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_predefined_data = type { i32, i32 }
%union.acpi_predefined_info = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64, i64, i32, i32 }
%union.acpi_operand_object = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %union.acpi_operand_object** }
%struct.TYPE_5__ = type { i64, i32* }
%struct.TYPE_6__ = type { i32 }

@ACPI_RTYPE_PACKAGE = common dso_local global i32 0, align 4
@ACPI_RTYPE_INTEGER = common dso_local global i32 0, align 4
@AE_AML_INTERNAL = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Return Sub-Package[%u] is too small - found %u elements, expected %u\00", align 1
@AE_AML_OPERAND_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_predefined_data*, %union.acpi_predefined_info*, %union.acpi_operand_object**, i64)* @acpi_ns_check_package_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ns_check_package_list(%struct.acpi_predefined_data* %0, %union.acpi_predefined_info* %1, %union.acpi_operand_object** %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_predefined_data*, align 8
  %7 = alloca %union.acpi_predefined_info*, align 8
  %8 = alloca %union.acpi_operand_object**, align 8
  %9 = alloca i64, align 8
  %10 = alloca %union.acpi_operand_object*, align 8
  %11 = alloca %union.acpi_operand_object**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.acpi_predefined_data* %0, %struct.acpi_predefined_data** %6, align 8
  store %union.acpi_predefined_info* %1, %union.acpi_predefined_info** %7, align 8
  store %union.acpi_operand_object** %2, %union.acpi_operand_object*** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %14, align 8
  br label %16

16:                                               ; preds = %216, %4
  %17 = load i64, i64* %14, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %219

20:                                               ; preds = %16
  %21 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %21, align 8
  store %union.acpi_operand_object* %22, %union.acpi_operand_object** %10, align 8
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %24 = bitcast %union.acpi_operand_object* %23 to %struct.TYPE_8__*
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %25, align 8
  store %union.acpi_operand_object** %26, %union.acpi_operand_object*** %11, align 8
  %27 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %6, align 8
  %28 = load i32, i32* @ACPI_RTYPE_PACKAGE, align 4
  %29 = load i64, i64* %14, align 8
  %30 = call i32 @acpi_ns_check_object_type(%struct.acpi_predefined_data* %27, %union.acpi_operand_object** %10, i32 %28, i64 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call i64 @ACPI_FAILURE(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %20
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %5, align 4
  br label %238

36:                                               ; preds = %20
  %37 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %38 = bitcast %union.acpi_predefined_info* %37 to %struct.TYPE_7__*
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %211 [
    i32 133, label %41
    i32 129, label %41
    i32 128, label %41
    i32 131, label %84
    i32 130, label %125
    i32 132, label %155
  ]

41:                                               ; preds = %36, %36, %36
  %42 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %43 = bitcast %union.acpi_predefined_info* %42 to %struct.TYPE_7__*
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %47 = bitcast %union.acpi_predefined_info* %46 to %struct.TYPE_7__*
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %45, %49
  store i64 %50, i64* %13, align 8
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %52 = bitcast %union.acpi_operand_object* %51 to %struct.TYPE_8__*
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %13, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %41
  br label %221

58:                                               ; preds = %41
  %59 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %6, align 8
  %60 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %11, align 8
  %61 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %62 = bitcast %union.acpi_predefined_info* %61 to %struct.TYPE_7__*
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %66 = bitcast %union.acpi_predefined_info* %65 to %struct.TYPE_7__*
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %70 = bitcast %union.acpi_predefined_info* %69 to %struct.TYPE_7__*
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %74 = bitcast %union.acpi_predefined_info* %73 to %struct.TYPE_7__*
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @acpi_ns_check_package_elements(%struct.acpi_predefined_data* %59, %union.acpi_operand_object** %60, i32 %64, i64 %68, i32 %72, i64 %76, i32 0)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = call i64 @ACPI_FAILURE(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %58
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %5, align 4
  br label %238

83:                                               ; preds = %58
  br label %213

84:                                               ; preds = %36
  %85 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %86 = bitcast %union.acpi_predefined_info* %85 to %struct.TYPE_5__*
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %13, align 8
  %89 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %90 = bitcast %union.acpi_operand_object* %89 to %struct.TYPE_8__*
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %13, align 8
  %94 = icmp slt i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  br label %221

96:                                               ; preds = %84
  store i64 0, i64* %15, align 8
  br label %97

97:                                               ; preds = %121, %96
  %98 = load i64, i64* %15, align 8
  %99 = load i64, i64* %13, align 8
  %100 = icmp slt i64 %98, %99
  br i1 %100, label %101, label %124

101:                                              ; preds = %97
  %102 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %6, align 8
  %103 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %11, align 8
  %104 = load i64, i64* %15, align 8
  %105 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %103, i64 %104
  %106 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %107 = bitcast %union.acpi_predefined_info* %106 to %struct.TYPE_5__*
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* %15, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i64, i64* %15, align 8
  %114 = call i32 @acpi_ns_check_object_type(%struct.acpi_predefined_data* %102, %union.acpi_operand_object** %105, i32 %112, i64 %113)
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %12, align 4
  %116 = call i64 @ACPI_FAILURE(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %101
  %119 = load i32, i32* %12, align 4
  store i32 %119, i32* %5, align 4
  br label %238

120:                                              ; preds = %101
  br label %121

121:                                              ; preds = %120
  %122 = load i64, i64* %15, align 8
  %123 = add nsw i64 %122, 1
  store i64 %123, i64* %15, align 8
  br label %97

124:                                              ; preds = %97
  br label %213

125:                                              ; preds = %36
  %126 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %127 = bitcast %union.acpi_predefined_info* %126 to %struct.TYPE_7__*
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  store i64 %129, i64* %13, align 8
  %130 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %131 = bitcast %union.acpi_operand_object* %130 to %struct.TYPE_8__*
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %13, align 8
  %135 = icmp slt i64 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %125
  br label %221

137:                                              ; preds = %125
  %138 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %6, align 8
  %139 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %11, align 8
  %140 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %141 = bitcast %union.acpi_predefined_info* %140 to %struct.TYPE_7__*
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %145 = bitcast %union.acpi_operand_object* %144 to %struct.TYPE_8__*
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @acpi_ns_check_package_elements(%struct.acpi_predefined_data* %138, %union.acpi_operand_object** %139, i32 %143, i64 %147, i32 0, i64 0, i32 0)
  store i32 %148, i32* %12, align 4
  %149 = load i32, i32* %12, align 4
  %150 = call i64 @ACPI_FAILURE(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %137
  %153 = load i32, i32* %12, align 4
  store i32 %153, i32* %5, align 4
  br label %238

154:                                              ; preds = %137
  br label %213

155:                                              ; preds = %36
  %156 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %6, align 8
  %157 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %11, align 8
  %158 = load i32, i32* @ACPI_RTYPE_INTEGER, align 4
  %159 = call i32 @acpi_ns_check_object_type(%struct.acpi_predefined_data* %156, %union.acpi_operand_object** %157, i32 %158, i64 0)
  store i32 %159, i32* %12, align 4
  %160 = load i32, i32* %12, align 4
  %161 = call i64 @ACPI_FAILURE(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %155
  %164 = load i32, i32* %12, align 4
  store i32 %164, i32* %5, align 4
  br label %238

165:                                              ; preds = %155
  %166 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %11, align 8
  %167 = load %union.acpi_operand_object*, %union.acpi_operand_object** %166, align 8
  %168 = bitcast %union.acpi_operand_object* %167 to %struct.TYPE_6__*
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = sext i32 %170 to i64
  store i64 %171, i64* %13, align 8
  %172 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %173 = bitcast %union.acpi_operand_object* %172 to %struct.TYPE_8__*
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* %13, align 8
  %177 = icmp slt i64 %175, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %165
  br label %221

179:                                              ; preds = %165
  %180 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %181 = bitcast %union.acpi_operand_object* %180 to %struct.TYPE_8__*
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %185 = bitcast %union.acpi_predefined_info* %184 to %struct.TYPE_7__*
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = icmp slt i64 %183, %187
  br i1 %188, label %189, label %194

189:                                              ; preds = %179
  %190 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %191 = bitcast %union.acpi_predefined_info* %190 to %struct.TYPE_7__*
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  store i64 %193, i64* %13, align 8
  br label %221

194:                                              ; preds = %179
  %195 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %6, align 8
  %196 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %11, align 8
  %197 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %196, i64 1
  %198 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %199 = bitcast %union.acpi_predefined_info* %198 to %struct.TYPE_7__*
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = load i64, i64* %13, align 8
  %203 = sub nsw i64 %202, 1
  %204 = call i32 @acpi_ns_check_package_elements(%struct.acpi_predefined_data* %195, %union.acpi_operand_object** %197, i32 %201, i64 %203, i32 0, i64 0, i32 1)
  store i32 %204, i32* %12, align 4
  %205 = load i32, i32* %12, align 4
  %206 = call i64 @ACPI_FAILURE(i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %194
  %209 = load i32, i32* %12, align 4
  store i32 %209, i32* %5, align 4
  br label %238

210:                                              ; preds = %194
  br label %213

211:                                              ; preds = %36
  %212 = load i32, i32* @AE_AML_INTERNAL, align 4
  store i32 %212, i32* %5, align 4
  br label %238

213:                                              ; preds = %210, %154, %124, %83
  %214 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %215 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %214, i32 1
  store %union.acpi_operand_object** %215, %union.acpi_operand_object*** %8, align 8
  br label %216

216:                                              ; preds = %213
  %217 = load i64, i64* %14, align 8
  %218 = add nsw i64 %217, 1
  store i64 %218, i64* %14, align 8
  br label %16

219:                                              ; preds = %16
  %220 = load i32, i32* @AE_OK, align 4
  store i32 %220, i32* %5, align 4
  br label %238

221:                                              ; preds = %189, %178, %136, %95, %57
  %222 = load i32, i32* @AE_INFO, align 4
  %223 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %6, align 8
  %224 = getelementptr inbounds %struct.acpi_predefined_data, %struct.acpi_predefined_data* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.acpi_predefined_data*, %struct.acpi_predefined_data** %6, align 8
  %227 = getelementptr inbounds %struct.acpi_predefined_data, %struct.acpi_predefined_data* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load i64, i64* %14, align 8
  %230 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %231 = bitcast %union.acpi_operand_object* %230 to %struct.TYPE_8__*
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* %13, align 8
  %235 = trunc i64 %234 to i32
  %236 = call i32 @ACPI_WARN_PREDEFINED(i32 %235)
  %237 = load i32, i32* @AE_AML_OPERAND_VALUE, align 4
  store i32 %237, i32* %5, align 4
  br label %238

238:                                              ; preds = %221, %219, %211, %208, %163, %152, %118, %81, %34
  %239 = load i32, i32* %5, align 4
  ret i32 %239
}

declare dso_local i32 @acpi_ns_check_object_type(%struct.acpi_predefined_data*, %union.acpi_operand_object**, i32, i64) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ns_check_package_elements(%struct.acpi_predefined_data*, %union.acpi_operand_object**, i32, i64, i32, i64, i32) #1

declare dso_local i32 @ACPI_WARN_PREDEFINED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

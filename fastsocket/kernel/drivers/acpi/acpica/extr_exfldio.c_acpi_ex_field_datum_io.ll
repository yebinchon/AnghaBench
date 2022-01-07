; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exfldio.c_acpi_ex_field_datum_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exfldio.c_acpi_ex_field_datum_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32 }

@ex_field_datum_io = common dso_local global i32 0, align 4
@ACPI_READ = common dso_local global i64 0, align 8
@AOPOBJ_DATA_VALID = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@AE_AML_REGISTER_LIMIT = common dso_local global i32 0, align 4
@ACPI_DB_BFIELD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Write to Index Register: Value %8.8X\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Read from Data Register\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Write to Data Register: Value %8.8X%8.8X\0A\00", align 1
@AE_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Wrong object type in field I/O %X\00", align 1
@AE_AML_INTERNAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Value Read %8.8X%8.8X, Width %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Value Written %8.8X%8.8X, Width %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.acpi_operand_object*, i64, i64*, i64)* @acpi_ex_field_datum_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ex_field_datum_io(%union.acpi_operand_object* %0, i64 %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32, i32* @ex_field_datum_io, align 4
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @ACPI_FUNCTION_TRACE_U32(i32 %12, i64 %13)
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* @ACPI_READ, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load i64*, i64** %8, align 8
  %20 = icmp ne i64* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store i64 0, i64* %11, align 8
  store i64* %11, i64** %8, align 8
  br label %22

22:                                               ; preds = %21, %18
  %23 = load i64*, i64** %8, align 8
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %22, %4
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %26 = bitcast %union.acpi_operand_object* %25 to %struct.TYPE_13__*
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %195 [
    i32 131, label %29
    i32 130, label %97
    i32 128, label %127
    i32 129, label %133
  ]

29:                                               ; preds = %24
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %31 = bitcast %union.acpi_operand_object* %30 to %struct.TYPE_13__*
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @AOPOBJ_DATA_VALID, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %29
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %39 = call i32 @acpi_ds_get_buffer_field_arguments(%union.acpi_operand_object* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @ACPI_FAILURE(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @return_ACPI_STATUS(i32 %44)
  br label %46

46:                                               ; preds = %43, %37
  br label %47

47:                                               ; preds = %46, %29
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* @ACPI_READ, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %74

51:                                               ; preds = %47
  %52 = load i64*, i64** %8, align 8
  %53 = ptrtoint i64* %52 to i64
  %54 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %55 = bitcast %union.acpi_operand_object* %54 to %struct.TYPE_10__*
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %62 = bitcast %union.acpi_operand_object* %61 to %struct.TYPE_10__*
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %60, %64
  %66 = load i64, i64* %7, align 8
  %67 = add nsw i64 %65, %66
  %68 = inttoptr i64 %67 to i64*
  %69 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %70 = bitcast %union.acpi_operand_object* %69 to %struct.TYPE_14__*
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @ACPI_MEMCPY(i64 %53, i64* %68, i32 %72)
  br label %95

74:                                               ; preds = %47
  %75 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %76 = bitcast %union.acpi_operand_object* %75 to %struct.TYPE_10__*
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %83 = bitcast %union.acpi_operand_object* %82 to %struct.TYPE_10__*
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %81, %85
  %87 = load i64, i64* %7, align 8
  %88 = add nsw i64 %86, %87
  %89 = load i64*, i64** %8, align 8
  %90 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %91 = bitcast %union.acpi_operand_object* %90 to %struct.TYPE_14__*
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @ACPI_MEMCPY(i64 %88, i64* %89, i32 %93)
  br label %95

95:                                               ; preds = %74, %51
  %96 = load i32, i32* @AE_OK, align 4
  store i32 %96, i32* %10, align 4
  br label %203

97:                                               ; preds = %24
  %98 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %99 = bitcast %union.acpi_operand_object* %98 to %struct.TYPE_11__*
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %103 = bitcast %union.acpi_operand_object* %102 to %struct.TYPE_11__*
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @acpi_ex_register_overflow(i32 %101, i64 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %97
  %109 = load i32, i32* @AE_AML_REGISTER_LIMIT, align 4
  %110 = call i32 @return_ACPI_STATUS(i32 %109)
  br label %111

111:                                              ; preds = %108, %97
  %112 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %113 = bitcast %union.acpi_operand_object* %112 to %struct.TYPE_11__*
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %117 = bitcast %union.acpi_operand_object* %116 to %struct.TYPE_11__*
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = call i32 @acpi_ex_insert_into_field(i32 %115, i64* %118, i32 8)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @ACPI_FAILURE(i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %111
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @return_ACPI_STATUS(i32 %124)
  br label %126

126:                                              ; preds = %123, %111
  br label %127

127:                                              ; preds = %24, %126
  %128 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %129 = load i64, i64* %7, align 8
  %130 = load i64*, i64** %8, align 8
  %131 = load i64, i64* %9, align 8
  %132 = call i32 @acpi_ex_access_region(%union.acpi_operand_object* %128, i64 %129, i64* %130, i64 %131)
  store i32 %132, i32* %10, align 4
  br label %203

133:                                              ; preds = %24
  %134 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %135 = bitcast %union.acpi_operand_object* %134 to %struct.TYPE_12__*
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %139 = bitcast %union.acpi_operand_object* %138 to %struct.TYPE_12__*
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @acpi_ex_register_overflow(i32 %137, i64 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %133
  %145 = load i32, i32* @AE_AML_REGISTER_LIMIT, align 4
  %146 = call i32 @return_ACPI_STATUS(i32 %145)
  br label %147

147:                                              ; preds = %144, %133
  %148 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %149 = bitcast %union.acpi_operand_object* %148 to %struct.TYPE_12__*
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* %7, align 8
  %153 = add nsw i64 %152, %151
  store i64 %153, i64* %7, align 8
  %154 = load i32, i32* @ACPI_DB_BFIELD, align 4
  %155 = load i64, i64* %7, align 8
  %156 = trunc i64 %155 to i32
  %157 = call i32 @ACPI_DEBUG_PRINT(i32 %156)
  %158 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %159 = bitcast %union.acpi_operand_object* %158 to %struct.TYPE_12__*
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @acpi_ex_insert_into_field(i32 %161, i64* %7, i32 8)
  store i32 %162, i32* %10, align 4
  %163 = load i32, i32* %10, align 4
  %164 = call i32 @ACPI_FAILURE(i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %147
  %167 = load i32, i32* %10, align 4
  %168 = call i32 @return_ACPI_STATUS(i32 %167)
  br label %169

169:                                              ; preds = %166, %147
  %170 = load i64, i64* %9, align 8
  %171 = load i64, i64* @ACPI_READ, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %182

173:                                              ; preds = %169
  %174 = load i32, i32* @ACPI_DB_BFIELD, align 4
  %175 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([25 x i8]* @.str.1 to i32))
  %176 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %177 = bitcast %union.acpi_operand_object* %176 to %struct.TYPE_12__*
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load i64*, i64** %8, align 8
  %181 = call i32 @acpi_ex_extract_from_field(i32 %179, i64* %180, i32 8)
  store i32 %181, i32* %10, align 4
  br label %194

182:                                              ; preds = %169
  %183 = load i32, i32* @ACPI_DB_BFIELD, align 4
  %184 = load i64*, i64** %8, align 8
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @ACPI_FORMAT_UINT64(i64 %185)
  %187 = call i32 @ACPI_DEBUG_PRINT(i32 %186)
  %188 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %189 = bitcast %union.acpi_operand_object* %188 to %struct.TYPE_12__*
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load i64*, i64** %8, align 8
  %193 = call i32 @acpi_ex_insert_into_field(i32 %191, i64* %192, i32 8)
  store i32 %193, i32* %10, align 4
  br label %194

194:                                              ; preds = %182, %173
  br label %203

195:                                              ; preds = %24
  %196 = load i32, i32* @AE_INFO, align 4
  %197 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %198 = bitcast %union.acpi_operand_object* %197 to %struct.TYPE_13__*
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @ACPI_ERROR(i32 %200)
  %202 = load i32, i32* @AE_AML_INTERNAL, align 4
  store i32 %202, i32* %10, align 4
  br label %203

203:                                              ; preds = %195, %194, %127, %95
  %204 = load i32, i32* %10, align 4
  %205 = call i64 @ACPI_SUCCESS(i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %232

207:                                              ; preds = %203
  %208 = load i64, i64* %9, align 8
  %209 = load i64, i64* @ACPI_READ, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %221

211:                                              ; preds = %207
  %212 = load i32, i32* @ACPI_DB_BFIELD, align 4
  %213 = load i64*, i64** %8, align 8
  %214 = load i64, i64* %213, align 8
  %215 = call i32 @ACPI_FORMAT_UINT64(i64 %214)
  %216 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %217 = bitcast %union.acpi_operand_object* %216 to %struct.TYPE_14__*
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @ACPI_DEBUG_PRINT(i32 %219)
  br label %231

221:                                              ; preds = %207
  %222 = load i32, i32* @ACPI_DB_BFIELD, align 4
  %223 = load i64*, i64** %8, align 8
  %224 = load i64, i64* %223, align 8
  %225 = call i32 @ACPI_FORMAT_UINT64(i64 %224)
  %226 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %227 = bitcast %union.acpi_operand_object* %226 to %struct.TYPE_14__*
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @ACPI_DEBUG_PRINT(i32 %229)
  br label %231

231:                                              ; preds = %221, %211
  br label %232

232:                                              ; preds = %231, %203
  %233 = load i32, i32* %10, align 4
  %234 = call i32 @return_ACPI_STATUS(i32 %233)
  %235 = load i32, i32* %5, align 4
  ret i32 %235
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_U32(i32, i64) #1

declare dso_local i32 @acpi_ds_get_buffer_field_arguments(%union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_MEMCPY(i64, i64*, i32) #1

declare dso_local i32 @acpi_ex_register_overflow(i32, i64) #1

declare dso_local i32 @acpi_ex_insert_into_field(i32, i64*, i32) #1

declare dso_local i32 @acpi_ex_access_region(%union.acpi_operand_object*, i64, i64*, i64) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ex_extract_from_field(i32, i64*, i32) #1

declare dso_local i32 @ACPI_FORMAT_UINT64(i64) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

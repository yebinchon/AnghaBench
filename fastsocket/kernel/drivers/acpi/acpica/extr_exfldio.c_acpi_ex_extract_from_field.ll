; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exfldio.c_acpi_ex_extract_from_field.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exfldio.c_acpi_ex_extract_from_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i64, i64 }

@ex_extract_from_field = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Field size %X (bits) is too large for buffer (%X)\00", align 1
@AE_BUFFER_OVERFLOW = common dso_local global i32 0, align 4
@ACPI_READ = common dso_local global i32 0, align 4
@ACPI_INTEGER_BIT_SIZE = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_extract_from_field(%union.acpi_operand_object* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %17 = load i32, i32* @ex_extract_from_field, align 4
  %18 = call i32 @ACPI_FUNCTION_TRACE(i32 %17)
  %19 = load i64, i64* %7, align 8
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %21 = bitcast %union.acpi_operand_object* %20 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @ACPI_ROUND_BITS_UP_TO_BYTES(i64 %23)
  %25 = icmp slt i64 %19, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %3
  %27 = load i32, i32* @AE_INFO, align 4
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %29 = bitcast %union.acpi_operand_object* %28 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 @ACPI_ERROR(i32 %33)
  %35 = load i32, i32* @AE_BUFFER_OVERFLOW, align 4
  %36 = call i32 @return_ACPI_STATUS(i32 %35)
  br label %37

37:                                               ; preds = %26, %3
  %38 = load i8*, i8** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @ACPI_MEMSET(i8* %38, i32 0, i64 %39)
  %41 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %42 = bitcast %union.acpi_operand_object* %41 to %struct.TYPE_2__*
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %46 = bitcast %union.acpi_operand_object* %45 to %struct.TYPE_2__*
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @ACPI_ROUND_UP_TO(i64 %44, i32 %48)
  store i64 %49, i64* %14, align 8
  %50 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %51 = bitcast %union.acpi_operand_object* %50 to %struct.TYPE_2__*
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %55 = bitcast %union.acpi_operand_object* %54 to %struct.TYPE_2__*
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %53, %57
  %59 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %60 = bitcast %union.acpi_operand_object* %59 to %struct.TYPE_2__*
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @ACPI_ROUND_UP_TO(i64 %58, i32 %62)
  store i64 %63, i64* %15, align 8
  %64 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load i32, i32* @ACPI_READ, align 4
  %67 = call i32 @acpi_ex_field_datum_io(%union.acpi_operand_object* %64, i64 %65, i32* %9, i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i64 @ACPI_FAILURE(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %37
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @return_ACPI_STATUS(i32 %72)
  br label %74

74:                                               ; preds = %71, %37
  %75 = load i32, i32* %9, align 4
  %76 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %77 = bitcast %union.acpi_operand_object* %76 to %struct.TYPE_2__*
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = ashr i32 %75, %80
  store i32 %81, i32* %10, align 4
  store i64 1, i64* %16, align 8
  br label %82

82:                                               ; preds = %164, %74
  %83 = load i64, i64* %16, align 8
  %84 = load i64, i64* %15, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %86, label %167

86:                                               ; preds = %82
  %87 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %88 = bitcast %union.acpi_operand_object* %87 to %struct.TYPE_2__*
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %11, align 8
  %92 = add nsw i64 %91, %90
  store i64 %92, i64* %11, align 8
  %93 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %94 = load i64, i64* %11, align 8
  %95 = load i32, i32* @ACPI_READ, align 4
  %96 = call i32 @acpi_ex_field_datum_io(%union.acpi_operand_object* %93, i64 %94, i32* %9, i32 %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i64 @ACPI_FAILURE(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %86
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @return_ACPI_STATUS(i32 %101)
  br label %103

103:                                              ; preds = %100, %86
  %104 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %105 = bitcast %union.acpi_operand_object* %104 to %struct.TYPE_2__*
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %110 = bitcast %union.acpi_operand_object* %109 to %struct.TYPE_2__*
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = sub nsw i64 %108, %112
  %114 = load i32, i32* @ACPI_INTEGER_BIT_SIZE, align 4
  %115 = sext i32 %114 to i64
  %116 = icmp slt i64 %113, %115
  br i1 %116, label %117, label %133

117:                                              ; preds = %103
  %118 = load i32, i32* %9, align 4
  %119 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %120 = bitcast %union.acpi_operand_object* %119 to %struct.TYPE_2__*
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %125 = bitcast %union.acpi_operand_object* %124 to %struct.TYPE_2__*
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = sub nsw i64 %123, %127
  %129 = trunc i64 %128 to i32
  %130 = shl i32 %118, %129
  %131 = load i32, i32* %10, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %10, align 4
  br label %133

133:                                              ; preds = %117, %103
  %134 = load i64, i64* %16, align 8
  %135 = load i64, i64* %14, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  br label %167

138:                                              ; preds = %133
  %139 = load i8*, i8** %6, align 8
  %140 = load i64, i64* %12, align 8
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  %142 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %143 = bitcast %union.acpi_operand_object* %142 to %struct.TYPE_2__*
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* %7, align 8
  %147 = load i64, i64* %12, align 8
  %148 = sub nsw i64 %146, %147
  %149 = call i32 @ACPI_MIN(i64 %145, i64 %148)
  %150 = call i32 @ACPI_MEMCPY(i8* %141, i32* %10, i32 %149)
  %151 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %152 = bitcast %union.acpi_operand_object* %151 to %struct.TYPE_2__*
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* %12, align 8
  %156 = add nsw i64 %155, %154
  store i64 %156, i64* %12, align 8
  %157 = load i32, i32* %9, align 4
  %158 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %159 = bitcast %union.acpi_operand_object* %158 to %struct.TYPE_2__*
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = trunc i64 %161 to i32
  %163 = ashr i32 %157, %162
  store i32 %163, i32* %10, align 4
  br label %164

164:                                              ; preds = %138
  %165 = load i64, i64* %16, align 8
  %166 = add nsw i64 %165, 1
  store i64 %166, i64* %16, align 8
  br label %82

167:                                              ; preds = %137, %82
  %168 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %169 = bitcast %union.acpi_operand_object* %168 to %struct.TYPE_2__*
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %173 = bitcast %union.acpi_operand_object* %172 to %struct.TYPE_2__*
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  %177 = srem i64 %171, %176
  store i64 %177, i64* %13, align 8
  %178 = load i64, i64* %13, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %167
  %181 = load i64, i64* %13, align 8
  %182 = call i32 @ACPI_MASK_BITS_ABOVE(i64 %181)
  %183 = load i32, i32* %10, align 4
  %184 = and i32 %183, %182
  store i32 %184, i32* %10, align 4
  br label %185

185:                                              ; preds = %180, %167
  %186 = load i8*, i8** %6, align 8
  %187 = load i64, i64* %12, align 8
  %188 = getelementptr inbounds i8, i8* %186, i64 %187
  %189 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %190 = bitcast %union.acpi_operand_object* %189 to %struct.TYPE_2__*
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* %7, align 8
  %194 = load i64, i64* %12, align 8
  %195 = sub nsw i64 %193, %194
  %196 = call i32 @ACPI_MIN(i64 %192, i64 %195)
  %197 = call i32 @ACPI_MEMCPY(i8* %188, i32* %10, i32 %196)
  %198 = load i32, i32* @AE_OK, align 4
  %199 = call i32 @return_ACPI_STATUS(i32 %198)
  %200 = load i32, i32* %4, align 4
  ret i32 %200
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i64 @ACPI_ROUND_BITS_UP_TO_BYTES(i64) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_MEMSET(i8*, i32, i64) #1

declare dso_local i64 @ACPI_ROUND_UP_TO(i64, i32) #1

declare dso_local i32 @acpi_ex_field_datum_io(%union.acpi_operand_object*, i64, i32*, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_MEMCPY(i8*, i32*, i32) #1

declare dso_local i32 @ACPI_MIN(i64, i64) #1

declare dso_local i32 @ACPI_MASK_BITS_ABOVE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

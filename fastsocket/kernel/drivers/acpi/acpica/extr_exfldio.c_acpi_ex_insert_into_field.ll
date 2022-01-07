; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exfldio.c_acpi_ex_insert_into_field.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exfldio.c_acpi_ex_insert_into_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@ex_insert_into_field = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_INTEGER_BIT_SIZE = common dso_local global i64 0, align 8
@ACPI_INTEGER_MAX = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_insert_into_field(%union.acpi_operand_object* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8 0, i8* %12, align 1
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %21 = load i32, i32* @ex_insert_into_field, align 4
  %22 = call i32 @ACPI_FUNCTION_TRACE(i32 %21)
  store i8* null, i8** %20, align 8
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %24 = bitcast %union.acpi_operand_object* %23 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @ACPI_ROUND_BITS_UP_TO_BYTES(i64 %26)
  store i64 %27, i64* %19, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %19, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %3
  %32 = load i64, i64* %19, align 8
  %33 = call i8* @ACPI_ALLOCATE_ZEROED(i64 %32)
  store i8* %33, i8** %20, align 8
  %34 = load i8*, i8** %20, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @AE_NO_MEMORY, align 4
  %38 = call i32 @return_ACPI_STATUS(i32 %37)
  br label %39

39:                                               ; preds = %36, %31
  %40 = load i8*, i8** %20, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @ACPI_MEMCPY(i8* %40, i8* %41, i64 %42)
  %44 = load i8*, i8** %20, align 8
  store i8* %44, i8** %6, align 8
  %45 = load i64, i64* %19, align 8
  store i64 %45, i64* %7, align 8
  br label %46

46:                                               ; preds = %39, %3
  %47 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %48 = bitcast %union.acpi_operand_object* %47 to %struct.TYPE_2__*
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ACPI_INTEGER_BIT_SIZE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i8, i8* @ACPI_INTEGER_MAX, align 1
  store i8 %54, i8* %10, align 1
  br label %61

55:                                               ; preds = %46
  %56 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %57 = bitcast %union.acpi_operand_object* %56 to %struct.TYPE_2__*
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call signext i8 @ACPI_MASK_BITS_ABOVE(i64 %59)
  store i8 %60, i8* %10, align 1
  br label %61

61:                                               ; preds = %55, %53
  %62 = load i8, i8* %10, align 1
  %63 = sext i8 %62 to i32
  %64 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %65 = bitcast %union.acpi_operand_object* %64 to %struct.TYPE_2__*
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = call signext i8 @ACPI_MASK_BITS_BELOW(i64 %67)
  %69 = sext i8 %68 to i32
  %70 = and i32 %63, %69
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %9, align 1
  %72 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %73 = bitcast %union.acpi_operand_object* %72 to %struct.TYPE_2__*
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %77 = bitcast %union.acpi_operand_object* %76 to %struct.TYPE_2__*
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @ACPI_ROUND_UP_TO(i64 %75, i64 %79)
  store i64 %80, i64* %16, align 8
  %81 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %82 = bitcast %union.acpi_operand_object* %81 to %struct.TYPE_2__*
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %86 = bitcast %union.acpi_operand_object* %85 to %struct.TYPE_2__*
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %84, %88
  %90 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %91 = bitcast %union.acpi_operand_object* %90 to %struct.TYPE_2__*
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i64 @ACPI_ROUND_UP_TO(i64 %89, i64 %93)
  store i64 %94, i64* %17, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %97 = bitcast %union.acpi_operand_object* %96 to %struct.TYPE_2__*
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %7, align 8
  %101 = load i64, i64* %14, align 8
  %102 = sub nsw i64 %100, %101
  %103 = call i64 @ACPI_MIN(i64 %99, i64 %102)
  %104 = call i32 @ACPI_MEMCPY(i8* %12, i8* %95, i64 %103)
  %105 = load i8, i8* %12, align 1
  %106 = sext i8 %105 to i32
  %107 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %108 = bitcast %union.acpi_operand_object* %107 to %struct.TYPE_2__*
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = shl i32 %106, %111
  %113 = trunc i32 %112 to i8
  store i8 %113, i8* %11, align 1
  store i64 1, i64* %18, align 8
  br label %114

114:                                              ; preds = %205, %61
  %115 = load i64, i64* %18, align 8
  %116 = load i64, i64* %17, align 8
  %117 = icmp slt i64 %115, %116
  br i1 %117, label %118, label %208

118:                                              ; preds = %114
  %119 = load i8, i8* %9, align 1
  %120 = sext i8 %119 to i32
  %121 = load i8, i8* %11, align 1
  %122 = sext i8 %121 to i32
  %123 = and i32 %122, %120
  %124 = trunc i32 %123 to i8
  store i8 %124, i8* %11, align 1
  %125 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %126 = load i8, i8* %9, align 1
  %127 = load i8, i8* %11, align 1
  %128 = load i64, i64* %13, align 8
  %129 = call i32 @acpi_ex_write_with_update_rule(%union.acpi_operand_object* %125, i8 signext %126, i8 signext %127, i64 %128)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = call i64 @ACPI_FAILURE(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %118
  br label %245

134:                                              ; preds = %118
  %135 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %136 = bitcast %union.acpi_operand_object* %135 to %struct.TYPE_2__*
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %13, align 8
  %140 = add nsw i64 %139, %138
  store i64 %140, i64* %13, align 8
  %141 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %142 = bitcast %union.acpi_operand_object* %141 to %struct.TYPE_2__*
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %146 = bitcast %union.acpi_operand_object* %145 to %struct.TYPE_2__*
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = sub nsw i64 %144, %148
  %150 = load i64, i64* @ACPI_INTEGER_BIT_SIZE, align 8
  %151 = icmp slt i64 %149, %150
  br i1 %151, label %152, label %167

152:                                              ; preds = %134
  %153 = load i8, i8* %12, align 1
  %154 = sext i8 %153 to i32
  %155 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %156 = bitcast %union.acpi_operand_object* %155 to %struct.TYPE_2__*
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %160 = bitcast %union.acpi_operand_object* %159 to %struct.TYPE_2__*
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = sub nsw i64 %158, %162
  %164 = trunc i64 %163 to i32
  %165 = ashr i32 %154, %164
  %166 = trunc i32 %165 to i8
  store i8 %166, i8* %11, align 1
  br label %168

167:                                              ; preds = %134
  store i8 0, i8* %11, align 1
  br label %168

168:                                              ; preds = %167, %152
  %169 = load i8, i8* %10, align 1
  store i8 %169, i8* %9, align 1
  %170 = load i64, i64* %18, align 8
  %171 = load i64, i64* %16, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  br label %208

174:                                              ; preds = %168
  %175 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %176 = bitcast %union.acpi_operand_object* %175 to %struct.TYPE_2__*
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* %14, align 8
  %180 = add nsw i64 %179, %178
  store i64 %180, i64* %14, align 8
  %181 = load i8*, i8** %6, align 8
  %182 = load i64, i64* %14, align 8
  %183 = getelementptr inbounds i8, i8* %181, i64 %182
  %184 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %185 = bitcast %union.acpi_operand_object* %184 to %struct.TYPE_2__*
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* %7, align 8
  %189 = load i64, i64* %14, align 8
  %190 = sub nsw i64 %188, %189
  %191 = call i64 @ACPI_MIN(i64 %187, i64 %190)
  %192 = call i32 @ACPI_MEMCPY(i8* %12, i8* %183, i64 %191)
  %193 = load i8, i8* %12, align 1
  %194 = sext i8 %193 to i32
  %195 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %196 = bitcast %union.acpi_operand_object* %195 to %struct.TYPE_2__*
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = trunc i64 %198 to i32
  %200 = shl i32 %194, %199
  %201 = load i8, i8* %11, align 1
  %202 = sext i8 %201 to i32
  %203 = or i32 %202, %200
  %204 = trunc i32 %203 to i8
  store i8 %204, i8* %11, align 1
  br label %205

205:                                              ; preds = %174
  %206 = load i64, i64* %18, align 8
  %207 = add nsw i64 %206, 1
  store i64 %207, i64* %18, align 8
  br label %114

208:                                              ; preds = %173, %114
  %209 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %210 = bitcast %union.acpi_operand_object* %209 to %struct.TYPE_2__*
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %214 = bitcast %union.acpi_operand_object* %213 to %struct.TYPE_2__*
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = add nsw i64 %212, %216
  %218 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %219 = bitcast %union.acpi_operand_object* %218 to %struct.TYPE_2__*
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = srem i64 %217, %221
  store i64 %222, i64* %15, align 8
  %223 = load i64, i64* %15, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %233

225:                                              ; preds = %208
  %226 = load i64, i64* %15, align 8
  %227 = call signext i8 @ACPI_MASK_BITS_ABOVE(i64 %226)
  %228 = sext i8 %227 to i32
  %229 = load i8, i8* %9, align 1
  %230 = sext i8 %229 to i32
  %231 = and i32 %230, %228
  %232 = trunc i32 %231 to i8
  store i8 %232, i8* %9, align 1
  br label %233

233:                                              ; preds = %225, %208
  %234 = load i8, i8* %9, align 1
  %235 = sext i8 %234 to i32
  %236 = load i8, i8* %11, align 1
  %237 = sext i8 %236 to i32
  %238 = and i32 %237, %235
  %239 = trunc i32 %238 to i8
  store i8 %239, i8* %11, align 1
  %240 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %241 = load i8, i8* %9, align 1
  %242 = load i8, i8* %11, align 1
  %243 = load i64, i64* %13, align 8
  %244 = call i32 @acpi_ex_write_with_update_rule(%union.acpi_operand_object* %240, i8 signext %241, i8 signext %242, i64 %243)
  store i32 %244, i32* %8, align 4
  br label %245

245:                                              ; preds = %233, %133
  %246 = load i8*, i8** %20, align 8
  %247 = icmp ne i8* %246, null
  br i1 %247, label %248, label %251

248:                                              ; preds = %245
  %249 = load i8*, i8** %20, align 8
  %250 = call i32 @ACPI_FREE(i8* %249)
  br label %251

251:                                              ; preds = %248, %245
  %252 = load i32, i32* %8, align 4
  %253 = call i32 @return_ACPI_STATUS(i32 %252)
  %254 = load i32, i32* %4, align 4
  ret i32 %254
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i64 @ACPI_ROUND_BITS_UP_TO_BYTES(i64) #1

declare dso_local i8* @ACPI_ALLOCATE_ZEROED(i64) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_MEMCPY(i8*, i8*, i64) #1

declare dso_local signext i8 @ACPI_MASK_BITS_ABOVE(i64) #1

declare dso_local signext i8 @ACPI_MASK_BITS_BELOW(i64) #1

declare dso_local i64 @ACPI_ROUND_UP_TO(i64, i64) #1

declare dso_local i64 @ACPI_MIN(i64, i64) #1

declare dso_local i32 @acpi_ex_write_with_update_rule(%union.acpi_operand_object*, i8 signext, i8 signext, i64) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_FREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

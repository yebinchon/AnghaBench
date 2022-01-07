; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utmath.c_acpi_ut_divide.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utmath.c_acpi_ut_divide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.uint64_overlay = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@ut_divide = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Divide by zero\00", align 1
@AE_AML_DIVIDE_BY_ZERO = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ut_divide(i64 %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %union.uint64_overlay, align 8
  %11 = alloca %union.uint64_overlay, align 8
  %12 = alloca %union.uint64_overlay, align 8
  %13 = alloca %union.uint64_overlay, align 8
  %14 = alloca %union.uint64_overlay, align 8
  %15 = alloca %union.uint64_overlay, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %union.uint64_overlay, align 8
  %18 = alloca %union.uint64_overlay, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %19 = load i32, i32* @ut_divide, align 4
  %20 = call i32 @ACPI_FUNCTION_TRACE(i32 %19)
  %21 = load i64, i64* %7, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load i32, i32* @AE_INFO, align 4
  %25 = call i32 @ACPI_ERROR(i32 ptrtoint ([15 x i8]* @.str to i32))
  %26 = load i32, i32* @AE_AML_DIVIDE_BY_ZERO, align 4
  %27 = call i32 @return_ACPI_STATUS(i32 %26)
  br label %28

28:                                               ; preds = %23, %4
  %29 = load i64, i64* %7, align 8
  %30 = bitcast %union.uint64_overlay* %11 to i64*
  store i64 %29, i64* %30, align 8
  %31 = load i64, i64* %6, align 8
  %32 = bitcast %union.uint64_overlay* %10 to i64*
  store i64 %31, i64* %32, align 8
  %33 = bitcast %union.uint64_overlay* %11 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %66

37:                                               ; preds = %28
  %38 = bitcast %union.uint64_overlay* %13 to %struct.TYPE_2__*
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = bitcast %union.uint64_overlay* %10 to %struct.TYPE_2__*
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = bitcast %union.uint64_overlay* %11 to %struct.TYPE_2__*
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = bitcast %union.uint64_overlay* %12 to %struct.TYPE_2__*
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i8*, i8** %16, align 8
  %50 = call i32 @ACPI_DIV_64_BY_32(i8* null, i64 %42, i64 %45, i64 %48, i8* %49)
  %51 = load i8*, i8** %16, align 8
  %52 = bitcast %union.uint64_overlay* %10 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = bitcast %union.uint64_overlay* %11 to %struct.TYPE_2__*
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = bitcast %union.uint64_overlay* %12 to %struct.TYPE_2__*
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = bitcast %union.uint64_overlay* %13 to %struct.TYPE_2__*
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = call i32 @ACPI_DIV_64_BY_32(i8* %51, i64 %54, i64 %57, i64 %60, i8* %64)
  br label %228

66:                                               ; preds = %28
  %67 = bitcast %union.uint64_overlay* %12 to %struct.TYPE_2__*
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  %69 = bitcast %union.uint64_overlay* %14 to i8*
  %70 = bitcast %union.uint64_overlay* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 %70, i64 16, i1 false)
  %71 = bitcast %union.uint64_overlay* %15 to i8*
  %72 = bitcast %union.uint64_overlay* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %71, i8* align 8 %72, i64 16, i1 false)
  br label %73

73:                                               ; preds = %90, %66
  %74 = bitcast %union.uint64_overlay* %15 to %struct.TYPE_2__*
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = bitcast %union.uint64_overlay* %15 to %struct.TYPE_2__*
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i8*
  %81 = call i32 @ACPI_SHIFT_RIGHT_64(i64 %76, i8* %80)
  %82 = bitcast %union.uint64_overlay* %14 to %struct.TYPE_2__*
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = bitcast %union.uint64_overlay* %14 to %struct.TYPE_2__*
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to i8*
  %89 = call i32 @ACPI_SHIFT_RIGHT_64(i64 %84, i8* %88)
  br label %90

90:                                               ; preds = %73
  %91 = bitcast %union.uint64_overlay* %15 to %struct.TYPE_2__*
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %73, label %95

95:                                               ; preds = %90
  %96 = bitcast %union.uint64_overlay* %14 to %struct.TYPE_2__*
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = inttoptr i64 %98 to i8*
  %100 = bitcast %union.uint64_overlay* %14 to %struct.TYPE_2__*
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = bitcast %union.uint64_overlay* %15 to %struct.TYPE_2__*
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = bitcast %union.uint64_overlay* %12 to %struct.TYPE_2__*
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i8*, i8** %16, align 8
  %110 = call i32 @ACPI_DIV_64_BY_32(i8* %99, i64 %102, i64 %105, i64 %108, i8* %109)
  %111 = bitcast %union.uint64_overlay* %12 to %struct.TYPE_2__*
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = bitcast %union.uint64_overlay* %11 to %struct.TYPE_2__*
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = mul nsw i64 %113, %116
  %118 = inttoptr i64 %117 to i8*
  store i8* %118, i8** %16, align 8
  %119 = bitcast %union.uint64_overlay* %12 to %struct.TYPE_2__*
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = bitcast %union.uint64_overlay* %11 to %struct.TYPE_2__*
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = mul nsw i64 %121, %124
  %126 = bitcast %union.uint64_overlay* %17 to i64*
  store i64 %125, i64* %126, align 8
  %127 = bitcast %union.uint64_overlay* %17 to %struct.TYPE_2__*
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i8*, i8** %16, align 8
  %131 = getelementptr i8, i8* %130, i64 %129
  %132 = ptrtoint i8* %131 to i64
  %133 = bitcast %union.uint64_overlay* %18 to i64*
  store i64 %132, i64* %133, align 8
  %134 = bitcast %union.uint64_overlay* %18 to %struct.TYPE_2__*
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = bitcast %union.uint64_overlay* %13 to %struct.TYPE_2__*
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  %139 = bitcast %union.uint64_overlay* %17 to %struct.TYPE_2__*
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = bitcast %union.uint64_overlay* %13 to %struct.TYPE_2__*
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  store i64 %141, i64* %143, align 8
  %144 = bitcast %union.uint64_overlay* %18 to %struct.TYPE_2__*
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %227

148:                                              ; preds = %95
  %149 = bitcast %union.uint64_overlay* %18 to %struct.TYPE_2__*
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = bitcast %union.uint64_overlay* %10 to %struct.TYPE_2__*
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp sge i64 %151, %154
  br i1 %155, label %156, label %194

156:                                              ; preds = %148
  %157 = bitcast %union.uint64_overlay* %18 to %struct.TYPE_2__*
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = bitcast %union.uint64_overlay* %10 to %struct.TYPE_2__*
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp eq i64 %159, %162
  br i1 %163, label %164, label %183

164:                                              ; preds = %156
  %165 = bitcast %union.uint64_overlay* %17 to %struct.TYPE_2__*
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = bitcast %union.uint64_overlay* %10 to %struct.TYPE_2__*
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp sgt i64 %167, %170
  br i1 %171, label %172, label %182

172:                                              ; preds = %164
  %173 = bitcast %union.uint64_overlay* %12 to %struct.TYPE_2__*
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = add nsw i64 %175, -1
  store i64 %176, i64* %174, align 8
  %177 = bitcast %union.uint64_overlay* %11 to i64*
  %178 = load i64, i64* %177, align 8
  %179 = bitcast %union.uint64_overlay* %13 to i64*
  %180 = load i64, i64* %179, align 8
  %181 = sub nsw i64 %180, %178
  store i64 %181, i64* %179, align 8
  br label %182

182:                                              ; preds = %172, %164
  br label %193

183:                                              ; preds = %156
  %184 = bitcast %union.uint64_overlay* %12 to %struct.TYPE_2__*
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = add nsw i64 %186, -1
  store i64 %187, i64* %185, align 8
  %188 = bitcast %union.uint64_overlay* %11 to i64*
  %189 = load i64, i64* %188, align 8
  %190 = bitcast %union.uint64_overlay* %13 to i64*
  %191 = load i64, i64* %190, align 8
  %192 = sub nsw i64 %191, %189
  store i64 %192, i64* %190, align 8
  br label %193

193:                                              ; preds = %183, %182
  br label %194

194:                                              ; preds = %193, %148
  %195 = bitcast %union.uint64_overlay* %13 to i64*
  %196 = load i64, i64* %195, align 8
  %197 = bitcast %union.uint64_overlay* %10 to i64*
  %198 = load i64, i64* %197, align 8
  %199 = sub nsw i64 %196, %198
  %200 = bitcast %union.uint64_overlay* %13 to i64*
  store i64 %199, i64* %200, align 8
  %201 = bitcast %union.uint64_overlay* %13 to %struct.TYPE_2__*
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = sub nsw i64 0, %203
  %205 = inttoptr i64 %204 to i8*
  %206 = ptrtoint i8* %205 to i64
  %207 = bitcast %union.uint64_overlay* %13 to %struct.TYPE_2__*
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 0
  store i64 %206, i64* %208, align 8
  %209 = bitcast %union.uint64_overlay* %13 to %struct.TYPE_2__*
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = sub nsw i64 0, %211
  %213 = inttoptr i64 %212 to i8*
  %214 = ptrtoint i8* %213 to i64
  %215 = bitcast %union.uint64_overlay* %13 to %struct.TYPE_2__*
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 1
  store i64 %214, i64* %216, align 8
  %217 = bitcast %union.uint64_overlay* %13 to %struct.TYPE_2__*
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %194
  %222 = bitcast %union.uint64_overlay* %13 to %struct.TYPE_2__*
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = add nsw i64 %224, -1
  store i64 %225, i64* %223, align 8
  br label %226

226:                                              ; preds = %221, %194
  br label %227

227:                                              ; preds = %226, %95
  br label %228

228:                                              ; preds = %227, %37
  %229 = load i64*, i64** %8, align 8
  %230 = icmp ne i64* %229, null
  br i1 %230, label %231, label %235

231:                                              ; preds = %228
  %232 = bitcast %union.uint64_overlay* %12 to i64*
  %233 = load i64, i64* %232, align 8
  %234 = load i64*, i64** %8, align 8
  store i64 %233, i64* %234, align 8
  br label %235

235:                                              ; preds = %231, %228
  %236 = load i64*, i64** %9, align 8
  %237 = icmp ne i64* %236, null
  br i1 %237, label %238, label %242

238:                                              ; preds = %235
  %239 = bitcast %union.uint64_overlay* %13 to i64*
  %240 = load i64, i64* %239, align 8
  %241 = load i64*, i64** %9, align 8
  store i64 %240, i64* %241, align 8
  br label %242

242:                                              ; preds = %238, %235
  %243 = load i32, i32* @AE_OK, align 4
  %244 = call i32 @return_ACPI_STATUS(i32 %243)
  %245 = load i32, i32* %5, align 4
  ret i32 %245
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_DIV_64_BY_32(i8*, i64, i64, i64, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ACPI_SHIFT_RIGHT_64(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

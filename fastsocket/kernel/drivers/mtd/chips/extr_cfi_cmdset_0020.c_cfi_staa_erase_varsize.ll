; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/chips/extr_cfi_cmdset_0020.c_cfi_staa_erase_varsize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/chips/extr_cfi_cmdset_0020.c_cfi_staa_erase_varsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, i32, %struct.mtd_erase_region_info*, %struct.map_info* }
%struct.mtd_erase_region_info = type { i64, i32, i64 }
%struct.map_info = type { %struct.cfi_private* }
%struct.cfi_private = type { i32, i32, i32* }
%struct.erase_info = type { i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MTD_ERASE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.erase_info*)* @cfi_staa_erase_varsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfi_staa_erase_varsize(%struct.mtd_info* %0, %struct.erase_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.erase_info*, align 8
  %6 = alloca %struct.map_info*, align 8
  %7 = alloca %struct.cfi_private*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mtd_erase_region_info*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store %struct.erase_info* %1, %struct.erase_info** %5, align 8
  %15 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %16 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %15, i32 0, i32 3
  %17 = load %struct.map_info*, %struct.map_info** %16, align 8
  store %struct.map_info* %17, %struct.map_info** %6, align 8
  %18 = load %struct.map_info*, %struct.map_info** %6, align 8
  %19 = getelementptr inbounds %struct.map_info, %struct.map_info* %18, i32 0, i32 0
  %20 = load %struct.cfi_private*, %struct.cfi_private** %19, align 8
  store %struct.cfi_private* %20, %struct.cfi_private** %7, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %22 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %21, i32 0, i32 2
  %23 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %22, align 8
  store %struct.mtd_erase_region_info* %23, %struct.mtd_erase_region_info** %14, align 8
  %24 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %25 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %28 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %265

34:                                               ; preds = %2
  %35 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %36 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %39 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %43 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %41, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %34
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %265

49:                                               ; preds = %34
  store i32 0, i32* %12, align 4
  br label %50

50:                                               ; preds = %69, %49
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %53 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %50
  %57 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %58 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %14, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %60, i64 %62
  %64 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sge i64 %59, %65
  br label %67

67:                                               ; preds = %56, %50
  %68 = phi i1 [ false, %50 ], [ %66, %56 ]
  br i1 %68, label %69, label %72

69:                                               ; preds = %67
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  br label %50

72:                                               ; preds = %67
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %12, align 4
  %75 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %76 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %14, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %78, i64 %80
  %82 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = and i64 %77, %85
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %72
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %265

91:                                               ; preds = %72
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %13, align 4
  br label %93

93:                                               ; preds = %116, %91
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %96 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %114

99:                                               ; preds = %93
  %100 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %101 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %104 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %102, %105
  %107 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %14, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %107, i64 %109
  %111 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp sge i64 %106, %112
  br label %114

114:                                              ; preds = %99, %93
  %115 = phi i1 [ false, %93 ], [ %113, %99 ]
  br i1 %115, label %116, label %119

116:                                              ; preds = %114
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %12, align 4
  br label %93

119:                                              ; preds = %114
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %12, align 4
  %122 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %123 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %126 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %124, %127
  %129 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %14, align 8
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %129, i64 %131
  %133 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = and i64 %128, %136
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %119
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %3, align 4
  br label %265

142:                                              ; preds = %119
  %143 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %144 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.cfi_private*, %struct.cfi_private** %7, align 8
  %147 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = zext i32 %148 to i64
  %150 = ashr i64 %145, %149
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %10, align 4
  %152 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %153 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i32, i32* %10, align 4
  %156 = load %struct.cfi_private*, %struct.cfi_private** %7, align 8
  %157 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = shl i32 %155, %158
  %160 = sext i32 %159 to i64
  %161 = sub nsw i64 %154, %160
  store i64 %161, i64* %8, align 8
  %162 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %163 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  store i64 %164, i64* %9, align 8
  %165 = load i32, i32* %13, align 4
  store i32 %165, i32* %12, align 4
  br label %166

166:                                              ; preds = %258, %142
  %167 = load i64, i64* %9, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %259

169:                                              ; preds = %166
  %170 = load %struct.map_info*, %struct.map_info** %6, align 8
  %171 = load %struct.cfi_private*, %struct.cfi_private** %7, align 8
  %172 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %171, i32 0, i32 2
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %10, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i64, i64* %8, align 8
  %178 = call i32 @do_erase_oneblock(%struct.map_info* %170, i32* %176, i64 %177)
  store i32 %178, i32* %11, align 4
  %179 = load i32, i32* %11, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %169
  %182 = load i32, i32* %11, align 4
  store i32 %182, i32* %3, align 4
  br label %265

183:                                              ; preds = %169
  %184 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %14, align 8
  %185 = load i32, i32* %12, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %184, i64 %186
  %188 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = sext i32 %189 to i64
  %191 = load i64, i64* %8, align 8
  %192 = add i64 %191, %190
  store i64 %192, i64* %8, align 8
  %193 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %14, align 8
  %194 = load i32, i32* %12, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %193, i64 %195
  %197 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = sext i32 %198 to i64
  %200 = load i64, i64* %9, align 8
  %201 = sub i64 %200, %199
  store i64 %201, i64* %9, align 8
  %202 = load i64, i64* %8, align 8
  %203 = load %struct.cfi_private*, %struct.cfi_private** %7, align 8
  %204 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = shl i32 1, %205
  %207 = sext i32 %206 to i64
  %208 = urem i64 %202, %207
  %209 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %14, align 8
  %210 = load i32, i32* %12, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %209, i64 %211
  %213 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %14, align 8
  %216 = load i32, i32* %12, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %215, i64 %217
  %219 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = sext i32 %220 to i64
  %222 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %14, align 8
  %223 = load i32, i32* %12, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %222, i64 %224
  %226 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = mul i64 %221, %227
  %229 = add i64 %214, %228
  %230 = load %struct.cfi_private*, %struct.cfi_private** %7, align 8
  %231 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = shl i32 1, %232
  %234 = sext i32 %233 to i64
  %235 = urem i64 %229, %234
  %236 = icmp eq i64 %208, %235
  br i1 %236, label %237, label %240

237:                                              ; preds = %183
  %238 = load i32, i32* %12, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %12, align 4
  br label %240

240:                                              ; preds = %237, %183
  %241 = load i64, i64* %8, align 8
  %242 = load %struct.cfi_private*, %struct.cfi_private** %7, align 8
  %243 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = zext i32 %244 to i64
  %246 = lshr i64 %241, %245
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %258

248:                                              ; preds = %240
  store i64 0, i64* %8, align 8
  %249 = load i32, i32* %10, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %10, align 4
  %251 = load i32, i32* %10, align 4
  %252 = load %struct.cfi_private*, %struct.cfi_private** %7, align 8
  %253 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = icmp sge i32 %251, %254
  br i1 %255, label %256, label %257

256:                                              ; preds = %248
  br label %259

257:                                              ; preds = %248
  br label %258

258:                                              ; preds = %257, %240
  br label %166

259:                                              ; preds = %256, %166
  %260 = load i32, i32* @MTD_ERASE_DONE, align 4
  %261 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %262 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %261, i32 0, i32 2
  store i32 %260, i32* %262, align 8
  %263 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %264 = call i32 @mtd_erase_callback(%struct.erase_info* %263)
  store i32 0, i32* %3, align 4
  br label %265

265:                                              ; preds = %259, %181, %139, %88, %46, %31
  %266 = load i32, i32* %3, align 4
  ret i32 %266
}

declare dso_local i32 @do_erase_oneblock(%struct.map_info*, i32*, i64) #1

declare dso_local i32 @mtd_erase_callback(%struct.erase_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

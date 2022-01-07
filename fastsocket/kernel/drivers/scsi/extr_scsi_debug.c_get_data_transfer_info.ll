; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_get_data_transfer_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_get_data_transfer_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64*, i32*, i32*)* @get_data_transfer_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_data_transfer_info(i8* %0, i64* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load i32*, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  switch i32 %12, label %298 [
    i32 135, label %13
    i32 129, label %108
    i32 132, label %108
    i32 137, label %108
    i32 133, label %180
    i32 138, label %180
    i32 130, label %228
    i32 134, label %228
    i32 139, label %228
    i32 128, label %228
    i32 131, label %264
    i32 136, label %264
  ]

13:                                               ; preds = %4
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 19
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 18
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = shl i32 %21, 8
  %23 = or i32 %17, %22
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 17
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = shl i32 %27, 16
  %29 = or i32 %23, %28
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 16
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl i32 %33, 24
  %35 = or i32 %29, %34
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 15
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = shl i32 %39, 32
  %41 = or i32 %35, %40
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 14
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = shl i32 %45, 40
  %47 = or i32 %41, %46
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 13
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = shl i32 %51, 48
  %53 = or i32 %47, %52
  %54 = load i8*, i8** %5, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 12
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = shl i32 %57, 56
  %59 = or i32 %53, %58
  %60 = sext i32 %59 to i64
  %61 = load i64*, i64** %6, align 8
  store i64 %60, i64* %61, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 23
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 22
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = shl i32 %69, 8
  %71 = or i32 %65, %70
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 21
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = shl i32 %75, 16
  %77 = or i32 %71, %76
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 20
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = shl i32 %81, 24
  %83 = or i32 %77, %82
  %84 = load i32*, i32** %8, align 8
  store i32 %83, i32* %84, align 4
  %85 = load i8*, i8** %5, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 31
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = load i8*, i8** %5, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 30
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = shl i32 %92, 8
  %94 = or i32 %88, %93
  %95 = load i8*, i8** %5, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 29
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = shl i32 %98, 16
  %100 = or i32 %94, %99
  %101 = load i8*, i8** %5, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 28
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = shl i32 %104, 24
  %106 = or i32 %100, %105
  %107 = load i32*, i32** %7, align 8
  store i32 %106, i32* %107, align 4
  br label %299

108:                                              ; preds = %4, %4, %4
  %109 = load i8*, i8** %5, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 9
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = load i8*, i8** %5, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 8
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = shl i32 %116, 8
  %118 = or i32 %112, %117
  %119 = load i8*, i8** %5, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 7
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = shl i32 %122, 16
  %124 = or i32 %118, %123
  %125 = load i8*, i8** %5, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 6
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = shl i32 %128, 24
  %130 = or i32 %124, %129
  %131 = load i8*, i8** %5, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 5
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = shl i32 %134, 32
  %136 = or i32 %130, %135
  %137 = load i8*, i8** %5, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 4
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = shl i32 %140, 40
  %142 = or i32 %136, %141
  %143 = load i8*, i8** %5, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 3
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i32
  %147 = shl i32 %146, 48
  %148 = or i32 %142, %147
  %149 = load i8*, i8** %5, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 2
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = shl i32 %152, 56
  %154 = or i32 %148, %153
  %155 = sext i32 %154 to i64
  %156 = load i64*, i64** %6, align 8
  store i64 %155, i64* %156, align 8
  %157 = load i8*, i8** %5, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 13
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = load i8*, i8** %5, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 12
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = shl i32 %164, 8
  %166 = or i32 %160, %165
  %167 = load i8*, i8** %5, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 11
  %169 = load i8, i8* %168, align 1
  %170 = zext i8 %169 to i32
  %171 = shl i32 %170, 16
  %172 = or i32 %166, %171
  %173 = load i8*, i8** %5, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 10
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i32
  %177 = shl i32 %176, 24
  %178 = or i32 %172, %177
  %179 = load i32*, i32** %7, align 8
  store i32 %178, i32* %179, align 4
  br label %299

180:                                              ; preds = %4, %4
  %181 = load i8*, i8** %5, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 5
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i32
  %185 = load i8*, i8** %5, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 4
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i32
  %189 = shl i32 %188, 8
  %190 = or i32 %184, %189
  %191 = load i8*, i8** %5, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 3
  %193 = load i8, i8* %192, align 1
  %194 = zext i8 %193 to i32
  %195 = shl i32 %194, 16
  %196 = or i32 %190, %195
  %197 = load i8*, i8** %5, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 2
  %199 = load i8, i8* %198, align 1
  %200 = zext i8 %199 to i32
  %201 = shl i32 %200, 24
  %202 = or i32 %196, %201
  %203 = sext i32 %202 to i64
  %204 = load i64*, i64** %6, align 8
  store i64 %203, i64* %204, align 8
  %205 = load i8*, i8** %5, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 9
  %207 = load i8, i8* %206, align 1
  %208 = zext i8 %207 to i32
  %209 = load i8*, i8** %5, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 8
  %211 = load i8, i8* %210, align 1
  %212 = zext i8 %211 to i32
  %213 = shl i32 %212, 8
  %214 = or i32 %208, %213
  %215 = load i8*, i8** %5, align 8
  %216 = getelementptr inbounds i8, i8* %215, i64 7
  %217 = load i8, i8* %216, align 1
  %218 = zext i8 %217 to i32
  %219 = shl i32 %218, 16
  %220 = or i32 %214, %219
  %221 = load i8*, i8** %5, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 6
  %223 = load i8, i8* %222, align 1
  %224 = zext i8 %223 to i32
  %225 = shl i32 %224, 24
  %226 = or i32 %220, %225
  %227 = load i32*, i32** %7, align 8
  store i32 %226, i32* %227, align 4
  br label %299

228:                                              ; preds = %4, %4, %4, %4
  %229 = load i8*, i8** %5, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 5
  %231 = load i8, i8* %230, align 1
  %232 = zext i8 %231 to i32
  %233 = load i8*, i8** %5, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 4
  %235 = load i8, i8* %234, align 1
  %236 = zext i8 %235 to i32
  %237 = shl i32 %236, 8
  %238 = or i32 %232, %237
  %239 = load i8*, i8** %5, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 3
  %241 = load i8, i8* %240, align 1
  %242 = zext i8 %241 to i32
  %243 = shl i32 %242, 16
  %244 = or i32 %238, %243
  %245 = load i8*, i8** %5, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 2
  %247 = load i8, i8* %246, align 1
  %248 = zext i8 %247 to i32
  %249 = shl i32 %248, 24
  %250 = or i32 %244, %249
  %251 = sext i32 %250 to i64
  %252 = load i64*, i64** %6, align 8
  store i64 %251, i64* %252, align 8
  %253 = load i8*, i8** %5, align 8
  %254 = getelementptr inbounds i8, i8* %253, i64 8
  %255 = load i8, i8* %254, align 1
  %256 = zext i8 %255 to i32
  %257 = load i8*, i8** %5, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 7
  %259 = load i8, i8* %258, align 1
  %260 = zext i8 %259 to i32
  %261 = shl i32 %260, 8
  %262 = or i32 %256, %261
  %263 = load i32*, i32** %7, align 8
  store i32 %262, i32* %263, align 4
  br label %299

264:                                              ; preds = %4, %4
  %265 = load i8*, i8** %5, align 8
  %266 = getelementptr inbounds i8, i8* %265, i64 3
  %267 = load i8, i8* %266, align 1
  %268 = zext i8 %267 to i32
  %269 = load i8*, i8** %5, align 8
  %270 = getelementptr inbounds i8, i8* %269, i64 2
  %271 = load i8, i8* %270, align 1
  %272 = zext i8 %271 to i32
  %273 = shl i32 %272, 8
  %274 = or i32 %268, %273
  %275 = load i8*, i8** %5, align 8
  %276 = getelementptr inbounds i8, i8* %275, i64 1
  %277 = load i8, i8* %276, align 1
  %278 = zext i8 %277 to i32
  %279 = and i32 %278, 31
  %280 = shl i32 %279, 16
  %281 = or i32 %274, %280
  %282 = sext i32 %281 to i64
  %283 = load i64*, i64** %6, align 8
  store i64 %282, i64* %283, align 8
  %284 = load i8*, i8** %5, align 8
  %285 = getelementptr inbounds i8, i8* %284, i64 4
  %286 = load i8, i8* %285, align 1
  %287 = zext i8 %286 to i32
  %288 = icmp eq i32 0, %287
  br i1 %288, label %289, label %290

289:                                              ; preds = %264
  br label %295

290:                                              ; preds = %264
  %291 = load i8*, i8** %5, align 8
  %292 = getelementptr inbounds i8, i8* %291, i64 4
  %293 = load i8, i8* %292, align 1
  %294 = zext i8 %293 to i32
  br label %295

295:                                              ; preds = %290, %289
  %296 = phi i32 [ 256, %289 ], [ %294, %290 ]
  %297 = load i32*, i32** %7, align 8
  store i32 %296, i32* %297, align 4
  br label %299

298:                                              ; preds = %4
  br label %299

299:                                              ; preds = %298, %295, %228, %180, %108, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

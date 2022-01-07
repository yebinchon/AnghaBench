; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_virtio_console.c_init_vqs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_virtio_console.c_init_vqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ports_device = type { i8**, i8**, i8*, i8*, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i32, i8**, i8**, i8**)* }
%struct.TYPE_4__ = type { i32 }
%struct.virtqueue = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@in_intr = common dso_local global i8* null, align 8
@out_intr = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@control_intr = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"control-i\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"control-o\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ports_device*)* @init_vqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_vqs(%struct.ports_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ports_device*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.virtqueue**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ports_device* %0, %struct.ports_device** %3, align 8
  %12 = load %struct.ports_device*, %struct.ports_device** %3, align 8
  %13 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load %struct.ports_device*, %struct.ports_device** %3, align 8
  %17 = call i64 @use_multiport(%struct.ports_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* %9, align 4
  %21 = add nsw i32 %20, 1
  %22 = mul nsw i32 %21, 2
  br label %24

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi i32 [ %22, %19 ], [ 2, %23 ]
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 8
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kmalloc(i32 %29, i32 %30)
  %32 = bitcast i8* %31 to %struct.virtqueue**
  store %struct.virtqueue** %32, %struct.virtqueue*** %6, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 8
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @kmalloc(i32 %36, i32 %37)
  %39 = bitcast i8* %38 to i8**
  store i8** %39, i8*** %4, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 8
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i8* @kmalloc(i32 %43, i32 %44)
  %46 = bitcast i8* %45 to i8**
  store i8** %46, i8*** %5, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 8
  %50 = trunc i64 %49 to i32
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i8* @kmalloc(i32 %50, i32 %51)
  %53 = bitcast i8* %52 to i8**
  %54 = load %struct.ports_device*, %struct.ports_device** %3, align 8
  %55 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %54, i32 0, i32 0
  store i8** %53, i8*** %55, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 8
  %59 = trunc i64 %58 to i32
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i8* @kmalloc(i32 %59, i32 %60)
  %62 = bitcast i8* %61 to i8**
  %63 = load %struct.ports_device*, %struct.ports_device** %3, align 8
  %64 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %63, i32 0, i32 1
  store i8** %62, i8*** %64, align 8
  %65 = load %struct.virtqueue**, %struct.virtqueue*** %6, align 8
  %66 = icmp ne %struct.virtqueue** %65, null
  br i1 %66, label %67, label %83

67:                                               ; preds = %24
  %68 = load i8**, i8*** %4, align 8
  %69 = icmp ne i8** %68, null
  br i1 %69, label %70, label %83

70:                                               ; preds = %67
  %71 = load i8**, i8*** %5, align 8
  %72 = icmp ne i8** %71, null
  br i1 %72, label %73, label %83

73:                                               ; preds = %70
  %74 = load %struct.ports_device*, %struct.ports_device** %3, align 8
  %75 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %74, i32 0, i32 0
  %76 = load i8**, i8*** %75, align 8
  %77 = icmp ne i8** %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.ports_device*, %struct.ports_device** %3, align 8
  %80 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %79, i32 0, i32 1
  %81 = load i8**, i8*** %80, align 8
  %82 = icmp ne i8** %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %78, %73, %70, %67, %24
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %11, align 4
  br label %267

86:                                               ; preds = %78
  store i32 0, i32* %8, align 4
  %87 = load i8*, i8** @in_intr, align 8
  %88 = load i8**, i8*** %4, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  store i8* %87, i8** %91, align 8
  %92 = load i8*, i8** @out_intr, align 8
  %93 = load i8**, i8*** %4, align 8
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %93, i64 %96
  store i8* %92, i8** %97, align 8
  %98 = load i8**, i8*** %5, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %101, align 8
  %102 = load i8**, i8*** %5, align 8
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %102, i64 %105
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %106, align 8
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 2
  store i32 %108, i32* %8, align 4
  %109 = load %struct.ports_device*, %struct.ports_device** %3, align 8
  %110 = call i64 @use_multiport(%struct.ports_device* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %163

112:                                              ; preds = %86
  %113 = load i8*, i8** @control_intr, align 8
  %114 = load i8**, i8*** %4, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %114, i64 %116
  store i8* %113, i8** %117, align 8
  %118 = load i8**, i8*** %4, align 8
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %118, i64 %121
  store i8* null, i8** %122, align 8
  %123 = load i8**, i8*** %5, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %123, i64 %125
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %126, align 8
  %127 = load i8**, i8*** %5, align 8
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8*, i8** %127, i64 %130
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %131, align 8
  store i32 1, i32* %7, align 4
  br label %132

132:                                              ; preds = %159, %112
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %162

136:                                              ; preds = %132
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 2
  store i32 %138, i32* %8, align 4
  %139 = load i8*, i8** @in_intr, align 8
  %140 = load i8**, i8*** %4, align 8
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8*, i8** %140, i64 %142
  store i8* %139, i8** %143, align 8
  %144 = load i8*, i8** @out_intr, align 8
  %145 = load i8**, i8*** %4, align 8
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8*, i8** %145, i64 %148
  store i8* %144, i8** %149, align 8
  %150 = load i8**, i8*** %5, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8*, i8** %150, i64 %152
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %153, align 8
  %154 = load i8**, i8*** %5, align 8
  %155 = load i32, i32* %8, align 4
  %156 = add nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8*, i8** %154, i64 %157
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %158, align 8
  br label %159

159:                                              ; preds = %136
  %160 = load i32, i32* %7, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %7, align 4
  br label %132

162:                                              ; preds = %132
  br label %163

163:                                              ; preds = %162, %86
  %164 = load %struct.ports_device*, %struct.ports_device** %3, align 8
  %165 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %164, i32 0, i32 4
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = load i32 (%struct.TYPE_6__*, i32, i8**, i8**, i8**)*, i32 (%struct.TYPE_6__*, i32, i8**, i8**, i8**)** %169, align 8
  %171 = load %struct.ports_device*, %struct.ports_device** %3, align 8
  %172 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %171, i32 0, i32 4
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %172, align 8
  %174 = load i32, i32* %10, align 4
  %175 = load %struct.virtqueue**, %struct.virtqueue*** %6, align 8
  %176 = bitcast %struct.virtqueue** %175 to i8**
  %177 = load i8**, i8*** %4, align 8
  %178 = load i8**, i8*** %5, align 8
  %179 = call i32 %170(%struct.TYPE_6__* %173, i32 %174, i8** %176, i8** %177, i8** %178)
  store i32 %179, i32* %11, align 4
  %180 = load i32, i32* %11, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %163
  br label %267

183:                                              ; preds = %163
  store i32 0, i32* %8, align 4
  %184 = load %struct.virtqueue**, %struct.virtqueue*** %6, align 8
  %185 = getelementptr inbounds %struct.virtqueue*, %struct.virtqueue** %184, i64 0
  %186 = load %struct.virtqueue*, %struct.virtqueue** %185, align 8
  %187 = bitcast %struct.virtqueue* %186 to i8*
  %188 = load %struct.ports_device*, %struct.ports_device** %3, align 8
  %189 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %188, i32 0, i32 0
  %190 = load i8**, i8*** %189, align 8
  %191 = getelementptr inbounds i8*, i8** %190, i64 0
  store i8* %187, i8** %191, align 8
  %192 = load %struct.virtqueue**, %struct.virtqueue*** %6, align 8
  %193 = getelementptr inbounds %struct.virtqueue*, %struct.virtqueue** %192, i64 1
  %194 = load %struct.virtqueue*, %struct.virtqueue** %193, align 8
  %195 = bitcast %struct.virtqueue* %194 to i8*
  %196 = load %struct.ports_device*, %struct.ports_device** %3, align 8
  %197 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %196, i32 0, i32 1
  %198 = load i8**, i8*** %197, align 8
  %199 = getelementptr inbounds i8*, i8** %198, i64 0
  store i8* %195, i8** %199, align 8
  %200 = load i32, i32* %8, align 4
  %201 = add nsw i32 %200, 2
  store i32 %201, i32* %8, align 4
  %202 = load %struct.ports_device*, %struct.ports_device** %3, align 8
  %203 = call i64 @use_multiport(%struct.ports_device* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %259

205:                                              ; preds = %183
  %206 = load %struct.virtqueue**, %struct.virtqueue*** %6, align 8
  %207 = load i32, i32* %8, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.virtqueue*, %struct.virtqueue** %206, i64 %208
  %210 = load %struct.virtqueue*, %struct.virtqueue** %209, align 8
  %211 = bitcast %struct.virtqueue* %210 to i8*
  %212 = load %struct.ports_device*, %struct.ports_device** %3, align 8
  %213 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %212, i32 0, i32 2
  store i8* %211, i8** %213, align 8
  %214 = load %struct.virtqueue**, %struct.virtqueue*** %6, align 8
  %215 = load i32, i32* %8, align 4
  %216 = add nsw i32 %215, 1
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.virtqueue*, %struct.virtqueue** %214, i64 %217
  %219 = load %struct.virtqueue*, %struct.virtqueue** %218, align 8
  %220 = bitcast %struct.virtqueue* %219 to i8*
  %221 = load %struct.ports_device*, %struct.ports_device** %3, align 8
  %222 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %221, i32 0, i32 3
  store i8* %220, i8** %222, align 8
  store i32 1, i32* %7, align 4
  br label %223

223:                                              ; preds = %255, %205
  %224 = load i32, i32* %7, align 4
  %225 = load i32, i32* %9, align 4
  %226 = icmp slt i32 %224, %225
  br i1 %226, label %227, label %258

227:                                              ; preds = %223
  %228 = load i32, i32* %8, align 4
  %229 = add nsw i32 %228, 2
  store i32 %229, i32* %8, align 4
  %230 = load %struct.virtqueue**, %struct.virtqueue*** %6, align 8
  %231 = load i32, i32* %8, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.virtqueue*, %struct.virtqueue** %230, i64 %232
  %234 = load %struct.virtqueue*, %struct.virtqueue** %233, align 8
  %235 = bitcast %struct.virtqueue* %234 to i8*
  %236 = load %struct.ports_device*, %struct.ports_device** %3, align 8
  %237 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %236, i32 0, i32 0
  %238 = load i8**, i8*** %237, align 8
  %239 = load i32, i32* %7, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8*, i8** %238, i64 %240
  store i8* %235, i8** %241, align 8
  %242 = load %struct.virtqueue**, %struct.virtqueue*** %6, align 8
  %243 = load i32, i32* %8, align 4
  %244 = add nsw i32 %243, 1
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.virtqueue*, %struct.virtqueue** %242, i64 %245
  %247 = load %struct.virtqueue*, %struct.virtqueue** %246, align 8
  %248 = bitcast %struct.virtqueue* %247 to i8*
  %249 = load %struct.ports_device*, %struct.ports_device** %3, align 8
  %250 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %249, i32 0, i32 1
  %251 = load i8**, i8*** %250, align 8
  %252 = load i32, i32* %7, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i8*, i8** %251, i64 %253
  store i8* %248, i8** %254, align 8
  br label %255

255:                                              ; preds = %227
  %256 = load i32, i32* %7, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %7, align 4
  br label %223

258:                                              ; preds = %223
  br label %259

259:                                              ; preds = %258, %183
  %260 = load i8**, i8*** %5, align 8
  %261 = call i32 @kfree(i8** %260)
  %262 = load i8**, i8*** %4, align 8
  %263 = call i32 @kfree(i8** %262)
  %264 = load %struct.virtqueue**, %struct.virtqueue*** %6, align 8
  %265 = bitcast %struct.virtqueue** %264 to i8**
  %266 = call i32 @kfree(i8** %265)
  store i32 0, i32* %2, align 4
  br label %284

267:                                              ; preds = %182, %83
  %268 = load %struct.ports_device*, %struct.ports_device** %3, align 8
  %269 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %268, i32 0, i32 1
  %270 = load i8**, i8*** %269, align 8
  %271 = call i32 @kfree(i8** %270)
  %272 = load %struct.ports_device*, %struct.ports_device** %3, align 8
  %273 = getelementptr inbounds %struct.ports_device, %struct.ports_device* %272, i32 0, i32 0
  %274 = load i8**, i8*** %273, align 8
  %275 = call i32 @kfree(i8** %274)
  %276 = load i8**, i8*** %5, align 8
  %277 = call i32 @kfree(i8** %276)
  %278 = load i8**, i8*** %4, align 8
  %279 = call i32 @kfree(i8** %278)
  %280 = load %struct.virtqueue**, %struct.virtqueue*** %6, align 8
  %281 = bitcast %struct.virtqueue** %280 to i8**
  %282 = call i32 @kfree(i8** %281)
  %283 = load i32, i32* %11, align 4
  store i32 %283, i32* %2, align 4
  br label %284

284:                                              ; preds = %267, %259
  %285 = load i32, i32* %2, align 4
  ret i32 %285
}

declare dso_local i64 @use_multiport(%struct.ports_device*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c_hid_input_field.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c_hid_input_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_field = type { i32, i32, i32, i64, i64, i32, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@HID_MAIN_ITEM_VARIABLE = common dso_local global i32 0, align 4
@HID_UP_KEYBOARD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, %struct.hid_field*, i32*, i32)* @hid_input_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hid_input_field(%struct.hid_device* %0, %struct.hid_field* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca %struct.hid_field*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %5, align 8
  store %struct.hid_field* %1, %struct.hid_field** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %17 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  %19 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %20 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %23 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %12, align 4
  %25 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %26 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %13, align 8
  %28 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %29 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %14, align 8
  %31 = load i32, i32* %10, align 4
  %32 = zext i32 %31 to i64
  %33 = mul i64 8, %32
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = call i64* @kmalloc(i32 %34, i32 %35)
  store i64* %36, i64** %15, align 8
  %37 = icmp ne i64* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %4
  br label %289

39:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %114, %39
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %117

44:                                               ; preds = %40
  %45 = load i64, i64* %13, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %12, align 4
  %52 = mul i32 %50, %51
  %53 = add i32 %49, %52
  %54 = load i32, i32* %12, align 4
  %55 = call i64 @extract(i32* %48, i32 %53, i32 %54)
  %56 = load i32, i32* %12, align 4
  %57 = call i64 @snto32(i64 %55, i32 %56)
  br label %67

58:                                               ; preds = %44
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %12, align 4
  %63 = mul i32 %61, %62
  %64 = add i32 %60, %63
  %65 = load i32, i32* %12, align 4
  %66 = call i64 @extract(i32* %59, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %58, %47
  %68 = phi i64 [ %57, %47 ], [ %66, %58 ]
  %69 = load i64*, i64** %15, align 8
  %70 = load i32, i32* %9, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  store i64 %68, i64* %72, align 8
  %73 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %74 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @HID_MAIN_ITEM_VARIABLE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %113, label %79

79:                                               ; preds = %67
  %80 = load i64*, i64** %15, align 8
  %81 = load i32, i32* %9, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %13, align 8
  %86 = icmp sge i64 %84, %85
  br i1 %86, label %87, label %113

87:                                               ; preds = %79
  %88 = load i64*, i64** %15, align 8
  %89 = load i32, i32* %9, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %14, align 8
  %94 = icmp sle i64 %92, %93
  br i1 %94, label %95, label %113

95:                                               ; preds = %87
  %96 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %97 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %96, i32 0, i32 7
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load i64*, i64** %15, align 8
  %100 = load i32, i32* %9, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %13, align 8
  %105 = sub nsw i64 %103, %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @HID_UP_KEYBOARD, align 8
  %110 = add nsw i64 %109, 1
  %111 = icmp eq i64 %108, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %95
  br label %286

113:                                              ; preds = %95, %87, %79, %67
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %9, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %9, align 4
  br label %40

117:                                              ; preds = %40
  store i32 0, i32* %9, align 4
  br label %118

118:                                              ; preds = %273, %117
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp ult i32 %119, %120
  br i1 %121, label %122, label %276

122:                                              ; preds = %118
  %123 = load i32, i32* @HID_MAIN_ITEM_VARIABLE, align 4
  %124 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %125 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = and i32 %123, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %146

129:                                              ; preds = %122
  %130 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %131 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %132 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %133 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %132, i32 0, i32 7
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = load i32, i32* %9, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i64 %136
  %138 = load i64*, i64** %15, align 8
  %139 = load i32, i32* %9, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %138, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = trunc i64 %142 to i32
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @hid_process_event(%struct.hid_device* %130, %struct.hid_field* %131, %struct.TYPE_2__* %137, i32 %143, i32 %144)
  br label %273

146:                                              ; preds = %122
  %147 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %148 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %147, i32 0, i32 6
  %149 = load i64*, i64** %148, align 8
  %150 = load i32, i32* %9, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* %13, align 8
  %155 = icmp sge i64 %153, %154
  br i1 %155, label %156, label %213

156:                                              ; preds = %146
  %157 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %158 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %157, i32 0, i32 6
  %159 = load i64*, i64** %158, align 8
  %160 = load i32, i32* %9, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* %14, align 8
  %165 = icmp sle i64 %163, %164
  br i1 %165, label %166, label %213

166:                                              ; preds = %156
  %167 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %168 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %167, i32 0, i32 7
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %171 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %170, i32 0, i32 6
  %172 = load i64*, i64** %171, align 8
  %173 = load i32, i32* %9, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds i64, i64* %172, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* %13, align 8
  %178 = sub nsw i64 %176, %177
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %213

183:                                              ; preds = %166
  %184 = load i64*, i64** %15, align 8
  %185 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %186 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %185, i32 0, i32 6
  %187 = load i64*, i64** %186, align 8
  %188 = load i32, i32* %9, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds i64, i64* %187, i64 %189
  %191 = load i64, i64* %190, align 8
  %192 = load i32, i32* %10, align 4
  %193 = call i64 @search(i64* %184, i64 %191, i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %213

195:                                              ; preds = %183
  %196 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %197 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %198 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %199 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %198, i32 0, i32 7
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** %199, align 8
  %201 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %202 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %201, i32 0, i32 6
  %203 = load i64*, i64** %202, align 8
  %204 = load i32, i32* %9, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds i64, i64* %203, i64 %205
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* %13, align 8
  %209 = sub nsw i64 %207, %208
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i64 %209
  %211 = load i32, i32* %8, align 4
  %212 = call i32 @hid_process_event(%struct.hid_device* %196, %struct.hid_field* %197, %struct.TYPE_2__* %210, i32 0, i32 %211)
  br label %213

213:                                              ; preds = %195, %183, %166, %156, %146
  %214 = load i64*, i64** %15, align 8
  %215 = load i32, i32* %9, align 4
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds i64, i64* %214, i64 %216
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* %13, align 8
  %220 = icmp sge i64 %218, %219
  br i1 %220, label %221, label %272

221:                                              ; preds = %213
  %222 = load i64*, i64** %15, align 8
  %223 = load i32, i32* %9, align 4
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds i64, i64* %222, i64 %224
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* %14, align 8
  %228 = icmp sle i64 %226, %227
  br i1 %228, label %229, label %272

229:                                              ; preds = %221
  %230 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %231 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %230, i32 0, i32 7
  %232 = load %struct.TYPE_2__*, %struct.TYPE_2__** %231, align 8
  %233 = load i64*, i64** %15, align 8
  %234 = load i32, i32* %9, align 4
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds i64, i64* %233, i64 %235
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* %13, align 8
  %239 = sub nsw i64 %237, %238
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %272

244:                                              ; preds = %229
  %245 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %246 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %245, i32 0, i32 6
  %247 = load i64*, i64** %246, align 8
  %248 = load i64*, i64** %15, align 8
  %249 = load i32, i32* %9, align 4
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds i64, i64* %248, i64 %250
  %252 = load i64, i64* %251, align 8
  %253 = load i32, i32* %10, align 4
  %254 = call i64 @search(i64* %247, i64 %252, i32 %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %272

256:                                              ; preds = %244
  %257 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %258 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %259 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %260 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %259, i32 0, i32 7
  %261 = load %struct.TYPE_2__*, %struct.TYPE_2__** %260, align 8
  %262 = load i64*, i64** %15, align 8
  %263 = load i32, i32* %9, align 4
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds i64, i64* %262, i64 %264
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* %13, align 8
  %268 = sub nsw i64 %266, %267
  %269 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i64 %268
  %270 = load i32, i32* %8, align 4
  %271 = call i32 @hid_process_event(%struct.hid_device* %257, %struct.hid_field* %258, %struct.TYPE_2__* %269, i32 1, i32 %270)
  br label %272

272:                                              ; preds = %256, %244, %229, %221, %213
  br label %273

273:                                              ; preds = %272, %129
  %274 = load i32, i32* %9, align 4
  %275 = add i32 %274, 1
  store i32 %275, i32* %9, align 4
  br label %118

276:                                              ; preds = %118
  %277 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %278 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %277, i32 0, i32 6
  %279 = load i64*, i64** %278, align 8
  %280 = load i64*, i64** %15, align 8
  %281 = load i32, i32* %10, align 4
  %282 = zext i32 %281 to i64
  %283 = mul i64 %282, 8
  %284 = trunc i64 %283 to i32
  %285 = call i32 @memcpy(i64* %279, i64* %280, i32 %284)
  br label %286

286:                                              ; preds = %276, %112
  %287 = load i64*, i64** %15, align 8
  %288 = call i32 @kfree(i64* %287)
  br label %289

289:                                              ; preds = %286, %38
  ret void
}

declare dso_local i64* @kmalloc(i32, i32) #1

declare dso_local i64 @snto32(i64, i32) #1

declare dso_local i64 @extract(i32*, i32, i32) #1

declare dso_local i32 @hid_process_event(%struct.hid_device*, %struct.hid_field*, %struct.TYPE_2__*, i32, i32) #1

declare dso_local i64 @search(i64*, i64, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

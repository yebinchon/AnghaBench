; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-device.c_read_bus_info_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-device.c_read_bus_info_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_device = type { i32, i32*, i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }

@READ_BIB_ROM_SIZE = common dso_local global i32 0, align 4
@READ_BIB_STACK_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SCODE_100 = common dso_local global i32 0, align 4
@RCODE_COMPLETE = common dso_local global i64 0, align 8
@SCODE_BETA = common dso_local global i32 0, align 4
@fw_device_rwsem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_device*, i32)* @read_bus_info_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_bus_info_block(%struct.fw_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fw_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.fw_device* %0, %struct.fw_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 -1, i32* %15, align 4
  %17 = load i32, i32* @READ_BIB_ROM_SIZE, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 4, %18
  %20 = load i32, i32* @READ_BIB_STACK_SIZE, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 4, %21
  %23 = add i64 %19, %22
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32* @kmalloc(i32 %24, i32 %25)
  store i32* %26, i32** %6, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %288

32:                                               ; preds = %2
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* @READ_BIB_ROM_SIZE, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32* %36, i32** %7, align 8
  %37 = load i32, i32* @SCODE_100, align 4
  %38 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %39 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  store i32 0, i32* %12, align 4
  br label %40

40:                                               ; preds = %67, %32
  %41 = load i32, i32* %12, align 4
  %42 = icmp slt i32 %41, 5
  br i1 %42, label %43, label %70

43:                                               ; preds = %40
  %44 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = call i64 @read_rom(%struct.fw_device* %44, i32 %45, i32 %46, i32* %50)
  %52 = load i64, i64* @RCODE_COMPLETE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  br label %284

55:                                               ; preds = %43
  %56 = load i32, i32* %12, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %284

66:                                               ; preds = %58, %55
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %12, align 4
  br label %40

70:                                               ; preds = %40
  %71 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %72 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %71, i32 0, i32 7
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %77 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 7
  %82 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %83 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %99, label %86

86:                                               ; preds = %70
  %87 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %88 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @SCODE_BETA, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %99, label %92

92:                                               ; preds = %86
  %93 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %94 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %93, i32 0, i32 6
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %133

99:                                               ; preds = %92, %86, %70
  %100 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %101 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @SCODE_BETA, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %99
  %106 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %107 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %106, i32 0, i32 6
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %112 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  br label %113

113:                                              ; preds = %105, %99
  br label %114

114:                                              ; preds = %127, %113
  %115 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %116 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @SCODE_100, align 4
  %119 = icmp sgt i32 %117, %118
  br i1 %119, label %120, label %132

120:                                              ; preds = %114
  %121 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %122 = load i32, i32* %5, align 4
  %123 = call i64 @read_rom(%struct.fw_device* %121, i32 %122, i32 0, i32* %16)
  %124 = load i64, i64* @RCODE_COMPLETE, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  br label %132

127:                                              ; preds = %120
  %128 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %129 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %129, align 8
  br label %114

132:                                              ; preds = %126, %114
  br label %133

133:                                              ; preds = %132, %92
  %134 = load i32, i32* %12, align 4
  store i32 %134, i32* %14, align 4
  store i32 0, i32* %10, align 4
  %135 = load i32*, i32** %7, align 8
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %10, align 4
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i32, i32* %135, i64 %138
  store i32 -1073741819, i32* %139, align 4
  br label %140

140:                                              ; preds = %239, %133
  %141 = load i32, i32* %10, align 4
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %240

143:                                              ; preds = %140
  %144 = load i32*, i32** %7, align 8
  %145 = load i32, i32* %10, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %144, i64 %147
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %11, align 4
  %150 = load i32, i32* %11, align 4
  %151 = and i32 %150, 16777215
  store i32 %151, i32* %12, align 4
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* @READ_BIB_ROM_SIZE, align 4
  %154 = icmp sge i32 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %143
  br label %284

156:                                              ; preds = %143
  %157 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* %12, align 4
  %160 = load i32*, i32** %6, align 8
  %161 = load i32, i32* %12, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = call i64 @read_rom(%struct.fw_device* %157, i32 %158, i32 %159, i32* %163)
  %165 = load i64, i64* @RCODE_COMPLETE, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %156
  br label %284

168:                                              ; preds = %156
  %169 = load i32, i32* %12, align 4
  %170 = load i32*, i32** %6, align 8
  %171 = load i32, i32* %12, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = ashr i32 %174, 16
  %176 = add nsw i32 %169, %175
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %13, align 4
  %178 = load i32, i32* %12, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %12, align 4
  %180 = load i32, i32* %13, align 4
  %181 = load i32, i32* @READ_BIB_ROM_SIZE, align 4
  %182 = icmp sgt i32 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %168
  br label %284

184:                                              ; preds = %168
  br label %185

185:                                              ; preds = %230, %184
  %186 = load i32, i32* %12, align 4
  %187 = load i32, i32* %13, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %233

189:                                              ; preds = %185
  %190 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %191 = load i32, i32* %5, align 4
  %192 = load i32, i32* %12, align 4
  %193 = load i32*, i32** %6, align 8
  %194 = load i32, i32* %12, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = call i64 @read_rom(%struct.fw_device* %190, i32 %191, i32 %192, i32* %196)
  %198 = load i64, i64* @RCODE_COMPLETE, align 8
  %199 = icmp ne i64 %197, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %189
  br label %284

201:                                              ; preds = %189
  %202 = load i32, i32* %11, align 4
  %203 = ashr i32 %202, 30
  %204 = icmp eq i32 %203, 3
  br i1 %204, label %205, label %230

205:                                              ; preds = %201
  %206 = load i32*, i32** %6, align 8
  %207 = load i32, i32* %12, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = ashr i32 %210, 30
  %212 = icmp sgt i32 %211, 1
  br i1 %212, label %213, label %230

213:                                              ; preds = %205
  %214 = load i32, i32* %10, align 4
  %215 = load i32, i32* @READ_BIB_STACK_SIZE, align 4
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %217, label %230

217:                                              ; preds = %213
  %218 = load i32, i32* %12, align 4
  %219 = load i32*, i32** %6, align 8
  %220 = load i32, i32* %12, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %218, %223
  %225 = load i32*, i32** %7, align 8
  %226 = load i32, i32* %10, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %10, align 4
  %228 = sext i32 %226 to i64
  %229 = getelementptr inbounds i32, i32* %225, i64 %228
  store i32 %224, i32* %229, align 4
  br label %230

230:                                              ; preds = %217, %213, %205, %201
  %231 = load i32, i32* %12, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %12, align 4
  br label %185

233:                                              ; preds = %185
  %234 = load i32, i32* %14, align 4
  %235 = load i32, i32* %12, align 4
  %236 = icmp slt i32 %234, %235
  br i1 %236, label %237, label %239

237:                                              ; preds = %233
  %238 = load i32, i32* %12, align 4
  store i32 %238, i32* %14, align 4
  br label %239

239:                                              ; preds = %237, %233
  br label %140

240:                                              ; preds = %140
  %241 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %242 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  store i32* %243, i32** %8, align 8
  %244 = load i32*, i32** %6, align 8
  %245 = load i32, i32* %14, align 4
  %246 = mul nsw i32 %245, 4
  %247 = load i32, i32* @GFP_KERNEL, align 4
  %248 = call i32* @kmemdup(i32* %244, i32 %246, i32 %247)
  store i32* %248, i32** %9, align 8
  %249 = load i32*, i32** %9, align 8
  %250 = icmp eq i32* %249, null
  br i1 %250, label %251, label %252

251:                                              ; preds = %240
  br label %284

252:                                              ; preds = %240
  %253 = call i32 @down_write(i32* @fw_device_rwsem)
  %254 = load i32*, i32** %9, align 8
  %255 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %256 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %255, i32 0, i32 1
  store i32* %254, i32** %256, align 8
  %257 = load i32, i32* %14, align 4
  %258 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %259 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %258, i32 0, i32 2
  store i32 %257, i32* %259, align 8
  %260 = call i32 @up_write(i32* @fw_device_rwsem)
  %261 = load i32*, i32** %8, align 8
  %262 = call i32 @kfree(i32* %261)
  store i32 0, i32* %15, align 4
  %263 = load i32*, i32** %6, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 2
  %265 = load i32, i32* %264, align 4
  %266 = ashr i32 %265, 12
  %267 = and i32 %266, 15
  %268 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %269 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %268, i32 0, i32 3
  store i32 %267, i32* %269, align 4
  %270 = load i32*, i32** %6, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 2
  %272 = load i32, i32* %271, align 4
  %273 = ashr i32 %272, 30
  %274 = and i32 %273, 1
  %275 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %276 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %275, i32 0, i32 4
  store i32 %274, i32* %276, align 8
  %277 = load i32*, i32** %6, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 2
  %279 = load i32, i32* %278, align 4
  %280 = ashr i32 %279, 31
  %281 = and i32 %280, 1
  %282 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %283 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %282, i32 0, i32 5
  store i32 %281, i32* %283, align 4
  br label %284

284:                                              ; preds = %252, %251, %200, %183, %167, %155, %65, %54
  %285 = load i32*, i32** %6, align 8
  %286 = call i32 @kfree(i32* %285)
  %287 = load i32, i32* %15, align 4
  store i32 %287, i32* %3, align 4
  br label %288

288:                                              ; preds = %284, %29
  %289 = load i32, i32* %3, align 4
  ret i32 %289
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i64 @read_rom(%struct.fw_device*, i32, i32, i32*) #1

declare dso_local i32* @kmemdup(i32*, i32, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

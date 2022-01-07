; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_mfd-core.c_mfd_add_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_mfd-core.c_mfd_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mfd_cell = type { i32, %struct.TYPE_4__*, i32, i32, i32, i64, i32 }
%struct.TYPE_4__ = type { i32, i64, i64, %struct.resource*, i32 }
%struct.resource = type { i32, i64, i64, %struct.resource*, i32 }
%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, %struct.mfd_cell*, %struct.resource*, i32)* @mfd_add_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mfd_add_device(%struct.device* %0, i32 %1, %struct.mfd_cell* %2, %struct.resource* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mfd_cell*, align 8
  %10 = alloca %struct.resource*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.resource*, align 8
  %13 = alloca %struct.platform_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.mfd_cell* %2, %struct.mfd_cell** %9, align 8
  store %struct.resource* %3, %struct.resource** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %14, align 4
  %18 = load %struct.mfd_cell*, %struct.mfd_cell** %9, align 8
  %19 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = load %struct.mfd_cell*, %struct.mfd_cell** %9, align 8
  %24 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = call %struct.platform_device* @platform_device_alloc(i32 %20, i64 %26)
  store %struct.platform_device* %27, %struct.platform_device** %13, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %13, align 8
  %29 = icmp ne %struct.platform_device* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %5
  br label %264

31:                                               ; preds = %5
  %32 = load %struct.mfd_cell*, %struct.mfd_cell** %9, align 8
  %33 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = mul i64 40, %35
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.resource* @kzalloc(i32 %37, i32 %38)
  store %struct.resource* %39, %struct.resource** %12, align 8
  %40 = load %struct.resource*, %struct.resource** %12, align 8
  %41 = icmp ne %struct.resource* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %31
  br label %261

43:                                               ; preds = %31
  %44 = load %struct.device*, %struct.device** %7, align 8
  %45 = load %struct.platform_device*, %struct.platform_device** %13, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store %struct.device* %44, %struct.device** %47, align 8
  %48 = load %struct.platform_device*, %struct.platform_device** %13, align 8
  %49 = load %struct.mfd_cell*, %struct.mfd_cell** %9, align 8
  %50 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @platform_set_drvdata(%struct.platform_device* %48, i32 %51)
  %53 = load %struct.platform_device*, %struct.platform_device** %13, align 8
  %54 = load %struct.mfd_cell*, %struct.mfd_cell** %9, align 8
  %55 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mfd_cell*, %struct.mfd_cell** %9, align 8
  %58 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @platform_device_add_data(%struct.platform_device* %53, i32 %56, i32 %59)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %43
  br label %258

64:                                               ; preds = %43
  store i32 0, i32* %15, align 4
  br label %65

65:                                               ; preds = %240, %64
  %66 = load i32, i32* %15, align 4
  %67 = load %struct.mfd_cell*, %struct.mfd_cell** %9, align 8
  %68 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %243

71:                                               ; preds = %65
  %72 = load %struct.mfd_cell*, %struct.mfd_cell** %9, align 8
  %73 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* %15, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.resource*, %struct.resource** %12, align 8
  %81 = load i32, i32* %15, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.resource, %struct.resource* %80, i64 %82
  %84 = getelementptr inbounds %struct.resource, %struct.resource* %83, i32 0, i32 4
  store i32 %79, i32* %84, align 8
  %85 = load %struct.mfd_cell*, %struct.mfd_cell** %9, align 8
  %86 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %85, i32 0, i32 1
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load i32, i32* %15, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.resource*, %struct.resource** %12, align 8
  %94 = load i32, i32* %15, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.resource, %struct.resource* %93, i64 %95
  %97 = getelementptr inbounds %struct.resource, %struct.resource* %96, i32 0, i32 0
  store i32 %92, i32* %97, align 8
  %98 = load %struct.mfd_cell*, %struct.mfd_cell** %9, align 8
  %99 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @IORESOURCE_MEM, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %153

109:                                              ; preds = %71
  %110 = load %struct.resource*, %struct.resource** %10, align 8
  %111 = icmp ne %struct.resource* %110, null
  br i1 %111, label %112, label %153

112:                                              ; preds = %109
  %113 = load %struct.resource*, %struct.resource** %10, align 8
  %114 = load %struct.resource*, %struct.resource** %12, align 8
  %115 = load i32, i32* %15, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.resource, %struct.resource* %114, i64 %116
  %118 = getelementptr inbounds %struct.resource, %struct.resource* %117, i32 0, i32 3
  store %struct.resource* %113, %struct.resource** %118, align 8
  %119 = load %struct.resource*, %struct.resource** %10, align 8
  %120 = getelementptr inbounds %struct.resource, %struct.resource* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.mfd_cell*, %struct.mfd_cell** %9, align 8
  %123 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %122, i32 0, i32 1
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = load i32, i32* %15, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %121, %129
  %131 = load %struct.resource*, %struct.resource** %12, align 8
  %132 = load i32, i32* %15, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.resource, %struct.resource* %131, i64 %133
  %135 = getelementptr inbounds %struct.resource, %struct.resource* %134, i32 0, i32 2
  store i64 %130, i64* %135, align 8
  %136 = load %struct.resource*, %struct.resource** %10, align 8
  %137 = getelementptr inbounds %struct.resource, %struct.resource* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.mfd_cell*, %struct.mfd_cell** %9, align 8
  %140 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %139, i32 0, i32 1
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = load i32, i32* %15, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %138, %146
  %148 = load %struct.resource*, %struct.resource** %12, align 8
  %149 = load i32, i32* %15, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.resource, %struct.resource* %148, i64 %150
  %152 = getelementptr inbounds %struct.resource, %struct.resource* %151, i32 0, i32 1
  store i64 %147, i64* %152, align 8
  br label %239

153:                                              ; preds = %109, %71
  %154 = load %struct.mfd_cell*, %struct.mfd_cell** %9, align 8
  %155 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %154, i32 0, i32 1
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = load i32, i32* %15, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @IORESOURCE_IRQ, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %198

165:                                              ; preds = %153
  %166 = load i32, i32* %11, align 4
  %167 = sext i32 %166 to i64
  %168 = load %struct.mfd_cell*, %struct.mfd_cell** %9, align 8
  %169 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %168, i32 0, i32 1
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = load i32, i32* %15, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = add nsw i64 %167, %175
  %177 = load %struct.resource*, %struct.resource** %12, align 8
  %178 = load i32, i32* %15, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.resource, %struct.resource* %177, i64 %179
  %181 = getelementptr inbounds %struct.resource, %struct.resource* %180, i32 0, i32 2
  store i64 %176, i64* %181, align 8
  %182 = load i32, i32* %11, align 4
  %183 = sext i32 %182 to i64
  %184 = load %struct.mfd_cell*, %struct.mfd_cell** %9, align 8
  %185 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %184, i32 0, i32 1
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %185, align 8
  %187 = load i32, i32* %15, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = add nsw i64 %183, %191
  %193 = load %struct.resource*, %struct.resource** %12, align 8
  %194 = load i32, i32* %15, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.resource, %struct.resource* %193, i64 %195
  %197 = getelementptr inbounds %struct.resource, %struct.resource* %196, i32 0, i32 1
  store i64 %192, i64* %197, align 8
  br label %238

198:                                              ; preds = %153
  %199 = load %struct.mfd_cell*, %struct.mfd_cell** %9, align 8
  %200 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %199, i32 0, i32 1
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %200, align 8
  %202 = load i32, i32* %15, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 3
  %206 = load %struct.resource*, %struct.resource** %205, align 8
  %207 = load %struct.resource*, %struct.resource** %12, align 8
  %208 = load i32, i32* %15, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.resource, %struct.resource* %207, i64 %209
  %211 = getelementptr inbounds %struct.resource, %struct.resource* %210, i32 0, i32 3
  store %struct.resource* %206, %struct.resource** %211, align 8
  %212 = load %struct.mfd_cell*, %struct.mfd_cell** %9, align 8
  %213 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %212, i32 0, i32 1
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %213, align 8
  %215 = load i32, i32* %15, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.resource*, %struct.resource** %12, align 8
  %221 = load i32, i32* %15, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.resource, %struct.resource* %220, i64 %222
  %224 = getelementptr inbounds %struct.resource, %struct.resource* %223, i32 0, i32 2
  store i64 %219, i64* %224, align 8
  %225 = load %struct.mfd_cell*, %struct.mfd_cell** %9, align 8
  %226 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %225, i32 0, i32 1
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** %226, align 8
  %228 = load i32, i32* %15, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.resource*, %struct.resource** %12, align 8
  %234 = load i32, i32* %15, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.resource, %struct.resource* %233, i64 %235
  %237 = getelementptr inbounds %struct.resource, %struct.resource* %236, i32 0, i32 1
  store i64 %232, i64* %237, align 8
  br label %238

238:                                              ; preds = %198, %165
  br label %239

239:                                              ; preds = %238, %112
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %15, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %15, align 4
  br label %65

243:                                              ; preds = %65
  %244 = load %struct.platform_device*, %struct.platform_device** %13, align 8
  %245 = load %struct.resource*, %struct.resource** %12, align 8
  %246 = load %struct.mfd_cell*, %struct.mfd_cell** %9, align 8
  %247 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @platform_device_add_resources(%struct.platform_device* %244, %struct.resource* %245, i32 %248)
  %250 = load %struct.platform_device*, %struct.platform_device** %13, align 8
  %251 = call i32 @platform_device_add(%struct.platform_device* %250)
  store i32 %251, i32* %14, align 4
  %252 = load i32, i32* %14, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %243
  br label %258

255:                                              ; preds = %243
  %256 = load %struct.resource*, %struct.resource** %12, align 8
  %257 = call i32 @kfree(%struct.resource* %256)
  store i32 0, i32* %6, align 4
  br label %266

258:                                              ; preds = %254, %63
  %259 = load %struct.resource*, %struct.resource** %12, align 8
  %260 = call i32 @kfree(%struct.resource* %259)
  br label %261

261:                                              ; preds = %258, %42
  %262 = load %struct.platform_device*, %struct.platform_device** %13, align 8
  %263 = call i32 @platform_device_put(%struct.platform_device* %262)
  br label %264

264:                                              ; preds = %261, %30
  %265 = load i32, i32* %14, align 4
  store i32 %265, i32* %6, align 4
  br label %266

266:                                              ; preds = %264, %255
  %267 = load i32, i32* %6, align 4
  ret i32 %267
}

declare dso_local %struct.platform_device* @platform_device_alloc(i32, i64) #1

declare dso_local %struct.resource* @kzalloc(i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32) #1

declare dso_local i32 @platform_device_add_data(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @platform_device_add_resources(%struct.platform_device*, %struct.resource*, i32) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @kfree(%struct.resource*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

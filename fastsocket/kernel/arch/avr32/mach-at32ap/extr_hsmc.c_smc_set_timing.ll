; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/mach-at32ap/extr_hsmc.c_smc_set_timing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/mach-at32ap/extr_hsmc.c_smc_set_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.smc_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.smc_timing = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@hsmc = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smc_set_timing(%struct.smc_config* %0, %struct.smc_timing* %1) #0 {
  %3 = alloca %struct.smc_config*, align 8
  %4 = alloca %struct.smc_timing*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.smc_config* %0, %struct.smc_config** %3, align 8
  store %struct.smc_timing* %1, %struct.smc_timing** %4, align 8
  %8 = load %struct.smc_config*, %struct.smc_config** %3, align 8
  %9 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %8, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = load %struct.smc_config*, %struct.smc_config** %3, align 8
  %11 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %10, i32 0, i32 1
  store i32 0, i32* %11, align 4
  %12 = load %struct.smc_config*, %struct.smc_config** %3, align 8
  %13 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %12, i32 0, i32 2
  store i32 0, i32* %13, align 4
  %14 = load %struct.smc_config*, %struct.smc_config** %3, align 8
  %15 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %14, i32 0, i32 3
  store i32 0, i32* %15, align 4
  %16 = load %struct.smc_config*, %struct.smc_config** %3, align 8
  %17 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %16, i32 0, i32 4
  store i32 0, i32* %17, align 4
  %18 = load %struct.smc_config*, %struct.smc_config** %3, align 8
  %19 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %18, i32 0, i32 5
  store i32 0, i32* %19, align 4
  %20 = load %struct.smc_config*, %struct.smc_config** %3, align 8
  %21 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %20, i32 0, i32 6
  store i32 0, i32* %21, align 4
  %22 = load %struct.smc_config*, %struct.smc_config** %3, align 8
  %23 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %22, i32 0, i32 7
  store i32 0, i32* %23, align 4
  %24 = load %struct.smc_config*, %struct.smc_config** %3, align 8
  %25 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %24, i32 0, i32 8
  store i32 0, i32* %25, align 4
  %26 = load %struct.smc_config*, %struct.smc_config** %3, align 8
  %27 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %26, i32 0, i32 9
  store i32 0, i32* %27, align 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hsmc, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @clk_get_rate(i32 %30)
  %32 = sdiv i32 %31, 10000
  %33 = shl i32 %32, 16
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = udiv i64 %35, 100000
  store i64 %36, i64* %7, align 8
  %37 = load %struct.smc_timing*, %struct.smc_timing** %4, align 8
  %38 = getelementptr inbounds %struct.smc_timing, %struct.smc_timing* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %2
  %42 = load %struct.smc_timing*, %struct.smc_timing** %4, align 8
  %43 = getelementptr inbounds %struct.smc_timing, %struct.smc_timing* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = mul i64 %44, %45
  %47 = add i64 %46, 65535
  %48 = lshr i64 %47, 16
  %49 = trunc i64 %48 to i32
  %50 = load %struct.smc_config*, %struct.smc_config** %3, align 8
  %51 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %41, %2
  %53 = load %struct.smc_timing*, %struct.smc_timing** %4, align 8
  %54 = getelementptr inbounds %struct.smc_timing, %struct.smc_timing* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = load %struct.smc_timing*, %struct.smc_timing** %4, align 8
  %59 = getelementptr inbounds %struct.smc_timing, %struct.smc_timing* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = mul i64 %60, %61
  %63 = add i64 %62, 65535
  %64 = lshr i64 %63, 16
  %65 = trunc i64 %64 to i32
  %66 = load %struct.smc_config*, %struct.smc_config** %3, align 8
  %67 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %57, %52
  %69 = load %struct.smc_timing*, %struct.smc_timing** %4, align 8
  %70 = getelementptr inbounds %struct.smc_timing, %struct.smc_timing* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %68
  %74 = load %struct.smc_timing*, %struct.smc_timing** %4, align 8
  %75 = getelementptr inbounds %struct.smc_timing, %struct.smc_timing* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %7, align 8
  %78 = mul i64 %76, %77
  %79 = add i64 %78, 65535
  %80 = lshr i64 %79, 16
  %81 = trunc i64 %80 to i32
  %82 = load %struct.smc_config*, %struct.smc_config** %3, align 8
  %83 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %73, %68
  %85 = load %struct.smc_timing*, %struct.smc_timing** %4, align 8
  %86 = getelementptr inbounds %struct.smc_timing, %struct.smc_timing* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = icmp sgt i64 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %84
  %90 = load %struct.smc_timing*, %struct.smc_timing** %4, align 8
  %91 = getelementptr inbounds %struct.smc_timing, %struct.smc_timing* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %7, align 8
  %94 = mul i64 %92, %93
  %95 = add i64 %94, 65535
  %96 = lshr i64 %95, 16
  %97 = trunc i64 %96 to i32
  %98 = load %struct.smc_config*, %struct.smc_config** %3, align 8
  %99 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %89, %84
  %101 = load %struct.smc_timing*, %struct.smc_timing** %4, align 8
  %102 = getelementptr inbounds %struct.smc_timing, %struct.smc_timing* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = icmp sgt i64 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %100
  %106 = load %struct.smc_timing*, %struct.smc_timing** %4, align 8
  %107 = getelementptr inbounds %struct.smc_timing, %struct.smc_timing* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %7, align 8
  %110 = mul i64 %108, %109
  %111 = add i64 %110, 65535
  %112 = lshr i64 %111, 16
  %113 = trunc i64 %112 to i32
  %114 = load %struct.smc_config*, %struct.smc_config** %3, align 8
  %115 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %105, %100
  %117 = load %struct.smc_timing*, %struct.smc_timing** %4, align 8
  %118 = getelementptr inbounds %struct.smc_timing, %struct.smc_timing* %117, i32 0, i32 5
  %119 = load i64, i64* %118, align 8
  %120 = icmp sgt i64 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %116
  %122 = load %struct.smc_timing*, %struct.smc_timing** %4, align 8
  %123 = getelementptr inbounds %struct.smc_timing, %struct.smc_timing* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %7, align 8
  %126 = mul i64 %124, %125
  %127 = add i64 %126, 65535
  %128 = lshr i64 %127, 16
  %129 = trunc i64 %128 to i32
  %130 = load %struct.smc_config*, %struct.smc_config** %3, align 8
  %131 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %130, i32 0, i32 5
  store i32 %129, i32* %131, align 4
  br label %132

132:                                              ; preds = %121, %116
  %133 = load %struct.smc_timing*, %struct.smc_timing** %4, align 8
  %134 = getelementptr inbounds %struct.smc_timing, %struct.smc_timing* %133, i32 0, i32 6
  %135 = load i64, i64* %134, align 8
  %136 = icmp sgt i64 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %132
  %138 = load %struct.smc_timing*, %struct.smc_timing** %4, align 8
  %139 = getelementptr inbounds %struct.smc_timing, %struct.smc_timing* %138, i32 0, i32 6
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %7, align 8
  %142 = mul i64 %140, %141
  %143 = add i64 %142, 65535
  %144 = lshr i64 %143, 16
  %145 = trunc i64 %144 to i32
  %146 = load %struct.smc_config*, %struct.smc_config** %3, align 8
  %147 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %146, i32 0, i32 6
  store i32 %145, i32* %147, align 4
  br label %148

148:                                              ; preds = %137, %132
  %149 = load %struct.smc_timing*, %struct.smc_timing** %4, align 8
  %150 = getelementptr inbounds %struct.smc_timing, %struct.smc_timing* %149, i32 0, i32 7
  %151 = load i64, i64* %150, align 8
  %152 = icmp sgt i64 %151, 0
  br i1 %152, label %153, label %164

153:                                              ; preds = %148
  %154 = load %struct.smc_timing*, %struct.smc_timing** %4, align 8
  %155 = getelementptr inbounds %struct.smc_timing, %struct.smc_timing* %154, i32 0, i32 7
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* %7, align 8
  %158 = mul i64 %156, %157
  %159 = add i64 %158, 65535
  %160 = lshr i64 %159, 16
  %161 = trunc i64 %160 to i32
  %162 = load %struct.smc_config*, %struct.smc_config** %3, align 8
  %163 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %162, i32 0, i32 7
  store i32 %161, i32* %163, align 4
  br label %164

164:                                              ; preds = %153, %148
  %165 = load %struct.smc_timing*, %struct.smc_timing** %4, align 8
  %166 = getelementptr inbounds %struct.smc_timing, %struct.smc_timing* %165, i32 0, i32 8
  %167 = load i64, i64* %166, align 8
  %168 = icmp sgt i64 %167, 0
  br i1 %168, label %169, label %180

169:                                              ; preds = %164
  %170 = load %struct.smc_timing*, %struct.smc_timing** %4, align 8
  %171 = getelementptr inbounds %struct.smc_timing, %struct.smc_timing* %170, i32 0, i32 8
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* %7, align 8
  %174 = mul i64 %172, %173
  %175 = add i64 %174, 65535
  %176 = lshr i64 %175, 16
  %177 = trunc i64 %176 to i32
  %178 = load %struct.smc_config*, %struct.smc_config** %3, align 8
  %179 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %178, i32 0, i32 8
  store i32 %177, i32* %179, align 4
  br label %180

180:                                              ; preds = %169, %164
  %181 = load %struct.smc_timing*, %struct.smc_timing** %4, align 8
  %182 = getelementptr inbounds %struct.smc_timing, %struct.smc_timing* %181, i32 0, i32 9
  %183 = load i64, i64* %182, align 8
  %184 = icmp sgt i64 %183, 0
  br i1 %184, label %185, label %196

185:                                              ; preds = %180
  %186 = load %struct.smc_timing*, %struct.smc_timing** %4, align 8
  %187 = getelementptr inbounds %struct.smc_timing, %struct.smc_timing* %186, i32 0, i32 9
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* %7, align 8
  %190 = mul i64 %188, %189
  %191 = add i64 %190, 65535
  %192 = lshr i64 %191, 16
  %193 = trunc i64 %192 to i32
  %194 = load %struct.smc_config*, %struct.smc_config** %3, align 8
  %195 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %194, i32 0, i32 9
  store i32 %193, i32* %195, align 4
  br label %196

196:                                              ; preds = %185, %180
  %197 = load %struct.smc_timing*, %struct.smc_timing** %4, align 8
  %198 = getelementptr inbounds %struct.smc_timing, %struct.smc_timing* %197, i32 0, i32 10
  %199 = load i64, i64* %198, align 8
  %200 = icmp sgt i64 %199, 0
  br i1 %200, label %201, label %210

201:                                              ; preds = %196
  %202 = load %struct.smc_timing*, %struct.smc_timing** %4, align 8
  %203 = getelementptr inbounds %struct.smc_timing, %struct.smc_timing* %202, i32 0, i32 10
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* %7, align 8
  %206 = mul i64 %204, %205
  %207 = add i64 %206, 65535
  %208 = lshr i64 %207, 16
  %209 = trunc i64 %208 to i32
  store i32 %209, i32* %5, align 4
  br label %211

210:                                              ; preds = %196
  store i32 1, i32* %5, align 4
  br label %211

211:                                              ; preds = %210, %201
  %212 = load %struct.smc_config*, %struct.smc_config** %3, align 8
  %213 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.smc_config*, %struct.smc_config** %3, align 8
  %216 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 4
  %218 = add nsw i32 %214, %217
  %219 = load i32, i32* %5, align 4
  %220 = add nsw i32 %218, %219
  store i32 %220, i32* %6, align 4
  %221 = load %struct.smc_config*, %struct.smc_config** %3, align 8
  %222 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %221, i32 0, i32 8
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %6, align 4
  %225 = icmp slt i32 %223, %224
  br i1 %225, label %226, label %230

226:                                              ; preds = %211
  %227 = load i32, i32* %6, align 4
  %228 = load %struct.smc_config*, %struct.smc_config** %3, align 8
  %229 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %228, i32 0, i32 8
  store i32 %227, i32* %229, align 4
  br label %230

230:                                              ; preds = %226, %211
  %231 = load %struct.smc_timing*, %struct.smc_timing** %4, align 8
  %232 = getelementptr inbounds %struct.smc_timing, %struct.smc_timing* %231, i32 0, i32 11
  %233 = load i64, i64* %232, align 8
  %234 = icmp sgt i64 %233, 0
  br i1 %234, label %235, label %244

235:                                              ; preds = %230
  %236 = load %struct.smc_timing*, %struct.smc_timing** %4, align 8
  %237 = getelementptr inbounds %struct.smc_timing, %struct.smc_timing* %236, i32 0, i32 11
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* %7, align 8
  %240 = mul i64 %238, %239
  %241 = add i64 %240, 65535
  %242 = lshr i64 %241, 16
  %243 = trunc i64 %242 to i32
  store i32 %243, i32* %5, align 4
  br label %245

244:                                              ; preds = %230
  store i32 1, i32* %5, align 4
  br label %245

245:                                              ; preds = %244, %235
  %246 = load %struct.smc_config*, %struct.smc_config** %3, align 8
  %247 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.smc_config*, %struct.smc_config** %3, align 8
  %250 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %249, i32 0, i32 5
  %251 = load i32, i32* %250, align 4
  %252 = add nsw i32 %248, %251
  %253 = load i32, i32* %5, align 4
  %254 = add nsw i32 %252, %253
  store i32 %254, i32* %6, align 4
  %255 = load %struct.smc_config*, %struct.smc_config** %3, align 8
  %256 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %255, i32 0, i32 8
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* %6, align 4
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %260, label %264

260:                                              ; preds = %245
  %261 = load i32, i32* %6, align 4
  %262 = load %struct.smc_config*, %struct.smc_config** %3, align 8
  %263 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %262, i32 0, i32 8
  store i32 %261, i32* %263, align 4
  br label %264

264:                                              ; preds = %260, %245
  %265 = load %struct.smc_timing*, %struct.smc_timing** %4, align 8
  %266 = getelementptr inbounds %struct.smc_timing, %struct.smc_timing* %265, i32 0, i32 12
  %267 = load i64, i64* %266, align 8
  %268 = icmp sgt i64 %267, 0
  br i1 %268, label %269, label %278

269:                                              ; preds = %264
  %270 = load %struct.smc_timing*, %struct.smc_timing** %4, align 8
  %271 = getelementptr inbounds %struct.smc_timing, %struct.smc_timing* %270, i32 0, i32 12
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* %7, align 8
  %274 = mul i64 %272, %273
  %275 = add i64 %274, 65535
  %276 = lshr i64 %275, 16
  %277 = trunc i64 %276 to i32
  store i32 %277, i32* %5, align 4
  br label %279

278:                                              ; preds = %264
  store i32 1, i32* %5, align 4
  br label %279

279:                                              ; preds = %278, %269
  %280 = load %struct.smc_config*, %struct.smc_config** %3, align 8
  %281 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.smc_config*, %struct.smc_config** %3, align 8
  %284 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %283, i32 0, i32 6
  %285 = load i32, i32* %284, align 4
  %286 = add nsw i32 %282, %285
  %287 = load i32, i32* %5, align 4
  %288 = add nsw i32 %286, %287
  store i32 %288, i32* %6, align 4
  %289 = load %struct.smc_config*, %struct.smc_config** %3, align 8
  %290 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %289, i32 0, i32 9
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* %6, align 4
  %293 = icmp slt i32 %291, %292
  br i1 %293, label %294, label %298

294:                                              ; preds = %279
  %295 = load i32, i32* %6, align 4
  %296 = load %struct.smc_config*, %struct.smc_config** %3, align 8
  %297 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %296, i32 0, i32 9
  store i32 %295, i32* %297, align 4
  br label %298

298:                                              ; preds = %294, %279
  %299 = load %struct.smc_timing*, %struct.smc_timing** %4, align 8
  %300 = getelementptr inbounds %struct.smc_timing, %struct.smc_timing* %299, i32 0, i32 13
  %301 = load i64, i64* %300, align 8
  %302 = icmp sgt i64 %301, 0
  br i1 %302, label %303, label %312

303:                                              ; preds = %298
  %304 = load %struct.smc_timing*, %struct.smc_timing** %4, align 8
  %305 = getelementptr inbounds %struct.smc_timing, %struct.smc_timing* %304, i32 0, i32 13
  %306 = load i64, i64* %305, align 8
  %307 = load i64, i64* %7, align 8
  %308 = mul i64 %306, %307
  %309 = add i64 %308, 65535
  %310 = lshr i64 %309, 16
  %311 = trunc i64 %310 to i32
  store i32 %311, i32* %5, align 4
  br label %313

312:                                              ; preds = %298
  store i32 1, i32* %5, align 4
  br label %313

313:                                              ; preds = %312, %303
  %314 = load %struct.smc_config*, %struct.smc_config** %3, align 8
  %315 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.smc_config*, %struct.smc_config** %3, align 8
  %318 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %317, i32 0, i32 7
  %319 = load i32, i32* %318, align 4
  %320 = add nsw i32 %316, %319
  %321 = load i32, i32* %5, align 4
  %322 = add nsw i32 %320, %321
  store i32 %322, i32* %6, align 4
  %323 = load %struct.smc_config*, %struct.smc_config** %3, align 8
  %324 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %323, i32 0, i32 9
  %325 = load i32, i32* %324, align 4
  %326 = load i32, i32* %6, align 4
  %327 = icmp slt i32 %325, %326
  br i1 %327, label %328, label %332

328:                                              ; preds = %313
  %329 = load i32, i32* %6, align 4
  %330 = load %struct.smc_config*, %struct.smc_config** %3, align 8
  %331 = getelementptr inbounds %struct.smc_config, %struct.smc_config* %330, i32 0, i32 9
  store i32 %329, i32* %331, align 4
  br label %332

332:                                              ; preds = %328, %313
  ret void
}

declare dso_local i32 @clk_get_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

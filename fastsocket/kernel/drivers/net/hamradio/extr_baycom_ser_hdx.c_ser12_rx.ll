; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_baycom_ser_hdx.c_ser12_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_baycom_ser_hdx.c_ser12_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.baycom_state = type { i32, %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i8, i32, i64, i64, i32, i8, i8* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.baycom_state*)* @ser12_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ser12_rx(%struct.net_device* %0, %struct.baycom_state* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.baycom_state*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.baycom_state* %1, %struct.baycom_state** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @MSR(i32 %12)
  %14 = call i32 @inb(i32 %13)
  %15 = and i32 %14, 16
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %5, align 1
  %17 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %18 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %17, i32 0, i32 2
  %19 = load i8, i8* %5, align 1
  %20 = call i32 @hdlcdrv_channelbit(i32* %18, i8 zeroext %19)
  %21 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %22 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = shl i32 %25, 1
  %27 = load i8, i8* %5, align 1
  %28 = zext i8 %27 to i32
  %29 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %30 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i8, i8* %32, align 4
  %34 = zext i8 %33 to i32
  %35 = icmp ne i32 %28, %34
  %36 = zext i1 %35 to i32
  %37 = or i32 %26, %36
  %38 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %39 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 8
  %42 = load i8, i8* %5, align 1
  %43 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %44 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  store i8 %42, i8* %46, align 4
  %47 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %48 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, 1
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %125

54:                                               ; preds = %2
  %55 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %56 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %117, label %59

59:                                               ; preds = %54
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %60 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %61 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = ashr i32 %64, 1
  %66 = and i32 %65, 1
  %67 = load i32, i32* %6, align 4
  %68 = add i32 %67, %66
  store i32 %68, i32* %6, align 4
  %69 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %70 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, 2147483646
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %59
  %77 = load i32, i32* %6, align 4
  %78 = add i32 %77, 2
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %76, %59
  %80 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %81 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = ashr i32 %84, 2
  %86 = and i32 %85, 1
  %87 = load i32, i32* %7, align 4
  %88 = add i32 %87, %86
  store i32 %88, i32* %7, align 4
  %89 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %90 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = ashr i32 %93, 3
  %95 = and i32 %94, 1
  %96 = load i32, i32* %7, align 4
  %97 = add i32 %96, %95
  store i32 %97, i32* %7, align 4
  %98 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %99 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = ashr i32 %102, 4
  %104 = and i32 %103, 1
  %105 = load i32, i32* %7, align 4
  %106 = add i32 %105, %104
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %6, align 4
  %108 = mul i32 16, %107
  %109 = load i32, i32* %7, align 4
  %110 = sub i32 %108, %109
  %111 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %112 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = add i32 %115, %110
  store i32 %116, i32* %114, align 8
  br label %124

117:                                              ; preds = %54
  %118 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %119 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %117, %79
  br label %125

125:                                              ; preds = %124, %2
  %126 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %127 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 7
  %130 = load i8*, i8** %129, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %185, label %132

132:                                              ; preds = %125
  %133 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %134 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %133, i32 0, i32 2
  %135 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %136 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %142 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %140, %145
  %147 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %148 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = add nsw i64 %146, %151
  %153 = icmp slt i64 %152, 0
  %154 = zext i1 %153 to i32
  %155 = call i32 @hdlcdrv_setdcd(i32* %134, i32 %154)
  %156 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %157 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %162 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 4
  store i64 %160, i64* %164, align 8
  %165 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %166 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = sext i32 %169 to i64
  %171 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %172 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 3
  store i64 %170, i64* %174, align 8
  %175 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %176 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 2
  store i32 2, i32* %178, align 8
  %179 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %180 = call i8* @SER12_DCD_INTERVAL(%struct.baycom_state* %179)
  %181 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %182 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 7
  store i8* %180, i8** %184, align 8
  br label %185

185:                                              ; preds = %132, %125
  %186 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %187 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 7
  %190 = load i8*, i8** %189, align 8
  %191 = getelementptr inbounds i8, i8* %190, i32 -1
  store i8* %191, i8** %189, align 8
  %192 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %193 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %338, label %196

196:                                              ; preds = %185
  %197 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %198 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 5
  %201 = load i32, i32* %200, align 8
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %196
  %204 = load %struct.net_device*, %struct.net_device** %3, align 8
  %205 = call i32 @ser12_set_divisor(%struct.net_device* %204, i32 4)
  br label %257

206:                                              ; preds = %196
  %207 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %208 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = and i32 %211, 7
  switch i32 %212, label %219 [
    i32 1, label %213
    i32 4, label %216
  ]

213:                                              ; preds = %206
  %214 = load %struct.net_device*, %struct.net_device** %3, align 8
  %215 = call i32 @ser12_set_divisor(%struct.net_device* %214, i32 5)
  br label %222

216:                                              ; preds = %206
  %217 = load %struct.net_device*, %struct.net_device** %3, align 8
  %218 = call i32 @ser12_set_divisor(%struct.net_device* %217, i32 3)
  br label %222

219:                                              ; preds = %206
  %220 = load %struct.net_device*, %struct.net_device** %3, align 8
  %221 = call i32 @ser12_set_divisor(%struct.net_device* %220, i32 4)
  br label %222

222:                                              ; preds = %219, %216, %213
  %223 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %224 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = ashr i32 %226, 1
  store i32 %227, i32* %225, align 8
  %228 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %229 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 1
  %232 = load i8, i8* %231, align 4
  %233 = zext i8 %232 to i32
  %234 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %235 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 6
  %238 = load i8, i8* %237, align 4
  %239 = zext i8 %238 to i32
  %240 = icmp eq i32 %233, %239
  br i1 %240, label %241, label %247

241:                                              ; preds = %222
  %242 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %243 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = or i32 %245, 65536
  store i32 %246, i32* %244, align 8
  br label %247

247:                                              ; preds = %241, %222
  %248 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %249 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 1
  %252 = load i8, i8* %251, align 4
  %253 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %254 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 6
  store i8 %252, i8* %256, align 4
  br label %257

257:                                              ; preds = %247, %203
  %258 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %259 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 5
  %262 = load i32, i32* %261, align 8
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %261, align 8
  %264 = icmp sge i32 %263, 3
  br i1 %264, label %265, label %270

265:                                              ; preds = %257
  %266 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %267 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 5
  store i32 0, i32* %269, align 8
  br label %270

270:                                              ; preds = %265, %257
  %271 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %272 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = and i32 %275, 1
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %337

278:                                              ; preds = %270
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %279 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %280 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = ashr i32 %283, 1
  %285 = and i32 %284, 1
  %286 = load i32, i32* %8, align 4
  %287 = add i32 %286, %285
  store i32 %287, i32* %8, align 4
  %288 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %289 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = and i32 %292, 2147483646
  %294 = icmp ne i32 %293, 0
  %295 = xor i1 %294, true
  %296 = zext i1 %295 to i32
  %297 = shl i32 %296, 1
  %298 = load i32, i32* %8, align 4
  %299 = add i32 %298, %297
  store i32 %299, i32* %8, align 4
  %300 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %301 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = ashr i32 %304, 2
  %306 = and i32 %305, 1
  %307 = load i32, i32* %9, align 4
  %308 = add i32 %307, %306
  store i32 %308, i32* %9, align 4
  %309 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %310 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = ashr i32 %313, 3
  %315 = and i32 %314, 1
  %316 = load i32, i32* %9, align 4
  %317 = add i32 %316, %315
  store i32 %317, i32* %9, align 4
  %318 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %319 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = ashr i32 %322, 4
  %324 = and i32 %323, 1
  %325 = load i32, i32* %9, align 4
  %326 = add i32 %325, %324
  store i32 %326, i32* %9, align 4
  %327 = load i32, i32* %8, align 4
  %328 = mul i32 16, %327
  %329 = load i32, i32* %9, align 4
  %330 = sub i32 %328, %329
  %331 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %332 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 8
  %336 = add i32 %335, %330
  store i32 %336, i32* %334, align 8
  br label %337

337:                                              ; preds = %278, %270
  br label %424

338:                                              ; preds = %185
  %339 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %340 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %339, i32 0, i32 1
  %341 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %341, i32 0, i32 5
  %343 = load i32, i32* %342, align 8
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %348

345:                                              ; preds = %338
  %346 = load %struct.net_device*, %struct.net_device** %3, align 8
  %347 = call i32 @ser12_set_divisor(%struct.net_device* %346, i32 6)
  br label %399

348:                                              ; preds = %338
  %349 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %350 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %349, i32 0, i32 1
  %351 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %350, i32 0, i32 1
  %352 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = and i32 %353, 3
  switch i32 %354, label %361 [
    i32 1, label %355
    i32 2, label %358
  ]

355:                                              ; preds = %348
  %356 = load %struct.net_device*, %struct.net_device** %3, align 8
  %357 = call i32 @ser12_set_divisor(%struct.net_device* %356, i32 7)
  br label %364

358:                                              ; preds = %348
  %359 = load %struct.net_device*, %struct.net_device** %3, align 8
  %360 = call i32 @ser12_set_divisor(%struct.net_device* %359, i32 5)
  br label %364

361:                                              ; preds = %348
  %362 = load %struct.net_device*, %struct.net_device** %3, align 8
  %363 = call i32 @ser12_set_divisor(%struct.net_device* %362, i32 6)
  br label %364

364:                                              ; preds = %361, %358, %355
  %365 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %366 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %365, i32 0, i32 1
  %367 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = ashr i32 %368, 1
  store i32 %369, i32* %367, align 8
  %370 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %371 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %370, i32 0, i32 1
  %372 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %371, i32 0, i32 1
  %373 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %372, i32 0, i32 1
  %374 = load i8, i8* %373, align 4
  %375 = zext i8 %374 to i32
  %376 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %377 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %376, i32 0, i32 1
  %378 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %377, i32 0, i32 1
  %379 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %378, i32 0, i32 6
  %380 = load i8, i8* %379, align 4
  %381 = zext i8 %380 to i32
  %382 = icmp eq i32 %375, %381
  br i1 %382, label %383, label %389

383:                                              ; preds = %364
  %384 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %385 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %384, i32 0, i32 1
  %386 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = or i32 %387, 65536
  store i32 %388, i32* %386, align 8
  br label %389

389:                                              ; preds = %383, %364
  %390 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %391 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %390, i32 0, i32 1
  %392 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %391, i32 0, i32 1
  %393 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %392, i32 0, i32 1
  %394 = load i8, i8* %393, align 4
  %395 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %396 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %395, i32 0, i32 1
  %397 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %396, i32 0, i32 1
  %398 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %397, i32 0, i32 6
  store i8 %394, i8* %398, align 4
  br label %399

399:                                              ; preds = %389, %345
  %400 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %401 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %400, i32 0, i32 1
  %402 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %401, i32 0, i32 1
  %403 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %402, i32 0, i32 5
  %404 = load i32, i32* %403, align 8
  %405 = icmp ne i32 %404, 0
  %406 = xor i1 %405, true
  %407 = zext i1 %406 to i32
  %408 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %409 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %408, i32 0, i32 1
  %410 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %409, i32 0, i32 1
  %411 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %410, i32 0, i32 5
  store i32 %407, i32* %411, align 8
  %412 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %413 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %412, i32 0, i32 1
  %414 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %413, i32 0, i32 1
  %415 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 8
  %417 = and i32 %416, 1
  %418 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %419 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %418, i32 0, i32 1
  %420 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %419, i32 0, i32 1
  %421 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %420, i32 0, i32 2
  %422 = load i32, i32* %421, align 8
  %423 = sub nsw i32 %422, %417
  store i32 %423, i32* %421, align 8
  br label %424

424:                                              ; preds = %399, %337
  %425 = load %struct.net_device*, %struct.net_device** %3, align 8
  %426 = getelementptr inbounds %struct.net_device, %struct.net_device* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 4
  %428 = call i32 @MCR(i32 %427)
  %429 = call i32 @outb(i32 13, i32 %428)
  %430 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %431 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %430, i32 0, i32 1
  %432 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 8
  %434 = and i32 %433, 1
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %448

436:                                              ; preds = %424
  %437 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %438 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %437, i32 0, i32 2
  %439 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %440 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %439, i32 0, i32 1
  %441 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 8
  %443 = ashr i32 %442, 1
  %444 = call i32 @hdlcdrv_putbits(i32* %438, i32 %443)
  %445 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %446 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %445, i32 0, i32 1
  %447 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %446, i32 0, i32 0
  store i32 65536, i32* %447, align 8
  br label %448

448:                                              ; preds = %436, %424
  %449 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %450 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %449, i32 0, i32 1
  %451 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %450, i32 0, i32 1
  %452 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %451, i32 0, i32 7
  %453 = load i8*, i8** %452, align 8
  %454 = icmp ne i8* %453, null
  br i1 %454, label %532, label %455

455:                                              ; preds = %448
  %456 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %457 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %456, i32 0, i32 0
  %458 = load i32, i32* %457, align 8
  %459 = and i32 %458, 1
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %478

461:                                              ; preds = %455
  %462 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %463 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %462, i32 0, i32 2
  %464 = load %struct.net_device*, %struct.net_device** %3, align 8
  %465 = getelementptr inbounds %struct.net_device, %struct.net_device* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 4
  %467 = call i32 @MSR(i32 %466)
  %468 = call i32 @inb(i32 %467)
  %469 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %470 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %469, i32 0, i32 0
  %471 = load i32, i32* %470, align 8
  %472 = xor i32 %468, %471
  %473 = and i32 %472, 128
  %474 = icmp ne i32 %473, 0
  %475 = xor i1 %474, true
  %476 = zext i1 %475 to i32
  %477 = call i32 @hdlcdrv_setdcd(i32* %463, i32 %476)
  br label %502

478:                                              ; preds = %455
  %479 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %480 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %479, i32 0, i32 2
  %481 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %482 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %481, i32 0, i32 1
  %483 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %482, i32 0, i32 1
  %484 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %483, i32 0, i32 2
  %485 = load i32, i32* %484, align 8
  %486 = sext i32 %485 to i64
  %487 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %488 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %487, i32 0, i32 1
  %489 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %488, i32 0, i32 1
  %490 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %489, i32 0, i32 3
  %491 = load i64, i64* %490, align 8
  %492 = add nsw i64 %486, %491
  %493 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %494 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %493, i32 0, i32 1
  %495 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %494, i32 0, i32 1
  %496 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %495, i32 0, i32 4
  %497 = load i64, i64* %496, align 8
  %498 = add nsw i64 %492, %497
  %499 = icmp slt i64 %498, 0
  %500 = zext i1 %499 to i32
  %501 = call i32 @hdlcdrv_setdcd(i32* %480, i32 %500)
  br label %502

502:                                              ; preds = %478, %461
  %503 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %504 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %503, i32 0, i32 1
  %505 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %504, i32 0, i32 1
  %506 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %505, i32 0, i32 3
  %507 = load i64, i64* %506, align 8
  %508 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %509 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %508, i32 0, i32 1
  %510 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %509, i32 0, i32 1
  %511 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %510, i32 0, i32 4
  store i64 %507, i64* %511, align 8
  %512 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %513 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %512, i32 0, i32 1
  %514 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %513, i32 0, i32 1
  %515 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %514, i32 0, i32 2
  %516 = load i32, i32* %515, align 8
  %517 = sext i32 %516 to i64
  %518 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %519 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %518, i32 0, i32 1
  %520 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %519, i32 0, i32 1
  %521 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %520, i32 0, i32 3
  store i64 %517, i64* %521, align 8
  %522 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %523 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %522, i32 0, i32 1
  %524 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %523, i32 0, i32 1
  %525 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %524, i32 0, i32 2
  store i32 2, i32* %525, align 8
  %526 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %527 = call i8* @SER12_DCD_INTERVAL(%struct.baycom_state* %526)
  %528 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %529 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %528, i32 0, i32 1
  %530 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %529, i32 0, i32 1
  %531 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %530, i32 0, i32 7
  store i8* %527, i8** %531, align 8
  br label %532

532:                                              ; preds = %502, %448
  %533 = load %struct.baycom_state*, %struct.baycom_state** %4, align 8
  %534 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %533, i32 0, i32 1
  %535 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %534, i32 0, i32 1
  %536 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %535, i32 0, i32 7
  %537 = load i8*, i8** %536, align 8
  %538 = getelementptr inbounds i8, i8* %537, i32 -1
  store i8* %538, i8** %536, align 8
  ret void
}

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @MSR(i32) #1

declare dso_local i32 @hdlcdrv_channelbit(i32*, i8 zeroext) #1

declare dso_local i32 @hdlcdrv_setdcd(i32*, i32) #1

declare dso_local i8* @SER12_DCD_INTERVAL(%struct.baycom_state*) #1

declare dso_local i32 @ser12_set_divisor(%struct.net_device*, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @MCR(i32) #1

declare dso_local i32 @hdlcdrv_putbits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

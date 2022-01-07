; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_baycom_ser_fdx.c_ser12_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_baycom_ser_fdx.c_ser12_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.baycom_state = type { i8, i32, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.timeval = type { i32 }

@HDLCDRV_MAGIC = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ser12_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ser12_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.baycom_state*, align 8
  %8 = alloca %struct.timeval, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.net_device*
  store %struct.net_device* %13, %struct.net_device** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.baycom_state* @netdev_priv(%struct.net_device* %14)
  store %struct.baycom_state* %15, %struct.baycom_state** %7, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %17 = icmp ne %struct.baycom_state* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %20 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @HDLCDRV_MAGIC, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18, %2
  %26 = load i32, i32* @IRQ_NONE, align 4
  store i32 %26, i32* %3, align 4
  br label %283

27:                                               ; preds = %18
  %28 = load %struct.net_device*, %struct.net_device** %6, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @IIR(i32 %30)
  %32 = call zeroext i8 @inb(i32 %31)
  store i8 %32, i8* %9, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, 1
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* @IRQ_NONE, align 4
  store i32 %37, i32* %3, align 4
  br label %283

38:                                               ; preds = %27
  %39 = call i32 @do_gettimeofday(%struct.timeval* %8)
  %40 = load %struct.net_device*, %struct.net_device** %6, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @MSR(i32 %42)
  %44 = call zeroext i8 @inb(i32 %43)
  store i8 %44, i8* %10, align 1
  %45 = load i8, i8* %10, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %38
  %50 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %51 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %50, i32 0, i32 0
  %52 = load i8, i8* %51, align 8
  %53 = zext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %49
  %56 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %57 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %56, i32 0, i32 2
  %58 = load i8, i8* %10, align 1
  %59 = zext i8 %58 to i32
  %60 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %61 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %60, i32 0, i32 0
  %62 = load i8, i8* %61, align 8
  %63 = zext i8 %62 to i32
  %64 = xor i32 %59, %63
  %65 = and i32 %64, 128
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i32 @hdlcdrv_setdcd(%struct.TYPE_11__* %57, i32 %68)
  br label %70

70:                                               ; preds = %55, %49, %38
  br label %71

71:                                               ; preds = %163, %70
  %72 = load i8, i8* %9, align 1
  %73 = zext i8 %72 to i32
  %74 = and i32 %73, 6
  switch i32 %74, label %125 [
    i32 6, label %75
    i32 4, label %81
    i32 2, label %87
  ]

75:                                               ; preds = %71
  %76 = load %struct.net_device*, %struct.net_device** %6, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @LSR(i32 %78)
  %80 = call zeroext i8 @inb(i32 %79)
  br label %157

81:                                               ; preds = %71
  %82 = load %struct.net_device*, %struct.net_device** %6, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @RBR(i32 %84)
  %86 = call zeroext i8 @inb(i32 %85)
  br label %157

87:                                               ; preds = %71
  %88 = load %struct.net_device*, %struct.net_device** %6, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @THR(i32 %90)
  %92 = call i32 @outb(i32 0, i32 %91)
  %93 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %94 = call i32 @baycom_int_freq(%struct.baycom_state* %93)
  %95 = load i32, i32* %11, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %11, align 4
  %97 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %98 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %118

102:                                              ; preds = %87
  %103 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %104 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = or i32 14, %111
  %113 = load %struct.net_device*, %struct.net_device** %6, align 8
  %114 = getelementptr inbounds %struct.net_device, %struct.net_device* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @MCR(i32 %115)
  %117 = call i32 @outb(i32 %112, i32 %116)
  br label %124

118:                                              ; preds = %87
  %119 = load %struct.net_device*, %struct.net_device** %6, align 8
  %120 = getelementptr inbounds %struct.net_device, %struct.net_device* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @MCR(i32 %121)
  %123 = call i32 @outb(i32 13, i32 %122)
  br label %124

124:                                              ; preds = %118, %102
  br label %157

125:                                              ; preds = %71
  %126 = load %struct.net_device*, %struct.net_device** %6, align 8
  %127 = getelementptr inbounds %struct.net_device, %struct.net_device* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @MSR(i32 %128)
  %130 = call zeroext i8 @inb(i32 %129)
  store i8 %130, i8* %10, align 1
  %131 = load i8, i8* %10, align 1
  %132 = zext i8 %131 to i32
  %133 = and i32 %132, 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %156

135:                                              ; preds = %125
  %136 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %137 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %136, i32 0, i32 0
  %138 = load i8, i8* %137, align 8
  %139 = zext i8 %138 to i32
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %156

141:                                              ; preds = %135
  %142 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %143 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %142, i32 0, i32 2
  %144 = load i8, i8* %10, align 1
  %145 = zext i8 %144 to i32
  %146 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %147 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %146, i32 0, i32 0
  %148 = load i8, i8* %147, align 8
  %149 = zext i8 %148 to i32
  %150 = xor i32 %145, %149
  %151 = and i32 %150, 128
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  %154 = zext i1 %153 to i32
  %155 = call i32 @hdlcdrv_setdcd(%struct.TYPE_11__* %143, i32 %154)
  br label %156

156:                                              ; preds = %141, %135, %125
  br label %157

157:                                              ; preds = %156, %124, %81, %75
  %158 = load %struct.net_device*, %struct.net_device** %6, align 8
  %159 = getelementptr inbounds %struct.net_device, %struct.net_device* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @IIR(i32 %160)
  %162 = call zeroext i8 @inb(i32 %161)
  store i8 %162, i8* %9, align 1
  br label %163

163:                                              ; preds = %157
  %164 = load i8, i8* %9, align 1
  %165 = zext i8 %164 to i32
  %166 = and i32 %165, 1
  %167 = icmp ne i32 %166, 0
  %168 = xor i1 %167, true
  br i1 %168, label %71, label %169

169:                                              ; preds = %163
  %170 = load %struct.net_device*, %struct.net_device** %6, align 8
  %171 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %172 = load i8, i8* %10, align 1
  %173 = zext i8 %172 to i32
  %174 = and i32 %173, 16
  %175 = trunc i32 %174 to i8
  %176 = call i32 @ser12_rx(%struct.net_device* %170, %struct.baycom_state* %171, %struct.timeval* %8, i8 zeroext %175)
  %177 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %178 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %238

182:                                              ; preds = %169
  %183 = load i32, i32* %11, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %238

185:                                              ; preds = %182
  %186 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %187 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = icmp sle i32 %190, 1
  br i1 %191, label %192, label %212

192:                                              ; preds = %185
  %193 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %194 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %193, i32 0, i32 2
  %195 = call i32 @hdlcdrv_getbits(%struct.TYPE_11__* %194)
  %196 = or i32 65536, %195
  %197 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %198 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 1
  store i32 %196, i32* %200, align 4
  %201 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %202 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %201, i32 0, i32 2
  %203 = call i64 @hdlcdrv_ptt(%struct.TYPE_11__* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %211, label %205

205:                                              ; preds = %192
  %206 = load %struct.net_device*, %struct.net_device** %6, align 8
  %207 = call i32 @ser12_set_divisor(%struct.net_device* %206, i32 144)
  %208 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %209 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %208, i32 0, i32 3
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 0
  store i32 0, i32* %210, align 8
  br label %239

211:                                              ; preds = %192
  br label %212

212:                                              ; preds = %211, %185
  %213 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %214 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %219 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %218, i32 0, i32 3
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = and i32 %222, 1
  %224 = xor i32 %217, %223
  %225 = icmp ne i32 %224, 0
  %226 = xor i1 %225, true
  %227 = zext i1 %226 to i32
  %228 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %229 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %228, i32 0, i32 3
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 0
  store i32 %227, i32* %231, align 4
  %232 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %233 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %232, i32 0, i32 3
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = ashr i32 %236, 1
  store i32 %237, i32* %235, align 4
  br label %238

238:                                              ; preds = %212, %182, %169
  br label %239

239:                                              ; preds = %238, %205
  %240 = call i32 (...) @local_irq_enable()
  %241 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %242 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %241, i32 0, i32 3
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %272, label %246

246:                                              ; preds = %239
  %247 = load i32, i32* %11, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %272

249:                                              ; preds = %246
  %250 = load %struct.net_device*, %struct.net_device** %6, align 8
  %251 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %252 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %251, i32 0, i32 2
  %253 = call i32 @hdlcdrv_arbitrate(%struct.net_device* %250, %struct.TYPE_11__* %252)
  %254 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %255 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %254, i32 0, i32 2
  %256 = call i64 @hdlcdrv_ptt(%struct.TYPE_11__* %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %271

258:                                              ; preds = %249
  %259 = load %struct.net_device*, %struct.net_device** %6, align 8
  %260 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %261 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @ser12_set_divisor(%struct.net_device* %259, i32 %262)
  %264 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %265 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %264, i32 0, i32 3
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 1
  store i32 1, i32* %267, align 4
  %268 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %269 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %268, i32 0, i32 3
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 0
  store i32 1, i32* %270, align 8
  br label %271

271:                                              ; preds = %258, %249
  br label %272

272:                                              ; preds = %271, %246, %239
  %273 = load %struct.net_device*, %struct.net_device** %6, align 8
  %274 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %275 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %274, i32 0, i32 2
  %276 = call i32 @hdlcdrv_transmitter(%struct.net_device* %273, %struct.TYPE_11__* %275)
  %277 = load %struct.net_device*, %struct.net_device** %6, align 8
  %278 = load %struct.baycom_state*, %struct.baycom_state** %7, align 8
  %279 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %278, i32 0, i32 2
  %280 = call i32 @hdlcdrv_receiver(%struct.net_device* %277, %struct.TYPE_11__* %279)
  %281 = call i32 (...) @local_irq_disable()
  %282 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %282, i32* %3, align 4
  br label %283

283:                                              ; preds = %272, %36, %25
  %284 = load i32, i32* %3, align 4
  ret i32 %284
}

declare dso_local %struct.baycom_state* @netdev_priv(%struct.net_device*) #1

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @IIR(i32) #1

declare dso_local i32 @do_gettimeofday(%struct.timeval*) #1

declare dso_local i32 @MSR(i32) #1

declare dso_local i32 @hdlcdrv_setdcd(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @LSR(i32) #1

declare dso_local i32 @RBR(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @THR(i32) #1

declare dso_local i32 @baycom_int_freq(%struct.baycom_state*) #1

declare dso_local i32 @MCR(i32) #1

declare dso_local i32 @ser12_rx(%struct.net_device*, %struct.baycom_state*, %struct.timeval*, i8 zeroext) #1

declare dso_local i32 @hdlcdrv_getbits(%struct.TYPE_11__*) #1

declare dso_local i64 @hdlcdrv_ptt(%struct.TYPE_11__*) #1

declare dso_local i32 @ser12_set_divisor(%struct.net_device*, i32) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @hdlcdrv_arbitrate(%struct.net_device*, %struct.TYPE_11__*) #1

declare dso_local i32 @hdlcdrv_transmitter(%struct.net_device*, %struct.TYPE_11__*) #1

declare dso_local i32 @hdlcdrv_receiver(%struct.net_device*, %struct.TYPE_11__*) #1

declare dso_local i32 @local_irq_disable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_netx-serial.c_netx_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_netx-serial.c_netx_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32, i32, i64 }
%struct.ktermios = type { i32, i32 }

@LINE_CR_FEN = common dso_local global i8 0, align 1
@CSIZE = common dso_local global i32 0, align 4
@LINE_CR_5BIT = common dso_local global i8 0, align 1
@LINE_CR_6BIT = common dso_local global i8 0, align 1
@LINE_CR_7BIT = common dso_local global i8 0, align 1
@LINE_CR_8BIT = common dso_local global i8 0, align 1
@CSTOPB = common dso_local global i32 0, align 4
@LINE_CR_STP2 = common dso_local global i8 0, align 1
@PARENB = common dso_local global i32 0, align 4
@LINE_CR_PEN = common dso_local global i8 0, align 1
@PARODD = common dso_local global i32 0, align 4
@LINE_CR_EPS = common dso_local global i8 0, align 1
@CRTSCTS = common dso_local global i32 0, align 4
@RTS_CR_AUTO = common dso_local global i8 0, align 1
@RTS_CR_CTS_CTR = common dso_local global i8 0, align 1
@RTS_CR_RTS_POL = common dso_local global i8 0, align 1
@UART_CR = common dso_local global i64 0, align 8
@CR_MSIE = common dso_local global i8 0, align 1
@CR_RIE = common dso_local global i8 0, align 1
@CR_TIE = common dso_local global i8 0, align 1
@CR_RTIE = common dso_local global i8 0, align 1
@UART_FR = common dso_local global i64 0, align 8
@FR_BUSY = common dso_local global i32 0, align 4
@CR_UART_EN = common dso_local global i8 0, align 1
@UART_BAUDDIV_MSB = common dso_local global i64 0, align 8
@UART_BAUDDIV_LSB = common dso_local global i64 0, align 8
@UART_LINE_CR = common dso_local global i64 0, align 8
@UART_RTS_CR = common dso_local global i64 0, align 8
@IGNPAR = common dso_local global i32 0, align 4
@SR_PE = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@SR_BE = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@SR_FE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @netx_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netx_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %12 = load i8, i8* @LINE_CR_FEN, align 1
  store i8 %12, i8* %10, align 1
  store i8 0, i8* %11, align 1
  %13 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %14 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CSIZE, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %46 [
    i32 131, label %18
    i32 130, label %25
    i32 129, label %32
    i32 128, label %39
  ]

18:                                               ; preds = %3
  %19 = load i8, i8* @LINE_CR_5BIT, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* %10, align 1
  %22 = zext i8 %21 to i32
  %23 = or i32 %22, %20
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %10, align 1
  br label %46

25:                                               ; preds = %3
  %26 = load i8, i8* @LINE_CR_6BIT, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* %10, align 1
  %29 = zext i8 %28 to i32
  %30 = or i32 %29, %27
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %10, align 1
  br label %46

32:                                               ; preds = %3
  %33 = load i8, i8* @LINE_CR_7BIT, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* %10, align 1
  %36 = zext i8 %35 to i32
  %37 = or i32 %36, %34
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %10, align 1
  br label %46

39:                                               ; preds = %3
  %40 = load i8, i8* @LINE_CR_8BIT, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* %10, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %43, %41
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %10, align 1
  br label %46

46:                                               ; preds = %3, %39, %32, %25, %18
  %47 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %48 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @CSTOPB, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load i8, i8* @LINE_CR_STP2, align 1
  %55 = zext i8 %54 to i32
  %56 = load i8, i8* %10, align 1
  %57 = zext i8 %56 to i32
  %58 = or i32 %57, %55
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %10, align 1
  br label %60

60:                                               ; preds = %53, %46
  %61 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %62 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @PARENB, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %88

67:                                               ; preds = %60
  %68 = load i8, i8* @LINE_CR_PEN, align 1
  %69 = zext i8 %68 to i32
  %70 = load i8, i8* %10, align 1
  %71 = zext i8 %70 to i32
  %72 = or i32 %71, %69
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %10, align 1
  %74 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %75 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @PARODD, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %67
  %81 = load i8, i8* @LINE_CR_EPS, align 1
  %82 = zext i8 %81 to i32
  %83 = load i8, i8* %10, align 1
  %84 = zext i8 %83 to i32
  %85 = or i32 %84, %82
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %10, align 1
  br label %87

87:                                               ; preds = %80, %67
  br label %88

88:                                               ; preds = %87, %60
  %89 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %90 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @CRTSCTS, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %88
  %96 = load i8, i8* @RTS_CR_AUTO, align 1
  %97 = zext i8 %96 to i32
  %98 = load i8, i8* @RTS_CR_CTS_CTR, align 1
  %99 = zext i8 %98 to i32
  %100 = or i32 %97, %99
  %101 = load i8, i8* @RTS_CR_RTS_POL, align 1
  %102 = zext i8 %101 to i32
  %103 = or i32 %100, %102
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %11, align 1
  br label %105

105:                                              ; preds = %95, %88
  %106 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %107 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %108 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %109 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %110 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sdiv i32 %111, 16
  %113 = call i32 @uart_get_baud_rate(%struct.uart_port* %106, %struct.ktermios* %107, %struct.ktermios* %108, i32 0, i32 %112)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = mul i32 %114, 4096
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = udiv i32 %116, 1000
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = mul i32 %118, 256
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = udiv i32 %120, 100000
  store i32 %121, i32* %8, align 4
  %122 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %123 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %122, i32 0, i32 3
  %124 = call i32 @spin_lock_irq(i32* %123)
  %125 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %126 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %127 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @uart_update_timeout(%struct.uart_port* %125, i32 %128, i32 %129)
  %131 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %132 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @UART_CR, align 8
  %135 = add nsw i64 %133, %134
  %136 = call i32 @readl(i64 %135)
  %137 = trunc i32 %136 to i8
  store i8 %137, i8* %9, align 1
  %138 = load i8, i8* %9, align 1
  %139 = zext i8 %138 to i32
  %140 = load i8, i8* @CR_MSIE, align 1
  %141 = zext i8 %140 to i32
  %142 = load i8, i8* @CR_RIE, align 1
  %143 = zext i8 %142 to i32
  %144 = or i32 %141, %143
  %145 = load i8, i8* @CR_TIE, align 1
  %146 = zext i8 %145 to i32
  %147 = or i32 %144, %146
  %148 = load i8, i8* @CR_RTIE, align 1
  %149 = zext i8 %148 to i32
  %150 = or i32 %147, %149
  %151 = xor i32 %150, -1
  %152 = and i32 %139, %151
  %153 = trunc i32 %152 to i8
  %154 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %155 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %154, i32 0, i32 4
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @UART_CR, align 8
  %158 = add nsw i64 %156, %157
  %159 = call i32 @writel(i8 zeroext %153, i64 %158)
  br label %160

160:                                              ; preds = %170, %105
  %161 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %162 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %161, i32 0, i32 4
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @UART_FR, align 8
  %165 = add nsw i64 %163, %164
  %166 = call i32 @readl(i64 %165)
  %167 = load i32, i32* @FR_BUSY, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %160
  br label %160

171:                                              ; preds = %160
  %172 = load i8, i8* %9, align 1
  %173 = zext i8 %172 to i32
  %174 = load i8, i8* @CR_UART_EN, align 1
  %175 = zext i8 %174 to i32
  %176 = xor i32 %175, -1
  %177 = and i32 %173, %176
  %178 = trunc i32 %177 to i8
  %179 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %180 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %179, i32 0, i32 4
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @UART_CR, align 8
  %183 = add nsw i64 %181, %182
  %184 = call i32 @writel(i8 zeroext %178, i64 %183)
  %185 = load i8, i8* @CR_MSIE, align 1
  %186 = zext i8 %185 to i32
  %187 = xor i32 %186, -1
  %188 = load i8, i8* %9, align 1
  %189 = zext i8 %188 to i32
  %190 = and i32 %189, %187
  %191 = trunc i32 %190 to i8
  store i8 %191, i8* %9, align 1
  %192 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %193 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %194 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i64 @UART_ENABLE_MS(%struct.uart_port* %192, i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %171
  %199 = load i8, i8* @CR_MSIE, align 1
  %200 = zext i8 %199 to i32
  %201 = load i8, i8* %9, align 1
  %202 = zext i8 %201 to i32
  %203 = or i32 %202, %200
  %204 = trunc i32 %203 to i8
  store i8 %204, i8* %9, align 1
  br label %205

205:                                              ; preds = %198, %171
  %206 = load i32, i32* %8, align 4
  %207 = lshr i32 %206, 8
  %208 = and i32 %207, 255
  %209 = trunc i32 %208 to i8
  %210 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %211 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %210, i32 0, i32 4
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @UART_BAUDDIV_MSB, align 8
  %214 = add nsw i64 %212, %213
  %215 = call i32 @writel(i8 zeroext %209, i64 %214)
  %216 = load i32, i32* %8, align 4
  %217 = and i32 %216, 255
  %218 = trunc i32 %217 to i8
  %219 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %220 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %219, i32 0, i32 4
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @UART_BAUDDIV_LSB, align 8
  %223 = add nsw i64 %221, %222
  %224 = call i32 @writel(i8 zeroext %218, i64 %223)
  %225 = load i8, i8* %10, align 1
  %226 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %227 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %226, i32 0, i32 4
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @UART_LINE_CR, align 8
  %230 = add nsw i64 %228, %229
  %231 = call i32 @writel(i8 zeroext %225, i64 %230)
  %232 = load i8, i8* %11, align 1
  %233 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %234 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %233, i32 0, i32 4
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @UART_RTS_CR, align 8
  %237 = add nsw i64 %235, %236
  %238 = call i32 @writel(i8 zeroext %232, i64 %237)
  %239 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %240 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %239, i32 0, i32 1
  store i32 0, i32* %240, align 4
  %241 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %242 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @IGNPAR, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %205
  %248 = load i32, i32* @SR_PE, align 4
  %249 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %250 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = or i32 %251, %248
  store i32 %252, i32* %250, align 4
  br label %253

253:                                              ; preds = %247, %205
  %254 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %255 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @IGNBRK, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %279

260:                                              ; preds = %253
  %261 = load i32, i32* @SR_BE, align 4
  %262 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %263 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = or i32 %264, %261
  store i32 %265, i32* %263, align 4
  %266 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %267 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @IGNPAR, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %278

272:                                              ; preds = %260
  %273 = load i32, i32* @SR_PE, align 4
  %274 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %275 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = or i32 %276, %273
  store i32 %277, i32* %275, align 4
  br label %278

278:                                              ; preds = %272, %260
  br label %279

279:                                              ; preds = %278, %253
  %280 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %281 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %280, i32 0, i32 2
  store i32 0, i32* %281, align 8
  %282 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %283 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* @BRKINT, align 4
  %286 = load i32, i32* @PARMRK, align 4
  %287 = or i32 %285, %286
  %288 = and i32 %284, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %296

290:                                              ; preds = %279
  %291 = load i32, i32* @SR_BE, align 4
  %292 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %293 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 8
  %295 = or i32 %294, %291
  store i32 %295, i32* %293, align 8
  br label %296

296:                                              ; preds = %290, %279
  %297 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %298 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @INPCK, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %311

303:                                              ; preds = %296
  %304 = load i32, i32* @SR_PE, align 4
  %305 = load i32, i32* @SR_FE, align 4
  %306 = or i32 %304, %305
  %307 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %308 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 8
  %310 = or i32 %309, %306
  store i32 %310, i32* %308, align 8
  br label %311

311:                                              ; preds = %303, %296
  %312 = load i8, i8* %9, align 1
  %313 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %314 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %313, i32 0, i32 4
  %315 = load i64, i64* %314, align 8
  %316 = load i64, i64* @UART_CR, align 8
  %317 = add nsw i64 %315, %316
  %318 = call i32 @writel(i8 zeroext %312, i64 %317)
  %319 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %320 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %319, i32 0, i32 3
  %321 = call i32 @spin_unlock_irq(i32* %320)
  ret void
}

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i8 zeroext, i64) #1

declare dso_local i64 @UART_ENABLE_MS(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

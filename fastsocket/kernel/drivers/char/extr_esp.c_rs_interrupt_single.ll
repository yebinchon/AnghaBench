; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_esp.c_rs_interrupt_single.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_esp.c_rs_interrupt_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp_struct = type { i32, i32, i64, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@UART_ESI_SID = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@UART_ESI_CMD1 = common dso_local global i32 0, align 4
@ESI_GET_ERR_STAT = common dso_local global i32 0, align 4
@UART_ESI_STAT1 = common dso_local global i32 0, align 4
@UART_ESI_STAT2 = common dso_local global i32 0, align 4
@ESP_STAT_RX_TIMEOUT = common dso_local global i32 0, align 4
@ESP_STAT_DMA_RX = common dso_local global i32 0, align 4
@ESP_STAT_DMA_TX = common dso_local global i32 0, align 4
@UART_IER_RDI = common dso_local global i32 0, align 4
@ESI_NO_COMMAND = common dso_local global i32 0, align 4
@ESI_GET_RX_AVAIL = common dso_local global i32 0, align 4
@dma_bytes = common dso_local global i64 0, align 8
@ESP_STAT_USE_PIO = common dso_local global i32 0, align 4
@UART_IER_THRI = common dso_local global i32 0, align 4
@ESI_SET_SRV_MASK = common dso_local global i32 0, align 4
@UART_ESI_CMD2 = common dso_local global i32 0, align 4
@ESI_GET_TX_AVAIL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rs_interrupt_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_interrupt_single(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.esp_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.esp_struct*
  store %struct.esp_struct* %12, %struct.esp_struct** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %14 = load i32, i32* @UART_ESI_SID, align 4
  %15 = call i32 @serial_in(%struct.esp_struct* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %17 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %16, i32 0, i32 3
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %20 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %19, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %2
  %25 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %26 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %25, i32 0, i32 3
  %27 = call i32 @spin_unlock(i32* %26)
  %28 = load i32, i32* @IRQ_NONE, align 4
  store i32 %28, i32* %3, align 4
  br label %298

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %69

33:                                               ; preds = %29
  %34 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %35 = load i32, i32* @UART_ESI_CMD1, align 4
  %36 = load i32, i32* @ESI_GET_ERR_STAT, align 4
  %37 = call i32 @serial_out(%struct.esp_struct* %34, i32 %35, i32 %36)
  %38 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %39 = load i32, i32* @UART_ESI_STAT1, align 4
  %40 = call i32 @serial_in(%struct.esp_struct* %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %42 = load i32, i32* @UART_ESI_STAT2, align 4
  %43 = call i32 @serial_in(%struct.esp_struct* %41, i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, 1
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %33
  %48 = load i32, i32* @ESP_STAT_RX_TIMEOUT, align 4
  %49 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %50 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %47, %33
  %54 = load i32, i32* %7, align 4
  %55 = and i32 %54, 32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %59 = call i32 @check_modem_status(%struct.esp_struct* %58)
  br label %60

60:                                               ; preds = %57, %53
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %61, 128
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %66 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %65, i32 0, i32 7
  %67 = call i32 @wake_up_interruptible(i32* %66)
  br label %68

68:                                               ; preds = %64, %60
  br label %69

69:                                               ; preds = %68, %29
  %70 = load i32, i32* %8, align 4
  %71 = and i32 %70, 136
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %7, align 4
  %75 = and i32 %74, 28
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %100

77:                                               ; preds = %73, %69
  %78 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %79 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @ESP_STAT_DMA_RX, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @receive_chars_dma_done(%struct.esp_struct* %85, i32 %86)
  br label %99

88:                                               ; preds = %77
  %89 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %90 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @ESP_STAT_DMA_TX, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %97 = call i32 @transmit_chars_dma_done(%struct.esp_struct* %96)
  br label %98

98:                                               ; preds = %95, %88
  br label %99

99:                                               ; preds = %98, %84
  br label %100

100:                                              ; preds = %99, %73
  %101 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %102 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @ESP_STAT_DMA_RX, align 4
  %105 = load i32, i32* @ESP_STAT_DMA_TX, align 4
  %106 = or i32 %104, %105
  %107 = and i32 %103, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %180, label %109

109:                                              ; preds = %100
  %110 = load i32, i32* %8, align 4
  %111 = and i32 %110, 1
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %109
  %114 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %115 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @ESP_STAT_RX_TIMEOUT, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %180

120:                                              ; preds = %113, %109
  %121 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %122 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @UART_IER_RDI, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %180

127:                                              ; preds = %120
  %128 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %129 = load i32, i32* @UART_ESI_CMD1, align 4
  %130 = load i32, i32* @ESI_NO_COMMAND, align 4
  %131 = call i32 @serial_out(%struct.esp_struct* %128, i32 %129, i32 %130)
  %132 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %133 = load i32, i32* @UART_ESI_CMD1, align 4
  %134 = load i32, i32* @ESI_GET_RX_AVAIL, align 4
  %135 = call i32 @serial_out(%struct.esp_struct* %132, i32 %133, i32 %134)
  %136 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %137 = load i32, i32* @UART_ESI_STAT1, align 4
  %138 = call i32 @serial_in(%struct.esp_struct* %136, i32 %137)
  %139 = shl i32 %138, 8
  store i32 %139, i32* %9, align 4
  %140 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %141 = load i32, i32* @UART_ESI_STAT2, align 4
  %142 = call i32 @serial_in(%struct.esp_struct* %140, i32 %141)
  %143 = load i32, i32* %9, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %9, align 4
  %145 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %146 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %145, i32 0, i32 6
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = load i32, i32* %9, align 4
  %150 = call i32 @tty_buffer_request_room(%struct.TYPE_6__* %148, i32 %149)
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %179

153:                                              ; preds = %127
  %154 = load i64, i64* @dma_bytes, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %170, label %156

156:                                              ; preds = %153
  %157 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %158 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @ESP_STAT_USE_PIO, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %170, label %163

163:                                              ; preds = %156
  %164 = load i32, i32* %9, align 4
  %165 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %166 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %165, i32 0, i32 5
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp sle i32 %164, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %163, %156, %153
  %171 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %172 = load i32, i32* %9, align 4
  %173 = call i32 @receive_chars_pio(%struct.esp_struct* %171, i32 %172)
  br label %178

174:                                              ; preds = %163
  %175 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %176 = load i32, i32* %9, align 4
  %177 = call i32 @receive_chars_dma(%struct.esp_struct* %175, i32 %176)
  br label %178

178:                                              ; preds = %174, %170
  br label %179

179:                                              ; preds = %178, %127
  br label %180

180:                                              ; preds = %179, %120, %113, %100
  %181 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %182 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @ESP_STAT_DMA_RX, align 4
  %185 = load i32, i32* @ESP_STAT_DMA_TX, align 4
  %186 = or i32 %184, %185
  %187 = and i32 %183, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %290, label %189

189:                                              ; preds = %180
  %190 = load i32, i32* %8, align 4
  %191 = and i32 %190, 2
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %290

193:                                              ; preds = %189
  %194 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %195 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @UART_IER_THRI, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %290

200:                                              ; preds = %193
  %201 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %202 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = icmp sle i64 %203, 0
  br i1 %204, label %213, label %205

205:                                              ; preds = %200
  %206 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %207 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %206, i32 0, i32 6
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %230

213:                                              ; preds = %205, %200
  %214 = load i32, i32* @UART_IER_THRI, align 4
  %215 = xor i32 %214, -1
  %216 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %217 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = and i32 %218, %215
  store i32 %219, i32* %217, align 4
  %220 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %221 = load i32, i32* @UART_ESI_CMD1, align 4
  %222 = load i32, i32* @ESI_SET_SRV_MASK, align 4
  %223 = call i32 @serial_out(%struct.esp_struct* %220, i32 %221, i32 %222)
  %224 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %225 = load i32, i32* @UART_ESI_CMD2, align 4
  %226 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %227 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @serial_out(%struct.esp_struct* %224, i32 %225, i32 %228)
  br label %289

230:                                              ; preds = %205
  %231 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %232 = load i32, i32* @UART_ESI_CMD1, align 4
  %233 = load i32, i32* @ESI_NO_COMMAND, align 4
  %234 = call i32 @serial_out(%struct.esp_struct* %231, i32 %232, i32 %233)
  %235 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %236 = load i32, i32* @UART_ESI_CMD1, align 4
  %237 = load i32, i32* @ESI_GET_TX_AVAIL, align 4
  %238 = call i32 @serial_out(%struct.esp_struct* %235, i32 %236, i32 %237)
  %239 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %240 = load i32, i32* @UART_ESI_STAT1, align 4
  %241 = call i32 @serial_in(%struct.esp_struct* %239, i32 %240)
  %242 = shl i32 %241, 8
  store i32 %242, i32* %10, align 4
  %243 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %244 = load i32, i32* @UART_ESI_STAT2, align 4
  %245 = call i32 @serial_in(%struct.esp_struct* %243, i32 %244)
  %246 = load i32, i32* %10, align 4
  %247 = or i32 %246, %245
  store i32 %247, i32* %10, align 4
  %248 = load i32, i32* %10, align 4
  %249 = sext i32 %248 to i64
  %250 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %251 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %250, i32 0, i32 2
  %252 = load i64, i64* %251, align 8
  %253 = icmp sgt i64 %249, %252
  br i1 %253, label %254, label %259

254:                                              ; preds = %230
  %255 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %256 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %255, i32 0, i32 2
  %257 = load i64, i64* %256, align 8
  %258 = trunc i64 %257 to i32
  store i32 %258, i32* %10, align 4
  br label %259

259:                                              ; preds = %254, %230
  %260 = load i32, i32* %10, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %288

262:                                              ; preds = %259
  %263 = load i64, i64* @dma_bytes, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %279, label %265

265:                                              ; preds = %262
  %266 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %267 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* @ESP_STAT_USE_PIO, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %279, label %272

272:                                              ; preds = %265
  %273 = load i32, i32* %10, align 4
  %274 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %275 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %274, i32 0, i32 5
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = icmp sle i32 %273, %277
  br i1 %278, label %279, label %283

279:                                              ; preds = %272, %265, %262
  %280 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %281 = load i32, i32* %10, align 4
  %282 = call i32 @transmit_chars_pio(%struct.esp_struct* %280, i32 %281)
  br label %287

283:                                              ; preds = %272
  %284 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %285 = load i32, i32* %10, align 4
  %286 = call i32 @transmit_chars_dma(%struct.esp_struct* %284, i32 %285)
  br label %287

287:                                              ; preds = %283, %279
  br label %288

288:                                              ; preds = %287, %259
  br label %289

289:                                              ; preds = %288, %213
  br label %290

290:                                              ; preds = %289, %193, %189, %180
  %291 = load i32, i32* @jiffies, align 4
  %292 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %293 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %292, i32 0, i32 4
  store i32 %291, i32* %293, align 4
  %294 = load %struct.esp_struct*, %struct.esp_struct** %6, align 8
  %295 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %294, i32 0, i32 3
  %296 = call i32 @spin_unlock(i32* %295)
  %297 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %297, i32* %3, align 4
  br label %298

298:                                              ; preds = %290, %24
  %299 = load i32, i32* %3, align 4
  ret i32 %299
}

declare dso_local i32 @serial_in(%struct.esp_struct*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @serial_out(%struct.esp_struct*, i32, i32) #1

declare dso_local i32 @check_modem_status(%struct.esp_struct*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @receive_chars_dma_done(%struct.esp_struct*, i32) #1

declare dso_local i32 @transmit_chars_dma_done(%struct.esp_struct*) #1

declare dso_local i32 @tty_buffer_request_room(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @receive_chars_pio(%struct.esp_struct*, i32) #1

declare dso_local i32 @receive_chars_dma(%struct.esp_struct*, i32) #1

declare dso_local i32 @transmit_chars_pio(%struct.esp_struct*, i32) #1

declare dso_local i32 @transmit_chars_dma(%struct.esp_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

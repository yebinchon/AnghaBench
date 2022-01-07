; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_sdio_uart.c_sdio_uart_change_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_sdio_uart.c_sdio_uart_change_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_uart_port = type { i32, i32, i32, i8, i8, i32 }
%struct.ktermios = type { i32, i32 }

@CSIZE = common dso_local global i32 0, align 4
@UART_LCR_WLEN5 = common dso_local global i8 0, align 1
@UART_LCR_WLEN6 = common dso_local global i8 0, align 1
@UART_LCR_WLEN7 = common dso_local global i8 0, align 1
@UART_LCR_WLEN8 = common dso_local global i8 0, align 1
@CSTOPB = common dso_local global i32 0, align 4
@UART_LCR_STOP = common dso_local global i8 0, align 1
@PARENB = common dso_local global i32 0, align 4
@UART_LCR_PARITY = common dso_local global i8 0, align 1
@PARODD = common dso_local global i32 0, align 4
@UART_LCR_EPAR = common dso_local global i8 0, align 1
@CBAUD = common dso_local global i32 0, align 4
@B9600 = common dso_local global i32 0, align 4
@UART_FCR_ENABLE_FIFO = common dso_local global i8 0, align 1
@UART_FCR_TRIGGER_1 = common dso_local global i8 0, align 1
@UART_FCR_R_TRIG_10 = common dso_local global i8 0, align 1
@UART_LSR_OE = common dso_local global i32 0, align 4
@UART_LSR_THRE = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@UART_LSR_FE = common dso_local global i32 0, align 4
@UART_LSR_PE = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@UART_LSR_BI = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@UART_IER_MSI = common dso_local global i8 0, align 1
@CRTSCTS = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i32 0, align 4
@UART_LCR_DLAB = common dso_local global i8 0, align 1
@UART_DLL = common dso_local global i32 0, align 4
@UART_DLM = common dso_local global i32 0, align 4
@UART_FCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdio_uart_port*, %struct.ktermios*, %struct.ktermios*)* @sdio_uart_change_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdio_uart_change_speed(%struct.sdio_uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.sdio_uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sdio_uart_port* %0, %struct.sdio_uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  store i8 0, i8* %8, align 1
  %11 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %12 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @CSIZE, align 4
  %15 = and i32 %13, %14
  switch i32 %15, label %22 [
    i32 131, label %16
    i32 130, label %18
    i32 129, label %20
    i32 128, label %23
  ]

16:                                               ; preds = %3
  %17 = load i8, i8* @UART_LCR_WLEN5, align 1
  store i8 %17, i8* %7, align 1
  br label %25

18:                                               ; preds = %3
  %19 = load i8, i8* @UART_LCR_WLEN6, align 1
  store i8 %19, i8* %7, align 1
  br label %25

20:                                               ; preds = %3
  %21 = load i8, i8* @UART_LCR_WLEN7, align 1
  store i8 %21, i8* %7, align 1
  br label %25

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %3, %22
  %24 = load i8, i8* @UART_LCR_WLEN8, align 1
  store i8 %24, i8* %7, align 1
  br label %25

25:                                               ; preds = %23, %20, %18, %16
  %26 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %27 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CSTOPB, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load i8, i8* @UART_LCR_STOP, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* %7, align 1
  %36 = zext i8 %35 to i32
  %37 = or i32 %36, %34
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %7, align 1
  br label %39

39:                                               ; preds = %32, %25
  %40 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %41 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PARENB, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load i8, i8* @UART_LCR_PARITY, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* %7, align 1
  %50 = zext i8 %49 to i32
  %51 = or i32 %50, %48
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %7, align 1
  br label %53

53:                                               ; preds = %46, %39
  %54 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %55 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @PARODD, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %53
  %61 = load i8, i8* @UART_LCR_EPAR, align 1
  %62 = zext i8 %61 to i32
  %63 = load i8, i8* %7, align 1
  %64 = zext i8 %63 to i32
  %65 = or i32 %64, %62
  %66 = trunc i32 %65 to i8
  store i8 %66, i8* %7, align 1
  br label %67

67:                                               ; preds = %60, %53
  br label %68

68:                                               ; preds = %106, %67
  %69 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %70 = call i32 @tty_termios_baud_rate(%struct.ktermios* %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i32 9600, i32* %9, align 4
  br label %74

74:                                               ; preds = %73, %68
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %4, align 8
  %77 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ule i32 %75, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %107

81:                                               ; preds = %74
  %82 = load i32, i32* @CBAUD, align 4
  %83 = xor i32 %82, -1
  %84 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %85 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %89 = icmp ne %struct.ktermios* %88, null
  br i1 %89, label %90, label %100

90:                                               ; preds = %81
  %91 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %92 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @CBAUD, align 4
  %95 = and i32 %93, %94
  %96 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %97 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  store %struct.ktermios* null, %struct.ktermios** %6, align 8
  br label %106

100:                                              ; preds = %81
  %101 = load i32, i32* @B9600, align 4
  %102 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %103 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %100, %90
  br label %68

107:                                              ; preds = %80
  %108 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %4, align 8
  %109 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = mul i32 2, %110
  %112 = load i32, i32* %9, align 4
  %113 = add i32 %111, %112
  %114 = load i32, i32* %9, align 4
  %115 = mul i32 2, %114
  %116 = udiv i32 %113, %115
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp ult i32 %117, 2400
  br i1 %118, label %119, label %126

119:                                              ; preds = %107
  %120 = load i8, i8* @UART_FCR_ENABLE_FIFO, align 1
  %121 = zext i8 %120 to i32
  %122 = load i8, i8* @UART_FCR_TRIGGER_1, align 1
  %123 = zext i8 %122 to i32
  %124 = or i32 %121, %123
  %125 = trunc i32 %124 to i8
  store i8 %125, i8* %8, align 1
  br label %133

126:                                              ; preds = %107
  %127 = load i8, i8* @UART_FCR_ENABLE_FIFO, align 1
  %128 = zext i8 %127 to i32
  %129 = load i8, i8* @UART_FCR_R_TRIG_10, align 1
  %130 = zext i8 %129 to i32
  %131 = or i32 %128, %130
  %132 = trunc i32 %131 to i8
  store i8 %132, i8* %8, align 1
  br label %133

133:                                              ; preds = %126, %119
  %134 = load i32, i32* @UART_LSR_OE, align 4
  %135 = load i32, i32* @UART_LSR_THRE, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @UART_LSR_DR, align 4
  %138 = or i32 %136, %137
  %139 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %4, align 8
  %140 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %142 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @INPCK, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %133
  %148 = load i32, i32* @UART_LSR_FE, align 4
  %149 = load i32, i32* @UART_LSR_PE, align 4
  %150 = or i32 %148, %149
  %151 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %4, align 8
  %152 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %147, %133
  %156 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %157 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @BRKINT, align 4
  %160 = load i32, i32* @PARMRK, align 4
  %161 = or i32 %159, %160
  %162 = and i32 %158, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %155
  %165 = load i32, i32* @UART_LSR_BI, align 4
  %166 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %4, align 8
  %167 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 4
  br label %170

170:                                              ; preds = %164, %155
  %171 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %4, align 8
  %172 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %171, i32 0, i32 2
  store i32 0, i32* %172, align 4
  %173 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %174 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @IGNPAR, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %187

179:                                              ; preds = %170
  %180 = load i32, i32* @UART_LSR_PE, align 4
  %181 = load i32, i32* @UART_LSR_FE, align 4
  %182 = or i32 %180, %181
  %183 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %4, align 8
  %184 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 4
  br label %187

187:                                              ; preds = %179, %170
  %188 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %189 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @IGNBRK, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %213

194:                                              ; preds = %187
  %195 = load i32, i32* @UART_LSR_BI, align 4
  %196 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %4, align 8
  %197 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = or i32 %198, %195
  store i32 %199, i32* %197, align 4
  %200 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %201 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @IGNPAR, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %194
  %207 = load i32, i32* @UART_LSR_OE, align 4
  %208 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %4, align 8
  %209 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %210, %207
  store i32 %211, i32* %209, align 4
  br label %212

212:                                              ; preds = %206, %194
  br label %213

213:                                              ; preds = %212, %187
  %214 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %215 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @CREAD, align 4
  %218 = and i32 %216, %217
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %213
  %221 = load i32, i32* @UART_LSR_DR, align 4
  %222 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %4, align 8
  %223 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = or i32 %224, %221
  store i32 %225, i32* %223, align 4
  br label %226

226:                                              ; preds = %220, %213
  %227 = load i8, i8* @UART_IER_MSI, align 1
  %228 = zext i8 %227 to i32
  %229 = xor i32 %228, -1
  %230 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %4, align 8
  %231 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %230, i32 0, i32 3
  %232 = load i8, i8* %231, align 4
  %233 = zext i8 %232 to i32
  %234 = and i32 %233, %229
  %235 = trunc i32 %234 to i8
  store i8 %235, i8* %231, align 4
  %236 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %237 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @CRTSCTS, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %249, label %242

242:                                              ; preds = %226
  %243 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %244 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @CLOCAL, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %258, label %249

249:                                              ; preds = %242, %226
  %250 = load i8, i8* @UART_IER_MSI, align 1
  %251 = zext i8 %250 to i32
  %252 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %4, align 8
  %253 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %252, i32 0, i32 3
  %254 = load i8, i8* %253, align 4
  %255 = zext i8 %254 to i32
  %256 = or i32 %255, %251
  %257 = trunc i32 %256 to i8
  store i8 %257, i8* %253, align 4
  br label %258

258:                                              ; preds = %249, %242
  %259 = load i8, i8* %7, align 1
  %260 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %4, align 8
  %261 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %260, i32 0, i32 4
  store i8 %259, i8* %261, align 1
  %262 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %4, align 8
  %263 = load i32, i32* @UART_IER, align 4
  %264 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %4, align 8
  %265 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %264, i32 0, i32 3
  %266 = load i8, i8* %265, align 4
  %267 = call i32 @sdio_out(%struct.sdio_uart_port* %262, i32 %263, i8 zeroext %266)
  %268 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %4, align 8
  %269 = load i32, i32* @UART_LCR, align 4
  %270 = load i8, i8* %7, align 1
  %271 = zext i8 %270 to i32
  %272 = load i8, i8* @UART_LCR_DLAB, align 1
  %273 = zext i8 %272 to i32
  %274 = or i32 %271, %273
  %275 = trunc i32 %274 to i8
  %276 = call i32 @sdio_out(%struct.sdio_uart_port* %268, i32 %269, i8 zeroext %275)
  %277 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %4, align 8
  %278 = load i32, i32* @UART_DLL, align 4
  %279 = load i32, i32* %10, align 4
  %280 = and i32 %279, 255
  %281 = trunc i32 %280 to i8
  %282 = call i32 @sdio_out(%struct.sdio_uart_port* %277, i32 %278, i8 zeroext %281)
  %283 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %4, align 8
  %284 = load i32, i32* @UART_DLM, align 4
  %285 = load i32, i32* %10, align 4
  %286 = lshr i32 %285, 8
  %287 = trunc i32 %286 to i8
  %288 = call i32 @sdio_out(%struct.sdio_uart_port* %283, i32 %284, i8 zeroext %287)
  %289 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %4, align 8
  %290 = load i32, i32* @UART_LCR, align 4
  %291 = load i8, i8* %7, align 1
  %292 = call i32 @sdio_out(%struct.sdio_uart_port* %289, i32 %290, i8 zeroext %291)
  %293 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %4, align 8
  %294 = load i32, i32* @UART_FCR, align 4
  %295 = load i8, i8* %8, align 1
  %296 = call i32 @sdio_out(%struct.sdio_uart_port* %293, i32 %294, i8 zeroext %295)
  %297 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %4, align 8
  %298 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %4, align 8
  %299 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %298, i32 0, i32 5
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @sdio_uart_write_mctrl(%struct.sdio_uart_port* %297, i32 %300)
  ret void
}

declare dso_local i32 @tty_termios_baud_rate(%struct.ktermios*) #1

declare dso_local i32 @sdio_out(%struct.sdio_uart_port*, i32, i8 zeroext) #1

declare dso_local i32 @sdio_uart_write_mctrl(%struct.sdio_uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

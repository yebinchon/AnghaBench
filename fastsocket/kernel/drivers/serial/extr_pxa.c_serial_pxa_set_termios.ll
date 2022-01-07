; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pxa.c_serial_pxa_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pxa.c_serial_pxa_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.ktermios = type { i32, i32 }
%struct.uart_pxa_port = type { i8, i8, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

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
@UART_FCR_ENABLE_FIFO = common dso_local global i8 0, align 1
@UART_FCR_PXAR1 = common dso_local global i8 0, align 1
@UART_FCR_PXAR8 = common dso_local global i8 0, align 1
@UART_FCR_PXAR32 = common dso_local global i8 0, align 1
@UART_IER_UUE = common dso_local global i8 0, align 1
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
@UART_IER = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@UART_MCR_AFE = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i32 0, align 4
@UART_LCR_DLAB = common dso_local global i8 0, align 1
@UART_DLL = common dso_local global i32 0, align 4
@UART_DLM = common dso_local global i32 0, align 4
@UART_FCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @serial_pxa_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_pxa_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.uart_pxa_port*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %13 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %14 = bitcast %struct.uart_port* %13 to %struct.uart_pxa_port*
  store %struct.uart_pxa_port* %14, %struct.uart_pxa_port** %7, align 8
  store i8 0, i8* %9, align 1
  %15 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %16 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CSIZE, align 4
  %19 = and i32 %17, %18
  switch i32 %19, label %26 [
    i32 131, label %20
    i32 130, label %22
    i32 129, label %24
    i32 128, label %27
  ]

20:                                               ; preds = %3
  %21 = load i8, i8* @UART_LCR_WLEN5, align 1
  store i8 %21, i8* %8, align 1
  br label %29

22:                                               ; preds = %3
  %23 = load i8, i8* @UART_LCR_WLEN6, align 1
  store i8 %23, i8* %8, align 1
  br label %29

24:                                               ; preds = %3
  %25 = load i8, i8* @UART_LCR_WLEN7, align 1
  store i8 %25, i8* %8, align 1
  br label %29

26:                                               ; preds = %3
  br label %27

27:                                               ; preds = %3, %26
  %28 = load i8, i8* @UART_LCR_WLEN8, align 1
  store i8 %28, i8* %8, align 1
  br label %29

29:                                               ; preds = %27, %24, %22, %20
  %30 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %31 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CSTOPB, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load i8, i8* @UART_LCR_STOP, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* %8, align 1
  %40 = zext i8 %39 to i32
  %41 = or i32 %40, %38
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %8, align 1
  br label %43

43:                                               ; preds = %36, %29
  %44 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %45 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @PARENB, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load i8, i8* @UART_LCR_PARITY, align 1
  %52 = zext i8 %51 to i32
  %53 = load i8, i8* %8, align 1
  %54 = zext i8 %53 to i32
  %55 = or i32 %54, %52
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %8, align 1
  br label %57

57:                                               ; preds = %50, %43
  %58 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %59 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @PARODD, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %57
  %65 = load i8, i8* @UART_LCR_EPAR, align 1
  %66 = zext i8 %65 to i32
  %67 = load i8, i8* %8, align 1
  %68 = zext i8 %67 to i32
  %69 = or i32 %68, %66
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %8, align 1
  br label %71

71:                                               ; preds = %64, %57
  %72 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %73 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %74 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %75 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %76 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sdiv i32 %77, 16
  %79 = call i32 @uart_get_baud_rate(%struct.uart_port* %72, %struct.ktermios* %73, %struct.ktermios* %74, i32 0, i32 %78)
  store i32 %79, i32* %11, align 4
  %80 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @uart_get_divisor(%struct.uart_port* %80, i32 %81)
  store i32 %82, i32* %12, align 4
  %83 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %84 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %12, align 4
  %88 = udiv i32 %86, %87
  %89 = icmp ult i32 %88, 38400
  br i1 %89, label %90, label %97

90:                                               ; preds = %71
  %91 = load i8, i8* @UART_FCR_ENABLE_FIFO, align 1
  %92 = zext i8 %91 to i32
  %93 = load i8, i8* @UART_FCR_PXAR1, align 1
  %94 = zext i8 %93 to i32
  %95 = or i32 %92, %94
  %96 = trunc i32 %95 to i8
  store i8 %96, i8* %9, align 1
  br label %120

97:                                               ; preds = %71
  %98 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %99 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %12, align 4
  %103 = udiv i32 %101, %102
  %104 = icmp ult i32 %103, 3686400
  br i1 %104, label %105, label %112

105:                                              ; preds = %97
  %106 = load i8, i8* @UART_FCR_ENABLE_FIFO, align 1
  %107 = zext i8 %106 to i32
  %108 = load i8, i8* @UART_FCR_PXAR8, align 1
  %109 = zext i8 %108 to i32
  %110 = or i32 %107, %109
  %111 = trunc i32 %110 to i8
  store i8 %111, i8* %9, align 1
  br label %119

112:                                              ; preds = %97
  %113 = load i8, i8* @UART_FCR_ENABLE_FIFO, align 1
  %114 = zext i8 %113 to i32
  %115 = load i8, i8* @UART_FCR_PXAR32, align 1
  %116 = zext i8 %115 to i32
  %117 = or i32 %114, %116
  %118 = trunc i32 %117 to i8
  store i8 %118, i8* %9, align 1
  br label %119

119:                                              ; preds = %112, %105
  br label %120

120:                                              ; preds = %119, %90
  %121 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %122 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 3
  %124 = load i64, i64* %10, align 8
  %125 = call i32 @spin_lock_irqsave(i32* %123, i64 %124)
  %126 = load i8, i8* @UART_IER_UUE, align 1
  %127 = zext i8 %126 to i32
  %128 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %129 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %128, i32 0, i32 0
  %130 = load i8, i8* %129, align 4
  %131 = zext i8 %130 to i32
  %132 = or i32 %131, %127
  %133 = trunc i32 %132 to i8
  store i8 %133, i8* %129, align 4
  %134 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %135 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %136 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @uart_update_timeout(%struct.uart_port* %134, i32 %137, i32 %138)
  %140 = load i32, i32* @UART_LSR_OE, align 4
  %141 = load i32, i32* @UART_LSR_THRE, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @UART_LSR_DR, align 4
  %144 = or i32 %142, %143
  %145 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %146 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  store i32 %144, i32* %147, align 4
  %148 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %149 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @INPCK, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %120
  %155 = load i32, i32* @UART_LSR_FE, align 4
  %156 = load i32, i32* @UART_LSR_PE, align 4
  %157 = or i32 %155, %156
  %158 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %159 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %157
  store i32 %162, i32* %160, align 4
  br label %163

163:                                              ; preds = %154, %120
  %164 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %165 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @BRKINT, align 4
  %168 = load i32, i32* @PARMRK, align 4
  %169 = or i32 %167, %168
  %170 = and i32 %166, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %163
  %173 = load i32, i32* @UART_LSR_BI, align 4
  %174 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %175 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %177, %173
  store i32 %178, i32* %176, align 4
  br label %179

179:                                              ; preds = %172, %163
  %180 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %181 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 2
  store i32 0, i32* %182, align 4
  %183 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %184 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @IGNPAR, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %198

189:                                              ; preds = %179
  %190 = load i32, i32* @UART_LSR_PE, align 4
  %191 = load i32, i32* @UART_LSR_FE, align 4
  %192 = or i32 %190, %191
  %193 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %194 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = or i32 %196, %192
  store i32 %197, i32* %195, align 4
  br label %198

198:                                              ; preds = %189, %179
  %199 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %200 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @IGNBRK, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %226

205:                                              ; preds = %198
  %206 = load i32, i32* @UART_LSR_BI, align 4
  %207 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %208 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %210, %206
  store i32 %211, i32* %209, align 4
  %212 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %213 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @IGNPAR, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %225

218:                                              ; preds = %205
  %219 = load i32, i32* @UART_LSR_OE, align 4
  %220 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %221 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = or i32 %223, %219
  store i32 %224, i32* %222, align 4
  br label %225

225:                                              ; preds = %218, %205
  br label %226

226:                                              ; preds = %225, %198
  %227 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %228 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @CREAD, align 4
  %231 = and i32 %229, %230
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %240

233:                                              ; preds = %226
  %234 = load i32, i32* @UART_LSR_DR, align 4
  %235 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %236 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = or i32 %238, %234
  store i32 %239, i32* %237, align 4
  br label %240

240:                                              ; preds = %233, %226
  %241 = load i8, i8* @UART_IER_MSI, align 1
  %242 = zext i8 %241 to i32
  %243 = xor i32 %242, -1
  %244 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %245 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %244, i32 0, i32 0
  %246 = load i8, i8* %245, align 4
  %247 = zext i8 %246 to i32
  %248 = and i32 %247, %243
  %249 = trunc i32 %248 to i8
  store i8 %249, i8* %245, align 4
  %250 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %251 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %250, i32 0, i32 2
  %252 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %253 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = call i64 @UART_ENABLE_MS(%struct.TYPE_3__* %251, i32 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %266

257:                                              ; preds = %240
  %258 = load i8, i8* @UART_IER_MSI, align 1
  %259 = zext i8 %258 to i32
  %260 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %261 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %260, i32 0, i32 0
  %262 = load i8, i8* %261, align 4
  %263 = zext i8 %262 to i32
  %264 = or i32 %263, %259
  %265 = trunc i32 %264 to i8
  store i8 %265, i8* %261, align 4
  br label %266

266:                                              ; preds = %257, %240
  %267 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %268 = load i32, i32* @UART_IER, align 4
  %269 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %270 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %269, i32 0, i32 0
  %271 = load i8, i8* %270, align 4
  %272 = call i32 @serial_out(%struct.uart_pxa_port* %267, i32 %268, i8 zeroext %271)
  %273 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %274 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @CRTSCTS, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %285

279:                                              ; preds = %266
  %280 = load i32, i32* @UART_MCR_AFE, align 4
  %281 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %282 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %281, i32 0, i32 3
  %283 = load i32, i32* %282, align 4
  %284 = or i32 %283, %280
  store i32 %284, i32* %282, align 4
  br label %292

285:                                              ; preds = %266
  %286 = load i32, i32* @UART_MCR_AFE, align 4
  %287 = xor i32 %286, -1
  %288 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %289 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  %291 = and i32 %290, %287
  store i32 %291, i32* %289, align 4
  br label %292

292:                                              ; preds = %285, %279
  %293 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %294 = load i32, i32* @UART_LCR, align 4
  %295 = load i8, i8* %8, align 1
  %296 = zext i8 %295 to i32
  %297 = load i8, i8* @UART_LCR_DLAB, align 1
  %298 = zext i8 %297 to i32
  %299 = or i32 %296, %298
  %300 = trunc i32 %299 to i8
  %301 = call i32 @serial_out(%struct.uart_pxa_port* %293, i32 %294, i8 zeroext %300)
  %302 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %303 = load i32, i32* @UART_DLL, align 4
  %304 = load i32, i32* %12, align 4
  %305 = and i32 %304, 255
  %306 = trunc i32 %305 to i8
  %307 = call i32 @serial_out(%struct.uart_pxa_port* %302, i32 %303, i8 zeroext %306)
  %308 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %309 = load i32, i32* @UART_DLM, align 4
  %310 = load i32, i32* %12, align 4
  %311 = lshr i32 %310, 8
  %312 = trunc i32 %311 to i8
  %313 = call i32 @serial_out(%struct.uart_pxa_port* %308, i32 %309, i8 zeroext %312)
  %314 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %315 = load i32, i32* @UART_LCR, align 4
  %316 = load i8, i8* %8, align 1
  %317 = call i32 @serial_out(%struct.uart_pxa_port* %314, i32 %315, i8 zeroext %316)
  %318 = load i8, i8* %8, align 1
  %319 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %320 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %319, i32 0, i32 1
  store i8 %318, i8* %320, align 1
  %321 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %322 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %321, i32 0, i32 2
  %323 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %324 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %323, i32 0, i32 2
  %325 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %324, i32 0, i32 4
  %326 = load i32, i32* %325, align 4
  %327 = call i32 @serial_pxa_set_mctrl(%struct.TYPE_3__* %322, i32 %326)
  %328 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %329 = load i32, i32* @UART_FCR, align 4
  %330 = load i8, i8* %9, align 1
  %331 = call i32 @serial_out(%struct.uart_pxa_port* %328, i32 %329, i8 zeroext %330)
  %332 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %7, align 8
  %333 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %332, i32 0, i32 2
  %334 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %333, i32 0, i32 3
  %335 = load i64, i64* %10, align 8
  %336 = call i32 @spin_unlock_irqrestore(i32* %334, i64 %335)
  ret void
}

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @uart_get_divisor(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i64 @UART_ENABLE_MS(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @serial_out(%struct.uart_pxa_port*, i32, i8 zeroext) #1

declare dso_local i32 @serial_pxa_set_mctrl(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

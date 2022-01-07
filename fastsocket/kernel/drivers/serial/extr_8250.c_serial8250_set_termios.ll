; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_serial8250_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_serial8250_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8 }
%struct.uart_port = type { i32 }
%struct.ktermios = type { i32, i32 }
%struct.uart_8250_port = type { i32, i32, i32, i8, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64, i32, i32, i32, i32, i32 }

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
@PORT_16C950 = common dso_local global i64 0, align 8
@UART_BUG_QUOT = common dso_local global i32 0, align 4
@UART_CAP_FIFO = common dso_local global i32 0, align 4
@UART_FCR_ENABLE_FIFO = common dso_local global i8 0, align 1
@UART_FCR_TRIGGER_1 = common dso_local global i8 0, align 1
@uart_config = common dso_local global %struct.TYPE_4__* null, align 8
@UART_CAP_AFE = common dso_local global i32 0, align 4
@UART_MCR_AFE = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@UART_TCR = common dso_local global i32 0, align 4
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
@UART_IER_MSI = common dso_local global i32 0, align 4
@UART_BUG_NOMSR = common dso_local global i32 0, align 4
@UART_CAP_UUE = common dso_local global i32 0, align 4
@UART_IER_UUE = common dso_local global i32 0, align 4
@UART_IER_RTOIE = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@UART_CAP_EFR = common dso_local global i32 0, align 4
@UART_EFR_CTS = common dso_local global i8 0, align 1
@UART_LCR = common dso_local global i32 0, align 4
@UART_EFR = common dso_local global i32 0, align 4
@UART_NATSEMI = common dso_local global i32 0, align 4
@UART_LCR_DLAB = common dso_local global i8 0, align 1
@PORT_16750 = common dso_local global i64 0, align 8
@UART_FCR = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@UART_LCR_SPAR = common dso_local global i8 0, align 1
@UART_OMAP_OSC_12M_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @serial8250_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial8250_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.uart_8250_port*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %15 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %16 = bitcast %struct.uart_port* %15 to %struct.uart_8250_port*
  store %struct.uart_8250_port* %16, %struct.uart_8250_port** %7, align 8
  store i8 0, i8* %9, align 1
  %17 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %18 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CSIZE, align 4
  %21 = and i32 %19, %20
  switch i32 %21, label %28 [
    i32 131, label %22
    i32 130, label %24
    i32 129, label %26
    i32 128, label %29
  ]

22:                                               ; preds = %3
  %23 = load i8, i8* @UART_LCR_WLEN5, align 1
  store i8 %23, i8* %8, align 1
  br label %31

24:                                               ; preds = %3
  %25 = load i8, i8* @UART_LCR_WLEN6, align 1
  store i8 %25, i8* %8, align 1
  br label %31

26:                                               ; preds = %3
  %27 = load i8, i8* @UART_LCR_WLEN7, align 1
  store i8 %27, i8* %8, align 1
  br label %31

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %3, %28
  %30 = load i8, i8* @UART_LCR_WLEN8, align 1
  store i8 %30, i8* %8, align 1
  br label %31

31:                                               ; preds = %29, %26, %24, %22
  %32 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %33 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CSTOPB, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load i8, i8* @UART_LCR_STOP, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* %8, align 1
  %42 = zext i8 %41 to i32
  %43 = or i32 %42, %40
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %8, align 1
  br label %45

45:                                               ; preds = %38, %31
  %46 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %47 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PARENB, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load i8, i8* @UART_LCR_PARITY, align 1
  %54 = zext i8 %53 to i32
  %55 = load i8, i8* %8, align 1
  %56 = zext i8 %55 to i32
  %57 = or i32 %56, %54
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %8, align 1
  br label %59

59:                                               ; preds = %52, %45
  %60 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %61 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @PARODD, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %59
  %67 = load i8, i8* @UART_LCR_EPAR, align 1
  %68 = zext i8 %67 to i32
  %69 = load i8, i8* %8, align 1
  %70 = zext i8 %69 to i32
  %71 = or i32 %70, %68
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %8, align 1
  br label %73

73:                                               ; preds = %66, %59
  %74 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %75 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @PORT_16C950, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %82 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sdiv i32 %83, 4
  br label %90

85:                                               ; preds = %73
  %86 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %87 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sdiv i32 %88, 16
  br label %90

90:                                               ; preds = %85, %80
  %91 = phi i32 [ %84, %80 ], [ %89, %85 ]
  store i32 %91, i32* %13, align 4
  %92 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %93 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %94 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %95 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %96 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = sdiv i32 %97, 16
  %99 = sdiv i32 %98, 65535
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @uart_get_baud_rate(%struct.uart_port* %92, %struct.ktermios* %93, %struct.ktermios* %94, i32 %99, i32 %100)
  store i32 %101, i32* %11, align 4
  %102 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @serial8250_get_divisor(%struct.uart_port* %102, i32 %103)
  store i32 %104, i32* %12, align 4
  %105 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %106 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @UART_BUG_QUOT, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %90
  %112 = load i32, i32* %12, align 4
  %113 = and i32 %112, 255
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load i32, i32* %12, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %12, align 4
  br label %118

118:                                              ; preds = %115, %111, %90
  %119 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %120 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @UART_CAP_FIFO, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %151

125:                                              ; preds = %118
  %126 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %127 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = icmp sgt i32 %129, 1
  br i1 %130, label %131, label %151

131:                                              ; preds = %125
  %132 = load i32, i32* %11, align 4
  %133 = icmp ult i32 %132, 2400
  br i1 %133, label %134, label %141

134:                                              ; preds = %131
  %135 = load i8, i8* @UART_FCR_ENABLE_FIFO, align 1
  %136 = zext i8 %135 to i32
  %137 = load i8, i8* @UART_FCR_TRIGGER_1, align 1
  %138 = zext i8 %137 to i32
  %139 = or i32 %136, %138
  %140 = trunc i32 %139 to i8
  store i8 %140, i8* %9, align 1
  br label %150

141:                                              ; preds = %131
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** @uart_config, align 8
  %143 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %144 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i8, i8* %148, align 1
  store i8 %149, i8* %9, align 1
  br label %150

150:                                              ; preds = %141, %134
  br label %151

151:                                              ; preds = %150, %125, %118
  %152 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %153 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @UART_CAP_AFE, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %184

158:                                              ; preds = %151
  %159 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %160 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %159, i32 0, i32 4
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = icmp sge i32 %162, 32
  br i1 %163, label %164, label %184

164:                                              ; preds = %158
  %165 = load i32, i32* @UART_MCR_AFE, align 4
  %166 = xor i32 %165, -1
  %167 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %168 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 8
  %170 = and i32 %169, %166
  store i32 %170, i32* %168, align 8
  %171 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %172 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @CRTSCTS, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %164
  %178 = load i32, i32* @UART_MCR_AFE, align 4
  %179 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %180 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 8
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 8
  br label %183

183:                                              ; preds = %177, %164
  br label %184

184:                                              ; preds = %183, %158, %151
  %185 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %186 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %185, i32 0, i32 4
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 4
  %188 = load i64, i64* %10, align 8
  %189 = call i32 @spin_lock_irqsave(i32* %187, i64 %188)
  %190 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %191 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %190, i32 0, i32 4
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @PORT_16C950, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %224

196:                                              ; preds = %184
  %197 = load i32, i32* %11, align 4
  %198 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %199 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = sdiv i32 %200, 4
  %202 = icmp eq i32 %197, %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %196
  %204 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %205 = load i32, i32* @UART_TCR, align 4
  %206 = call i32 @serial_icr_write(%struct.uart_8250_port* %204, i32 %205, i32 4)
  br label %223

207:                                              ; preds = %196
  %208 = load i32, i32* %11, align 4
  %209 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %210 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = sdiv i32 %211, 8
  %213 = icmp eq i32 %208, %212
  br i1 %213, label %214, label %218

214:                                              ; preds = %207
  %215 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %216 = load i32, i32* @UART_TCR, align 4
  %217 = call i32 @serial_icr_write(%struct.uart_8250_port* %215, i32 %216, i32 8)
  br label %222

218:                                              ; preds = %207
  %219 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %220 = load i32, i32* @UART_TCR, align 4
  %221 = call i32 @serial_icr_write(%struct.uart_8250_port* %219, i32 %220, i32 0)
  br label %222

222:                                              ; preds = %218, %214
  br label %223

223:                                              ; preds = %222, %203
  br label %224

224:                                              ; preds = %223, %184
  %225 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %226 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %227 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %11, align 4
  %230 = call i32 @uart_update_timeout(%struct.uart_port* %225, i32 %228, i32 %229)
  %231 = load i32, i32* @UART_LSR_OE, align 4
  %232 = load i32, i32* @UART_LSR_THRE, align 4
  %233 = or i32 %231, %232
  %234 = load i32, i32* @UART_LSR_DR, align 4
  %235 = or i32 %233, %234
  %236 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %237 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %236, i32 0, i32 4
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 2
  store i32 %235, i32* %238, align 4
  %239 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %240 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @INPCK, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %254

245:                                              ; preds = %224
  %246 = load i32, i32* @UART_LSR_FE, align 4
  %247 = load i32, i32* @UART_LSR_PE, align 4
  %248 = or i32 %246, %247
  %249 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %250 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %249, i32 0, i32 4
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 4
  %253 = or i32 %252, %248
  store i32 %253, i32* %251, align 4
  br label %254

254:                                              ; preds = %245, %224
  %255 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %256 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @BRKINT, align 4
  %259 = load i32, i32* @PARMRK, align 4
  %260 = or i32 %258, %259
  %261 = and i32 %257, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %270

263:                                              ; preds = %254
  %264 = load i32, i32* @UART_LSR_BI, align 4
  %265 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %266 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %265, i32 0, i32 4
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 4
  %269 = or i32 %268, %264
  store i32 %269, i32* %267, align 4
  br label %270

270:                                              ; preds = %263, %254
  %271 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %272 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %271, i32 0, i32 4
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 3
  store i32 0, i32* %273, align 8
  %274 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %275 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @IGNPAR, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %289

280:                                              ; preds = %270
  %281 = load i32, i32* @UART_LSR_PE, align 4
  %282 = load i32, i32* @UART_LSR_FE, align 4
  %283 = or i32 %281, %282
  %284 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %285 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %284, i32 0, i32 4
  %286 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 8
  %288 = or i32 %287, %283
  store i32 %288, i32* %286, align 8
  br label %289

289:                                              ; preds = %280, %270
  %290 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %291 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @IGNBRK, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %317

296:                                              ; preds = %289
  %297 = load i32, i32* @UART_LSR_BI, align 4
  %298 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %299 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %298, i32 0, i32 4
  %300 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 8
  %302 = or i32 %301, %297
  store i32 %302, i32* %300, align 8
  %303 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %304 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* @IGNPAR, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %316

309:                                              ; preds = %296
  %310 = load i32, i32* @UART_LSR_OE, align 4
  %311 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %312 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %311, i32 0, i32 4
  %313 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %312, i32 0, i32 3
  %314 = load i32, i32* %313, align 8
  %315 = or i32 %314, %310
  store i32 %315, i32* %313, align 8
  br label %316

316:                                              ; preds = %309, %296
  br label %317

317:                                              ; preds = %316, %289
  %318 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %319 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* @CREAD, align 4
  %322 = and i32 %320, %321
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %331

324:                                              ; preds = %317
  %325 = load i32, i32* @UART_LSR_DR, align 4
  %326 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %327 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %326, i32 0, i32 4
  %328 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %327, i32 0, i32 3
  %329 = load i32, i32* %328, align 8
  %330 = or i32 %329, %325
  store i32 %330, i32* %328, align 8
  br label %331

331:                                              ; preds = %324, %317
  %332 = load i32, i32* @UART_IER_MSI, align 4
  %333 = xor i32 %332, -1
  %334 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %335 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %334, i32 0, i32 2
  %336 = load i32, i32* %335, align 8
  %337 = and i32 %336, %333
  store i32 %337, i32* %335, align 8
  %338 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %339 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = load i32, i32* @UART_BUG_NOMSR, align 4
  %342 = and i32 %340, %341
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %358, label %344

344:                                              ; preds = %331
  %345 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %346 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %345, i32 0, i32 4
  %347 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %348 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = call i64 @UART_ENABLE_MS(%struct.TYPE_5__* %346, i32 %349)
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %358

352:                                              ; preds = %344
  %353 = load i32, i32* @UART_IER_MSI, align 4
  %354 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %355 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %354, i32 0, i32 2
  %356 = load i32, i32* %355, align 8
  %357 = or i32 %356, %353
  store i32 %357, i32* %355, align 8
  br label %358

358:                                              ; preds = %352, %344, %331
  %359 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %360 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = load i32, i32* @UART_CAP_UUE, align 4
  %363 = and i32 %361, %362
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %373

365:                                              ; preds = %358
  %366 = load i32, i32* @UART_IER_UUE, align 4
  %367 = load i32, i32* @UART_IER_RTOIE, align 4
  %368 = or i32 %366, %367
  %369 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %370 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %369, i32 0, i32 2
  %371 = load i32, i32* %370, align 8
  %372 = or i32 %371, %368
  store i32 %372, i32* %370, align 8
  br label %373

373:                                              ; preds = %365, %358
  %374 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %375 = load i32, i32* @UART_IER, align 4
  %376 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %377 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 8
  %379 = call i32 @serial_out(%struct.uart_8250_port* %374, i32 %375, i32 %378)
  %380 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %381 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %380, i32 0, i32 1
  %382 = load i32, i32* %381, align 4
  %383 = load i32, i32* @UART_CAP_EFR, align 4
  %384 = and i32 %382, %383
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %408

386:                                              ; preds = %373
  store i8 0, i8* %14, align 1
  %387 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %388 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 4
  %390 = load i32, i32* @CRTSCTS, align 4
  %391 = and i32 %389, %390
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %400

393:                                              ; preds = %386
  %394 = load i8, i8* @UART_EFR_CTS, align 1
  %395 = zext i8 %394 to i32
  %396 = load i8, i8* %14, align 1
  %397 = zext i8 %396 to i32
  %398 = or i32 %397, %395
  %399 = trunc i32 %398 to i8
  store i8 %399, i8* %14, align 1
  br label %400

400:                                              ; preds = %393, %386
  %401 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %402 = load i32, i32* @UART_LCR, align 4
  %403 = call i32 @serial_outp(%struct.uart_8250_port* %401, i32 %402, i8 zeroext -65)
  %404 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %405 = load i32, i32* @UART_EFR, align 4
  %406 = load i8, i8* %14, align 1
  %407 = call i32 @serial_outp(%struct.uart_8250_port* %404, i32 %405, i8 zeroext %406)
  br label %408

408:                                              ; preds = %400, %373
  %409 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %410 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 4
  %412 = load i32, i32* @UART_NATSEMI, align 4
  %413 = and i32 %411, %412
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %419

415:                                              ; preds = %408
  %416 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %417 = load i32, i32* @UART_LCR, align 4
  %418 = call i32 @serial_outp(%struct.uart_8250_port* %416, i32 %417, i8 zeroext -32)
  br label %429

419:                                              ; preds = %408
  %420 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %421 = load i32, i32* @UART_LCR, align 4
  %422 = load i8, i8* %8, align 1
  %423 = zext i8 %422 to i32
  %424 = load i8, i8* @UART_LCR_DLAB, align 1
  %425 = zext i8 %424 to i32
  %426 = or i32 %423, %425
  %427 = trunc i32 %426 to i8
  %428 = call i32 @serial_outp(%struct.uart_8250_port* %420, i32 %421, i8 zeroext %427)
  br label %429

429:                                              ; preds = %419, %415
  %430 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %431 = load i32, i32* %12, align 4
  %432 = call i32 @serial_dl_write(%struct.uart_8250_port* %430, i32 %431)
  %433 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %434 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %433, i32 0, i32 4
  %435 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %434, i32 0, i32 0
  %436 = load i64, i64* %435, align 8
  %437 = load i64, i64* @PORT_16750, align 8
  %438 = icmp eq i64 %436, %437
  br i1 %438, label %439, label %444

439:                                              ; preds = %429
  %440 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %441 = load i32, i32* @UART_FCR, align 4
  %442 = load i8, i8* %9, align 1
  %443 = call i32 @serial_outp(%struct.uart_8250_port* %440, i32 %441, i8 zeroext %442)
  br label %444

444:                                              ; preds = %439, %429
  %445 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %446 = load i32, i32* @UART_LCR, align 4
  %447 = load i8, i8* %8, align 1
  %448 = call i32 @serial_outp(%struct.uart_8250_port* %445, i32 %446, i8 zeroext %447)
  %449 = load i8, i8* %8, align 1
  %450 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %451 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %450, i32 0, i32 3
  store i8 %449, i8* %451, align 4
  %452 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %453 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %452, i32 0, i32 4
  %454 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %453, i32 0, i32 0
  %455 = load i64, i64* %454, align 8
  %456 = load i64, i64* @PORT_16750, align 8
  %457 = icmp ne i64 %455, %456
  br i1 %457, label %458, label %475

458:                                              ; preds = %444
  %459 = load i8, i8* %9, align 1
  %460 = zext i8 %459 to i32
  %461 = load i8, i8* @UART_FCR_ENABLE_FIFO, align 1
  %462 = zext i8 %461 to i32
  %463 = and i32 %460, %462
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %470

465:                                              ; preds = %458
  %466 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %467 = load i32, i32* @UART_FCR, align 4
  %468 = load i8, i8* @UART_FCR_ENABLE_FIFO, align 1
  %469 = call i32 @serial_outp(%struct.uart_8250_port* %466, i32 %467, i8 zeroext %468)
  br label %470

470:                                              ; preds = %465, %458
  %471 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %472 = load i32, i32* @UART_FCR, align 4
  %473 = load i8, i8* %9, align 1
  %474 = call i32 @serial_outp(%struct.uart_8250_port* %471, i32 %472, i8 zeroext %473)
  br label %475

475:                                              ; preds = %470, %444
  %476 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %477 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %476, i32 0, i32 4
  %478 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %479 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %478, i32 0, i32 4
  %480 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %479, i32 0, i32 5
  %481 = load i32, i32* %480, align 8
  %482 = call i32 @serial8250_set_mctrl(%struct.TYPE_5__* %477, i32 %481)
  %483 = load %struct.uart_8250_port*, %struct.uart_8250_port** %7, align 8
  %484 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %483, i32 0, i32 4
  %485 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %484, i32 0, i32 4
  %486 = load i64, i64* %10, align 8
  %487 = call i32 @spin_unlock_irqrestore(i32* %485, i64 %486)
  %488 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %489 = call i64 @tty_termios_baud_rate(%struct.ktermios* %488)
  %490 = icmp ne i64 %489, 0
  br i1 %490, label %491, label %496

491:                                              ; preds = %475
  %492 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %493 = load i32, i32* %11, align 4
  %494 = load i32, i32* %11, align 4
  %495 = call i32 @tty_termios_encode_baud_rate(%struct.ktermios* %492, i32 %493, i32 %494)
  br label %496

496:                                              ; preds = %491, %475
  ret void
}

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @serial8250_get_divisor(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @serial_icr_write(%struct.uart_8250_port*, i32, i32) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i64 @UART_ENABLE_MS(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @serial_out(%struct.uart_8250_port*, i32, i32) #1

declare dso_local i32 @serial_outp(%struct.uart_8250_port*, i32, i8 zeroext) #1

declare dso_local i32 @serial_dl_write(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @serial8250_set_mctrl(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @tty_termios_baud_rate(%struct.ktermios*) #1

declare dso_local i32 @tty_termios_encode_baud_rate(%struct.ktermios*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

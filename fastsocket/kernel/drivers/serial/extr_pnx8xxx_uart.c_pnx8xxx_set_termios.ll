; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pnx8xxx_uart.c_pnx8xxx_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pnx8xxx_uart.c_pnx8xxx_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.ktermios = type { i32, i32 }
%struct.pnx8xxx_port = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@CSIZE = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@CS7 = common dso_local global i32 0, align 4
@PNX8XXX_UART_LCR_8BIT = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@PNX8XXX_UART_LCR_2STOPB = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PNX8XXX_UART_LCR_PAREN = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@PNX8XXX_UART_LCR_PAREVN = common dso_local global i32 0, align 4
@PNX8XXX_UART_INT_RXOVRN = common dso_local global i32 0, align 4
@PNX8XXX_UART_INT_EMPTY = common dso_local global i32 0, align 4
@PNX8XXX_UART_INT_RX = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@PNX8XXX_UART_FIFO_RXFE = common dso_local global i32 0, align 4
@PNX8XXX_UART_FIFO_RXPAR = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@PNX8XXX_UART_INT_BREAK = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@PNX8XXX_IEN = common dso_local global i32 0, align 4
@PNX8XXX_UART_INT_ALLTX = common dso_local global i32 0, align 4
@PNX8XXX_UART_INT_ALLRX = common dso_local global i32 0, align 4
@PNX8XXX_FIFO = common dso_local global i32 0, align 4
@PNX8XXX_UART_FIFO_TXFIFO_STA = common dso_local global i32 0, align 4
@PNX8XXX_UART_LCR_TX_RST = common dso_local global i32 0, align 4
@PNX8XXX_UART_LCR_RX_RST = common dso_local global i32 0, align 4
@PNX8XXX_LCR = common dso_local global i32 0, align 4
@PNX8XXX_BAUD = common dso_local global i32 0, align 4
@PNX8XXX_ICLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @pnx8xxx_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnx8xxx_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.pnx8xxx_port*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %14 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %15 = bitcast %struct.uart_port* %14 to %struct.pnx8xxx_port*
  store %struct.pnx8xxx_port* %15, %struct.pnx8xxx_port** %7, align 8
  %16 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %17 = icmp ne %struct.ktermios* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %20 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CSIZE, align 4
  %23 = and i32 %21, %22
  br label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @CS8, align 4
  br label %26

26:                                               ; preds = %24, %18
  %27 = phi i32 [ %23, %18 ], [ %25, %24 ]
  store i32 %27, i32* %13, align 4
  br label %28

28:                                               ; preds = %46, %26
  %29 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %30 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CSIZE, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @CS7, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  %37 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %38 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CSIZE, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @CS8, align 4
  %43 = icmp ne i32 %41, %42
  br label %44

44:                                               ; preds = %36, %28
  %45 = phi i1 [ false, %28 ], [ %43, %36 ]
  br i1 %45, label %46, label %59

46:                                               ; preds = %44
  %47 = load i32, i32* @CSIZE, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %50 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %55 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* @CS8, align 4
  store i32 %58, i32* %13, align 4
  br label %28

59:                                               ; preds = %44
  %60 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %61 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @CSIZE, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* @CS8, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* @PNX8XXX_UART_LCR_8BIT, align 4
  store i32 %68, i32* %9, align 4
  br label %70

69:                                               ; preds = %59
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %69, %67
  %71 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %72 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @CSTOPB, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %70
  %78 = load i32, i32* @PNX8XXX_UART_LCR_2STOPB, align 4
  %79 = load i32, i32* %9, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %77, %70
  %82 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %83 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @PARENB, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %81
  %89 = load i32, i32* @PNX8XXX_UART_LCR_PAREN, align 4
  %90 = load i32, i32* %9, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %9, align 4
  %92 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %93 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @PARODD, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %88
  %99 = load i32, i32* @PNX8XXX_UART_LCR_PAREVN, align 4
  %100 = load i32, i32* %9, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %9, align 4
  br label %102

102:                                              ; preds = %98, %88
  br label %103

103:                                              ; preds = %102, %81
  %104 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %105 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %106 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %107 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %108 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = sdiv i32 %109, 16
  %111 = call i32 @uart_get_baud_rate(%struct.uart_port* %104, %struct.ktermios* %105, %struct.ktermios* %106, i32 0, i32 %110)
  store i32 %111, i32* %11, align 4
  %112 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @uart_get_divisor(%struct.uart_port* %112, i32 %113)
  store i32 %114, i32* %12, align 4
  %115 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %7, align 8
  %116 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 2
  %118 = load i64, i64* %8, align 8
  %119 = call i32 @spin_lock_irqsave(i32* %117, i64 %118)
  %120 = load i32, i32* @PNX8XXX_UART_INT_RXOVRN, align 4
  %121 = call i32 @ISTAT_TO_SM(i32 %120)
  %122 = load i32, i32* @PNX8XXX_UART_INT_EMPTY, align 4
  %123 = call i32 @ISTAT_TO_SM(i32 %122)
  %124 = or i32 %121, %123
  %125 = load i32, i32* @PNX8XXX_UART_INT_RX, align 4
  %126 = call i32 @ISTAT_TO_SM(i32 %125)
  %127 = or i32 %124, %126
  %128 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %7, align 8
  %129 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  store i32 %127, i32* %130, align 4
  %131 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %132 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @INPCK, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %103
  %138 = load i32, i32* @PNX8XXX_UART_FIFO_RXFE, align 4
  %139 = call i32 @FIFO_TO_SM(i32 %138)
  %140 = load i32, i32* @PNX8XXX_UART_FIFO_RXPAR, align 4
  %141 = call i32 @FIFO_TO_SM(i32 %140)
  %142 = or i32 %139, %141
  %143 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %7, align 8
  %144 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %142
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %137, %103
  %149 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %150 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @BRKINT, align 4
  %153 = load i32, i32* @PARMRK, align 4
  %154 = or i32 %152, %153
  %155 = and i32 %151, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %148
  %158 = load i32, i32* @PNX8XXX_UART_INT_BREAK, align 4
  %159 = call i32 @ISTAT_TO_SM(i32 %158)
  %160 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %7, align 8
  %161 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %159
  store i32 %164, i32* %162, align 4
  br label %165

165:                                              ; preds = %157, %148
  %166 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %7, align 8
  %167 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 1
  store i32 0, i32* %168, align 4
  %169 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %170 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @IGNPAR, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %186

175:                                              ; preds = %165
  %176 = load i32, i32* @PNX8XXX_UART_FIFO_RXFE, align 4
  %177 = call i32 @FIFO_TO_SM(i32 %176)
  %178 = load i32, i32* @PNX8XXX_UART_FIFO_RXPAR, align 4
  %179 = call i32 @FIFO_TO_SM(i32 %178)
  %180 = or i32 %177, %179
  %181 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %7, align 8
  %182 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %180
  store i32 %185, i32* %183, align 4
  br label %186

186:                                              ; preds = %175, %165
  %187 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %188 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @IGNBRK, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %216

193:                                              ; preds = %186
  %194 = load i32, i32* @PNX8XXX_UART_INT_BREAK, align 4
  %195 = call i32 @ISTAT_TO_SM(i32 %194)
  %196 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %7, align 8
  %197 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = or i32 %199, %195
  store i32 %200, i32* %198, align 4
  %201 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %202 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @IGNPAR, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %215

207:                                              ; preds = %193
  %208 = load i32, i32* @PNX8XXX_UART_INT_RXOVRN, align 4
  %209 = call i32 @ISTAT_TO_SM(i32 %208)
  %210 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %7, align 8
  %211 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = or i32 %213, %209
  store i32 %214, i32* %212, align 4
  br label %215

215:                                              ; preds = %207, %193
  br label %216

216:                                              ; preds = %215, %186
  %217 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %218 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @CREAD, align 4
  %221 = and i32 %219, %220
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %231

223:                                              ; preds = %216
  %224 = load i32, i32* @PNX8XXX_UART_INT_RX, align 4
  %225 = call i32 @ISTAT_TO_SM(i32 %224)
  %226 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %7, align 8
  %227 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = or i32 %229, %225
  store i32 %230, i32* %228, align 4
  br label %231

231:                                              ; preds = %223, %216
  %232 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %7, align 8
  %233 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %232, i32 0, i32 1
  %234 = call i32 @del_timer_sync(i32* %233)
  %235 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %236 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %237 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* %11, align 4
  %240 = call i32 @uart_update_timeout(%struct.uart_port* %235, i32 %238, i32 %239)
  %241 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %7, align 8
  %242 = load i32, i32* @PNX8XXX_IEN, align 4
  %243 = call i32 @serial_in(%struct.pnx8xxx_port* %241, i32 %242)
  store i32 %243, i32* %10, align 4
  %244 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %7, align 8
  %245 = load i32, i32* @PNX8XXX_IEN, align 4
  %246 = load i32, i32* %10, align 4
  %247 = load i32, i32* @PNX8XXX_UART_INT_ALLTX, align 4
  %248 = load i32, i32* @PNX8XXX_UART_INT_ALLRX, align 4
  %249 = or i32 %247, %248
  %250 = xor i32 %249, -1
  %251 = and i32 %246, %250
  %252 = call i32 @serial_out(%struct.pnx8xxx_port* %244, i32 %245, i32 %251)
  br label %253

253:                                              ; preds = %260, %231
  %254 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %7, align 8
  %255 = load i32, i32* @PNX8XXX_FIFO, align 4
  %256 = call i32 @serial_in(%struct.pnx8xxx_port* %254, i32 %255)
  %257 = load i32, i32* @PNX8XXX_UART_FIFO_TXFIFO_STA, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %253
  %261 = call i32 (...) @barrier()
  br label %253

262:                                              ; preds = %253
  %263 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %7, align 8
  %264 = load i32, i32* @PNX8XXX_IEN, align 4
  %265 = call i32 @serial_out(%struct.pnx8xxx_port* %263, i32 %264, i32 0)
  %266 = load i32, i32* @PNX8XXX_UART_LCR_TX_RST, align 4
  %267 = load i32, i32* %9, align 4
  %268 = or i32 %267, %266
  store i32 %268, i32* %9, align 4
  %269 = load i32, i32* @PNX8XXX_UART_LCR_RX_RST, align 4
  %270 = load i32, i32* %9, align 4
  %271 = or i32 %270, %269
  store i32 %271, i32* %9, align 4
  %272 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %7, align 8
  %273 = load i32, i32* @PNX8XXX_LCR, align 4
  %274 = load i32, i32* %9, align 4
  %275 = call i32 @serial_out(%struct.pnx8xxx_port* %272, i32 %273, i32 %274)
  %276 = load i32, i32* %12, align 4
  %277 = sub i32 %276, 1
  store i32 %277, i32* %12, align 4
  %278 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %7, align 8
  %279 = load i32, i32* @PNX8XXX_BAUD, align 4
  %280 = load i32, i32* %12, align 4
  %281 = call i32 @serial_out(%struct.pnx8xxx_port* %278, i32 %279, i32 %280)
  %282 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %7, align 8
  %283 = load i32, i32* @PNX8XXX_ICLR, align 4
  %284 = call i32 @serial_out(%struct.pnx8xxx_port* %282, i32 %283, i32 -1)
  %285 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %7, align 8
  %286 = load i32, i32* @PNX8XXX_IEN, align 4
  %287 = load i32, i32* %10, align 4
  %288 = call i32 @serial_out(%struct.pnx8xxx_port* %285, i32 %286, i32 %287)
  %289 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %7, align 8
  %290 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %289, i32 0, i32 0
  %291 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %292 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = call i64 @UART_ENABLE_MS(%struct.TYPE_3__* %290, i32 %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %300

296:                                              ; preds = %262
  %297 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %7, align 8
  %298 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %297, i32 0, i32 0
  %299 = call i32 @pnx8xxx_enable_ms(%struct.TYPE_3__* %298)
  br label %300

300:                                              ; preds = %296, %262
  %301 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %7, align 8
  %302 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %302, i32 0, i32 2
  %304 = load i64, i64* %8, align 8
  %305 = call i32 @spin_unlock_irqrestore(i32* %303, i64 %304)
  ret void
}

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @uart_get_divisor(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ISTAT_TO_SM(i32) #1

declare dso_local i32 @FIFO_TO_SM(i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @serial_in(%struct.pnx8xxx_port*, i32) #1

declare dso_local i32 @serial_out(%struct.pnx8xxx_port*, i32, i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i64 @UART_ENABLE_MS(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @pnx8xxx_enable_ms(%struct.TYPE_3__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

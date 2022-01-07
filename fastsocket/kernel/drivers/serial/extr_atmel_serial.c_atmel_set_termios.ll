; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_atmel_serial.c_atmel_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_atmel_serial.c_atmel_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.uart_port*)* }
%struct.ktermios = type { i32, i32 }

@ATMEL_US_USCLKS = common dso_local global i32 0, align 4
@ATMEL_US_CHRL = common dso_local global i32 0, align 4
@ATMEL_US_NBSTOP = common dso_local global i32 0, align 4
@ATMEL_US_PAR = common dso_local global i32 0, align 4
@ATMEL_US_USMODE = common dso_local global i32 0, align 4
@ATMEL_US_USCLKS_MCK_DIV8 = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@ATMEL_US_CHRL_5 = common dso_local global i32 0, align 4
@ATMEL_US_CHRL_6 = common dso_local global i32 0, align 4
@ATMEL_US_CHRL_7 = common dso_local global i32 0, align 4
@ATMEL_US_CHRL_8 = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@ATMEL_US_NBSTOP_2 = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@ATMEL_US_PAR_MARK = common dso_local global i32 0, align 4
@ATMEL_US_PAR_SPACE = common dso_local global i32 0, align 4
@ATMEL_US_PAR_ODD = common dso_local global i32 0, align 4
@ATMEL_US_PAR_EVEN = common dso_local global i32 0, align 4
@ATMEL_US_PAR_NONE = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@ATMEL_US_USMODE_HWHS = common dso_local global i32 0, align 4
@ATMEL_US_USMODE_NORMAL = common dso_local global i32 0, align 4
@ATMEL_US_OVRE = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@ATMEL_US_FRAME = common dso_local global i32 0, align 4
@ATMEL_US_PARE = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@ATMEL_US_RXBRK = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@ATMEL_US_TXDIS = common dso_local global i32 0, align 4
@ATMEL_US_RXDIS = common dso_local global i32 0, align 4
@ATMEL_US_RSTSTA = common dso_local global i32 0, align 4
@ATMEL_US_RSTRX = common dso_local global i32 0, align 4
@ATMEL_US_TXEN = common dso_local global i32 0, align 4
@ATMEL_US_RXEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @atmel_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %13 = call i32 @UART_GET_MR(%struct.uart_port* %12)
  %14 = load i32, i32* @ATMEL_US_USCLKS, align 4
  %15 = load i32, i32* @ATMEL_US_CHRL, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @ATMEL_US_NBSTOP, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @ATMEL_US_PAR, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @ATMEL_US_USMODE, align 4
  %22 = or i32 %20, %21
  %23 = xor i32 %22, -1
  %24 = and i32 %13, %23
  store i32 %24, i32* %8, align 4
  %25 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %26 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %27 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %28 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %29 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sdiv i32 %30, 16
  %32 = call i32 @uart_get_baud_rate(%struct.uart_port* %25, %struct.ktermios* %26, %struct.ktermios* %27, i32 0, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @uart_get_divisor(%struct.uart_port* %33, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ugt i32 %36, 65535
  br i1 %37, label %38, label %44

38:                                               ; preds = %3
  %39 = load i32, i32* %10, align 4
  %40 = udiv i32 %39, 8
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* @ATMEL_US_USCLKS_MCK_DIV8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %38, %3
  %45 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %46 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CSIZE, align 4
  %49 = and i32 %47, %48
  switch i32 %49, label %62 [
    i32 130, label %50
    i32 129, label %54
    i32 128, label %58
  ]

50:                                               ; preds = %44
  %51 = load i32, i32* @ATMEL_US_CHRL_5, align 4
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  br label %66

54:                                               ; preds = %44
  %55 = load i32, i32* @ATMEL_US_CHRL_6, align 4
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  br label %66

58:                                               ; preds = %44
  %59 = load i32, i32* @ATMEL_US_CHRL_7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  br label %66

62:                                               ; preds = %44
  %63 = load i32, i32* @ATMEL_US_CHRL_8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %62, %58, %54, %50
  %67 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %68 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @CSTOPB, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load i32, i32* @ATMEL_US_NBSTOP_2, align 4
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %73, %66
  %78 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %79 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @PARENB, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %124

84:                                               ; preds = %77
  %85 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %86 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @CMSPAR, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %84
  %92 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %93 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @PARODD, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %91
  %99 = load i32, i32* @ATMEL_US_PAR_MARK, align 4
  %100 = load i32, i32* %8, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %8, align 4
  br label %106

102:                                              ; preds = %91
  %103 = load i32, i32* @ATMEL_US_PAR_SPACE, align 4
  %104 = load i32, i32* %8, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %102, %98
  br label %123

107:                                              ; preds = %84
  %108 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %109 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @PARODD, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = load i32, i32* @ATMEL_US_PAR_ODD, align 4
  %116 = load i32, i32* %8, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %8, align 4
  br label %122

118:                                              ; preds = %107
  %119 = load i32, i32* @ATMEL_US_PAR_EVEN, align 4
  %120 = load i32, i32* %8, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %8, align 4
  br label %122

122:                                              ; preds = %118, %114
  br label %123

123:                                              ; preds = %122, %106
  br label %128

124:                                              ; preds = %77
  %125 = load i32, i32* @ATMEL_US_PAR_NONE, align 4
  %126 = load i32, i32* %8, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %8, align 4
  br label %128

128:                                              ; preds = %124, %123
  %129 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %130 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @CRTSCTS, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %128
  %136 = load i32, i32* @ATMEL_US_USMODE_HWHS, align 4
  %137 = load i32, i32* %8, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %8, align 4
  br label %143

139:                                              ; preds = %128
  %140 = load i32, i32* @ATMEL_US_USMODE_NORMAL, align 4
  %141 = load i32, i32* %8, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %8, align 4
  br label %143

143:                                              ; preds = %139, %135
  %144 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %145 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %144, i32 0, i32 3
  %146 = load i64, i64* %7, align 8
  %147 = call i32 @spin_lock_irqsave(i32* %145, i64 %146)
  %148 = load i32, i32* @ATMEL_US_OVRE, align 4
  %149 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %150 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  %151 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %152 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @INPCK, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %143
  %158 = load i32, i32* @ATMEL_US_FRAME, align 4
  %159 = load i32, i32* @ATMEL_US_PARE, align 4
  %160 = or i32 %158, %159
  %161 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %162 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 4
  br label %165

165:                                              ; preds = %157, %143
  %166 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %167 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @BRKINT, align 4
  %170 = load i32, i32* @PARMRK, align 4
  %171 = or i32 %169, %170
  %172 = and i32 %168, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %165
  %175 = load i32, i32* @ATMEL_US_RXBRK, align 4
  %176 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %177 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, %175
  store i32 %179, i32* %177, align 4
  br label %180

180:                                              ; preds = %174, %165
  %181 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %182 = call i64 @atmel_use_dma_rx(%struct.uart_port* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %180
  %185 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %186 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %187 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @UART_PUT_IER(%struct.uart_port* %185, i32 %188)
  br label %190

190:                                              ; preds = %184, %180
  %191 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %192 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %191, i32 0, i32 2
  store i32 0, i32* %192, align 8
  %193 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %194 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @IGNPAR, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %207

199:                                              ; preds = %190
  %200 = load i32, i32* @ATMEL_US_FRAME, align 4
  %201 = load i32, i32* @ATMEL_US_PARE, align 4
  %202 = or i32 %200, %201
  %203 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %204 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 8
  br label %207

207:                                              ; preds = %199, %190
  %208 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %209 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @IGNBRK, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %233

214:                                              ; preds = %207
  %215 = load i32, i32* @ATMEL_US_RXBRK, align 4
  %216 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %217 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = or i32 %218, %215
  store i32 %219, i32* %217, align 8
  %220 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %221 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @IGNPAR, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %214
  %227 = load i32, i32* @ATMEL_US_OVRE, align 4
  %228 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %229 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = or i32 %230, %227
  store i32 %231, i32* %229, align 8
  br label %232

232:                                              ; preds = %226, %214
  br label %233

233:                                              ; preds = %232, %207
  %234 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %235 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %236 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %11, align 4
  %239 = call i32 @uart_update_timeout(%struct.uart_port* %234, i32 %237, i32 %238)
  %240 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %241 = call i32 @UART_GET_IMR(%struct.uart_port* %240)
  store i32 %241, i32* %9, align 4
  %242 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %243 = call i32 @UART_PUT_IDR(%struct.uart_port* %242, i32 -1)
  %244 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %245 = load i32, i32* @ATMEL_US_TXDIS, align 4
  %246 = load i32, i32* @ATMEL_US_RXDIS, align 4
  %247 = or i32 %245, %246
  %248 = call i32 @UART_PUT_CR(%struct.uart_port* %244, i32 %247)
  %249 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %250 = load i32, i32* %8, align 4
  %251 = call i32 @UART_PUT_MR(%struct.uart_port* %249, i32 %250)
  %252 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %253 = load i32, i32* %10, align 4
  %254 = call i32 @UART_PUT_BRGR(%struct.uart_port* %252, i32 %253)
  %255 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %256 = load i32, i32* @ATMEL_US_RSTSTA, align 4
  %257 = load i32, i32* @ATMEL_US_RSTRX, align 4
  %258 = or i32 %256, %257
  %259 = call i32 @UART_PUT_CR(%struct.uart_port* %255, i32 %258)
  %260 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %261 = load i32, i32* @ATMEL_US_TXEN, align 4
  %262 = load i32, i32* @ATMEL_US_RXEN, align 4
  %263 = or i32 %261, %262
  %264 = call i32 @UART_PUT_CR(%struct.uart_port* %260, i32 %263)
  %265 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %266 = load i32, i32* %9, align 4
  %267 = call i32 @UART_PUT_IER(%struct.uart_port* %265, i32 %266)
  %268 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %269 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %270 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = call i64 @UART_ENABLE_MS(%struct.uart_port* %268, i32 %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %282

274:                                              ; preds = %233
  %275 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %276 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %275, i32 0, i32 4
  %277 = load %struct.TYPE_2__*, %struct.TYPE_2__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %277, i32 0, i32 0
  %279 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %278, align 8
  %280 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %281 = call i32 %279(%struct.uart_port* %280)
  br label %282

282:                                              ; preds = %274, %233
  %283 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %284 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %283, i32 0, i32 3
  %285 = load i64, i64* %7, align 8
  %286 = call i32 @spin_unlock_irqrestore(i32* %284, i64 %285)
  ret void
}

declare dso_local i32 @UART_GET_MR(%struct.uart_port*) #1

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @uart_get_divisor(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @atmel_use_dma_rx(%struct.uart_port*) #1

declare dso_local i32 @UART_PUT_IER(%struct.uart_port*, i32) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @UART_GET_IMR(%struct.uart_port*) #1

declare dso_local i32 @UART_PUT_IDR(%struct.uart_port*, i32) #1

declare dso_local i32 @UART_PUT_CR(%struct.uart_port*, i32) #1

declare dso_local i32 @UART_PUT_MR(%struct.uart_port*, i32) #1

declare dso_local i32 @UART_PUT_BRGR(%struct.uart_port*, i32) #1

declare dso_local i64 @UART_ENABLE_MS(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

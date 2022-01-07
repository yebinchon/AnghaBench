; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sb1250-duart.c_sbd_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sb1250-duart.c_sbd_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32 }
%struct.ktermios = type { i32, i32 }
%struct.sbd_port = type { i64 }

@M_DUART_PARITY_MODE = common dso_local global i32 0, align 4
@M_DUART_PARITY_TYPE_ODD = common dso_local global i32 0, align 4
@M_DUART_BITS_PER_CHAR = common dso_local global i32 0, align 4
@M_DUART_STOP_BIT_LEN_2 = common dso_local global i32 0, align 4
@M_DUART_CTS_CHNG_ENA = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@V_DUART_BITS_PER_CHAR_7 = common dso_local global i32 0, align 4
@V_DUART_BITS_PER_CHAR_8 = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@M_DUART_STOP_BIT_LEN_1 = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@V_DUART_PARITY_MODE_ADD = common dso_local global i32 0, align 4
@V_DUART_PARITY_MODE_NONE = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@M_DUART_PARITY_TYPE_EVEN = common dso_local global i32 0, align 4
@M_DUART_CLK_COUNTER = common dso_local global i32 0, align 4
@M_DUART_OVRUN_ERR = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@M_DUART_FRM_ERR = common dso_local global i32 0, align 4
@M_DUART_PARITY_ERR = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@M_DUART_RCVD_BRK = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@M_DUART_RX_EN = common dso_local global i32 0, align 4
@M_DUART_RX_DIS = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@M_DUART_TX_DIS = common dso_local global i32 0, align 4
@M_DUART_TX_EN = common dso_local global i32 0, align 4
@R_DUART_MODE_REG_1 = common dso_local global i32 0, align 4
@R_DUART_MODE_REG_2 = common dso_local global i32 0, align 4
@R_DUART_AUXCTL_X = common dso_local global i32 0, align 4
@R_DUART_CMD = common dso_local global i32 0, align 4
@R_DUART_CLK_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @sbd_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbd_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.sbd_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %20 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %21 = call %struct.sbd_port* @to_sport(%struct.uart_port* %20)
  store %struct.sbd_port* %21, %struct.sbd_port** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %22 = load i32, i32* @M_DUART_PARITY_MODE, align 4
  %23 = load i32, i32* @M_DUART_PARITY_TYPE_ODD, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @M_DUART_BITS_PER_CHAR, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %11, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* @M_DUART_STOP_BIT_LEN_2, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %12, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* @M_DUART_CTS_CHNG_ENA, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %13, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %13, align 4
  %38 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %39 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @CSIZE, align 4
  %42 = and i32 %40, %41
  switch i32 %42, label %52 [
    i32 131, label %43
    i32 130, label %43
    i32 129, label %47
    i32 128, label %51
  ]

43:                                               ; preds = %3, %3
  %44 = load i32, i32* @M_DUART_PARITY_MODE, align 4
  %45 = load i32, i32* %11, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %11, align 4
  br label %56

47:                                               ; preds = %3
  %48 = load i32, i32* @V_DUART_BITS_PER_CHAR_7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %8, align 4
  br label %56

51:                                               ; preds = %3
  br label %52

52:                                               ; preds = %3, %51
  %53 = load i32, i32* @V_DUART_BITS_PER_CHAR_8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %52, %47, %43
  %57 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %58 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @CSTOPB, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load i32, i32* @M_DUART_STOP_BIT_LEN_2, align 4
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %9, align 4
  br label %71

67:                                               ; preds = %56
  %68 = load i32, i32* @M_DUART_STOP_BIT_LEN_1, align 4
  %69 = load i32, i32* %9, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %67, %63
  %72 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %73 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @PARENB, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load i32, i32* @V_DUART_PARITY_MODE_ADD, align 4
  %80 = load i32, i32* %8, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %8, align 4
  br label %86

82:                                               ; preds = %71
  %83 = load i32, i32* @V_DUART_PARITY_MODE_NONE, align 4
  %84 = load i32, i32* %8, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %82, %78
  %87 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %88 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @PARODD, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %86
  %94 = load i32, i32* @M_DUART_PARITY_TYPE_ODD, align 4
  %95 = load i32, i32* %8, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %8, align 4
  br label %101

97:                                               ; preds = %86
  %98 = load i32, i32* @M_DUART_PARITY_TYPE_EVEN, align 4
  %99 = load i32, i32* %8, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %97, %93
  %102 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %103 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %104 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %105 = call i32 @uart_get_baud_rate(%struct.uart_port* %102, %struct.ktermios* %103, %struct.ktermios* %104, i32 1200, i32 5000000)
  store i32 %105, i32* %17, align 4
  %106 = load i32, i32* %17, align 4
  %107 = call i32 @V_DUART_BAUD_RATE(i32 %106)
  store i32 %107, i32* %18, align 4
  %108 = load i32, i32* %18, align 4
  %109 = load i32, i32* @M_DUART_CLK_COUNTER, align 4
  %110 = icmp ugt i32 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %101
  %112 = load i32, i32* @M_DUART_CLK_COUNTER, align 4
  store i32 %112, i32* %18, align 4
  br label %113

113:                                              ; preds = %111, %101
  %114 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %115 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %116 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %17, align 4
  %119 = call i32 @uart_update_timeout(%struct.uart_port* %114, i32 %117, i32 %118)
  %120 = load i32, i32* @M_DUART_OVRUN_ERR, align 4
  %121 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %122 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 4
  %123 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %124 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @INPCK, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %113
  %130 = load i32, i32* @M_DUART_FRM_ERR, align 4
  %131 = load i32, i32* @M_DUART_PARITY_ERR, align 4
  %132 = or i32 %130, %131
  %133 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %134 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  br label %137

137:                                              ; preds = %129, %113
  %138 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %139 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @BRKINT, align 4
  %142 = load i32, i32* @PARMRK, align 4
  %143 = or i32 %141, %142
  %144 = and i32 %140, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %137
  %147 = load i32, i32* @M_DUART_RCVD_BRK, align 4
  %148 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %149 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %146, %137
  %153 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %154 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %153, i32 0, i32 1
  store i32 0, i32* %154, align 4
  %155 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %156 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @IGNPAR, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %152
  %162 = load i32, i32* @M_DUART_FRM_ERR, align 4
  %163 = load i32, i32* @M_DUART_PARITY_ERR, align 4
  %164 = or i32 %162, %163
  %165 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %166 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %167, %164
  store i32 %168, i32* %166, align 4
  br label %169

169:                                              ; preds = %161, %152
  %170 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %171 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @IGNBRK, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %195

176:                                              ; preds = %169
  %177 = load i32, i32* @M_DUART_RCVD_BRK, align 4
  %178 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %179 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %180, %177
  store i32 %181, i32* %179, align 4
  %182 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %183 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @IGNPAR, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %176
  %189 = load i32, i32* @M_DUART_OVRUN_ERR, align 4
  %190 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %191 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 4
  br label %194

194:                                              ; preds = %188, %176
  br label %195

195:                                              ; preds = %194, %169
  %196 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %197 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @CREAD, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %195
  %203 = load i32, i32* @M_DUART_RX_EN, align 4
  store i32 %203, i32* %19, align 4
  br label %206

204:                                              ; preds = %195
  %205 = load i32, i32* @M_DUART_RX_DIS, align 4
  store i32 %205, i32* %19, align 4
  br label %206

206:                                              ; preds = %204, %202
  %207 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %208 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @CRTSCTS, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %206
  %214 = load i32, i32* @M_DUART_CTS_CHNG_ENA, align 4
  %215 = load i32, i32* %10, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %10, align 4
  br label %222

217:                                              ; preds = %206
  %218 = load i32, i32* @M_DUART_CTS_CHNG_ENA, align 4
  %219 = xor i32 %218, -1
  %220 = load i32, i32* %10, align 4
  %221 = and i32 %220, %219
  store i32 %221, i32* %10, align 4
  br label %222

222:                                              ; preds = %217, %213
  %223 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %224 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %223, i32 0, i32 2
  %225 = call i32 @spin_lock(i32* %224)
  %226 = load %struct.sbd_port*, %struct.sbd_port** %7, align 8
  %227 = getelementptr inbounds %struct.sbd_port, %struct.sbd_port* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %222
  %231 = load i32, i32* @M_DUART_TX_DIS, align 4
  %232 = load i32, i32* %19, align 4
  %233 = or i32 %232, %231
  store i32 %233, i32* %19, align 4
  br label %238

234:                                              ; preds = %222
  %235 = load i32, i32* @M_DUART_TX_EN, align 4
  %236 = load i32, i32* %19, align 4
  %237 = or i32 %236, %235
  store i32 %237, i32* %19, align 4
  br label %238

238:                                              ; preds = %234, %230
  %239 = load %struct.sbd_port*, %struct.sbd_port** %7, align 8
  %240 = load i32, i32* @R_DUART_MODE_REG_1, align 4
  %241 = call i32 @read_sbdchn(%struct.sbd_port* %239, i32 %240)
  %242 = load i32, i32* %11, align 4
  %243 = and i32 %241, %242
  store i32 %243, i32* %14, align 4
  %244 = load %struct.sbd_port*, %struct.sbd_port** %7, align 8
  %245 = load i32, i32* @R_DUART_MODE_REG_2, align 4
  %246 = call i32 @read_sbdchn(%struct.sbd_port* %244, i32 %245)
  %247 = load i32, i32* %12, align 4
  %248 = and i32 %246, %247
  store i32 %248, i32* %15, align 4
  %249 = load %struct.sbd_port*, %struct.sbd_port** %7, align 8
  %250 = load i32, i32* @R_DUART_AUXCTL_X, align 4
  %251 = call i32 @read_sbdchn(%struct.sbd_port* %249, i32 %250)
  %252 = load i32, i32* %13, align 4
  %253 = and i32 %251, %252
  store i32 %253, i32* %16, align 4
  %254 = load %struct.sbd_port*, %struct.sbd_port** %7, align 8
  %255 = getelementptr inbounds %struct.sbd_port, %struct.sbd_port* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %261, label %258

258:                                              ; preds = %238
  %259 = load %struct.sbd_port*, %struct.sbd_port** %7, align 8
  %260 = call i32 @sbd_line_drain(%struct.sbd_port* %259)
  br label %261

261:                                              ; preds = %258, %238
  %262 = load %struct.sbd_port*, %struct.sbd_port** %7, align 8
  %263 = load i32, i32* @R_DUART_CMD, align 4
  %264 = load i32, i32* @M_DUART_TX_DIS, align 4
  %265 = load i32, i32* @M_DUART_RX_DIS, align 4
  %266 = or i32 %264, %265
  %267 = call i32 @write_sbdchn(%struct.sbd_port* %262, i32 %263, i32 %266)
  %268 = load %struct.sbd_port*, %struct.sbd_port** %7, align 8
  %269 = load i32, i32* @R_DUART_MODE_REG_1, align 4
  %270 = load i32, i32* %8, align 4
  %271 = load i32, i32* %14, align 4
  %272 = or i32 %270, %271
  %273 = call i32 @write_sbdchn(%struct.sbd_port* %268, i32 %269, i32 %272)
  %274 = load %struct.sbd_port*, %struct.sbd_port** %7, align 8
  %275 = load i32, i32* @R_DUART_MODE_REG_2, align 4
  %276 = load i32, i32* %9, align 4
  %277 = load i32, i32* %15, align 4
  %278 = or i32 %276, %277
  %279 = call i32 @write_sbdchn(%struct.sbd_port* %274, i32 %275, i32 %278)
  %280 = load %struct.sbd_port*, %struct.sbd_port** %7, align 8
  %281 = load i32, i32* @R_DUART_CLK_SEL, align 4
  %282 = load i32, i32* %18, align 4
  %283 = call i32 @write_sbdchn(%struct.sbd_port* %280, i32 %281, i32 %282)
  %284 = load %struct.sbd_port*, %struct.sbd_port** %7, align 8
  %285 = load i32, i32* @R_DUART_AUXCTL_X, align 4
  %286 = load i32, i32* %10, align 4
  %287 = load i32, i32* %16, align 4
  %288 = or i32 %286, %287
  %289 = call i32 @write_sbdchn(%struct.sbd_port* %284, i32 %285, i32 %288)
  %290 = load %struct.sbd_port*, %struct.sbd_port** %7, align 8
  %291 = load i32, i32* @R_DUART_CMD, align 4
  %292 = load i32, i32* %19, align 4
  %293 = call i32 @write_sbdchn(%struct.sbd_port* %290, i32 %291, i32 %292)
  %294 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %295 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %294, i32 0, i32 2
  %296 = call i32 @spin_unlock(i32* %295)
  ret void
}

declare dso_local %struct.sbd_port* @to_sport(%struct.uart_port*) #1

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @V_DUART_BAUD_RATE(i32) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @read_sbdchn(%struct.sbd_port*, i32) #1

declare dso_local i32 @sbd_line_drain(%struct.sbd_port*) #1

declare dso_local i32 @write_sbdchn(%struct.sbd_port*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

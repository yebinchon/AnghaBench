; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_amba-pl010.c_pl010_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_amba-pl010.c_pl010_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.ktermios = type { i32, i32 }
%struct.uart_amba_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i64 }

@CSIZE = common dso_local global i32 0, align 4
@UART01x_LCRH_WLEN_5 = common dso_local global i32 0, align 4
@UART01x_LCRH_WLEN_6 = common dso_local global i32 0, align 4
@UART01x_LCRH_WLEN_7 = common dso_local global i32 0, align 4
@UART01x_LCRH_WLEN_8 = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@UART01x_LCRH_STP2 = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@UART01x_LCRH_PEN = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@UART01x_LCRH_EPS = common dso_local global i32 0, align 4
@UART01x_LCRH_FEN = common dso_local global i32 0, align 4
@UART01x_RSR_OE = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@UART01x_RSR_FE = common dso_local global i32 0, align 4
@UART01x_RSR_PE = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@UART01x_RSR_BE = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@UART_DUMMY_RSR_RX = common dso_local global i32 0, align 4
@UART010_CR = common dso_local global i64 0, align 8
@UART010_CR_MSIE = common dso_local global i32 0, align 4
@UART010_LCRM = common dso_local global i64 0, align 8
@UART010_LCRL = common dso_local global i64 0, align 8
@UART010_LCRH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @pl010_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl010_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.uart_amba_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %13 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %14 = bitcast %struct.uart_port* %13 to %struct.uart_amba_port*
  store %struct.uart_amba_port* %14, %struct.uart_amba_port** %7, align 8
  %15 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %16 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %17 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %18 = load %struct.uart_amba_port*, %struct.uart_amba_port** %7, align 8
  %19 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sdiv i32 %21, 16
  %23 = call i32 @uart_get_baud_rate(%struct.uart_port* %15, %struct.ktermios* %16, %struct.ktermios* %17, i32 0, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @uart_get_divisor(%struct.uart_port* %24, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %28 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @CSIZE, align 4
  %31 = and i32 %29, %30
  switch i32 %31, label %38 [
    i32 130, label %32
    i32 129, label %34
    i32 128, label %36
  ]

32:                                               ; preds = %3
  %33 = load i32, i32* @UART01x_LCRH_WLEN_5, align 4
  store i32 %33, i32* %8, align 4
  br label %40

34:                                               ; preds = %3
  %35 = load i32, i32* @UART01x_LCRH_WLEN_6, align 4
  store i32 %35, i32* %8, align 4
  br label %40

36:                                               ; preds = %3
  %37 = load i32, i32* @UART01x_LCRH_WLEN_7, align 4
  store i32 %37, i32* %8, align 4
  br label %40

38:                                               ; preds = %3
  %39 = load i32, i32* @UART01x_LCRH_WLEN_8, align 4
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %38, %36, %34, %32
  %41 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %42 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CSTOPB, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load i32, i32* @UART01x_LCRH_STP2, align 4
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %47, %40
  %52 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %53 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PARENB, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %51
  %59 = load i32, i32* @UART01x_LCRH_PEN, align 4
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  %62 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %63 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @PARODD, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %58
  %69 = load i32, i32* @UART01x_LCRH_EPS, align 4
  %70 = load i32, i32* %8, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %68, %58
  br label %73

73:                                               ; preds = %72, %51
  %74 = load %struct.uart_amba_port*, %struct.uart_amba_port** %7, align 8
  %75 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp sgt i32 %77, 1
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load i32, i32* @UART01x_LCRH_FEN, align 4
  %81 = load i32, i32* %8, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %79, %73
  %84 = load %struct.uart_amba_port*, %struct.uart_amba_port** %7, align 8
  %85 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 4
  %87 = load i64, i64* %10, align 8
  %88 = call i32 @spin_lock_irqsave(i32* %86, i64 %87)
  %89 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %90 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %91 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @uart_update_timeout(%struct.uart_port* %89, i32 %92, i32 %93)
  %95 = load i32, i32* @UART01x_RSR_OE, align 4
  %96 = load %struct.uart_amba_port*, %struct.uart_amba_port** %7, align 8
  %97 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  store i32 %95, i32* %98, align 8
  %99 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %100 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @INPCK, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %83
  %106 = load i32, i32* @UART01x_RSR_FE, align 4
  %107 = load i32, i32* @UART01x_RSR_PE, align 4
  %108 = or i32 %106, %107
  %109 = load %struct.uart_amba_port*, %struct.uart_amba_port** %7, align 8
  %110 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %108
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %105, %83
  %115 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %116 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @BRKINT, align 4
  %119 = load i32, i32* @PARMRK, align 4
  %120 = or i32 %118, %119
  %121 = and i32 %117, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %114
  %124 = load i32, i32* @UART01x_RSR_BE, align 4
  %125 = load %struct.uart_amba_port*, %struct.uart_amba_port** %7, align 8
  %126 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %124
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %123, %114
  %131 = load %struct.uart_amba_port*, %struct.uart_amba_port** %7, align 8
  %132 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 3
  store i32 0, i32* %133, align 4
  %134 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %135 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @IGNPAR, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %130
  %141 = load i32, i32* @UART01x_RSR_FE, align 4
  %142 = load i32, i32* @UART01x_RSR_PE, align 4
  %143 = or i32 %141, %142
  %144 = load %struct.uart_amba_port*, %struct.uart_amba_port** %7, align 8
  %145 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, %143
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %140, %130
  %150 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %151 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @IGNBRK, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %177

156:                                              ; preds = %149
  %157 = load i32, i32* @UART01x_RSR_BE, align 4
  %158 = load %struct.uart_amba_port*, %struct.uart_amba_port** %7, align 8
  %159 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %157
  store i32 %162, i32* %160, align 4
  %163 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %164 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @IGNPAR, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %156
  %170 = load i32, i32* @UART01x_RSR_OE, align 4
  %171 = load %struct.uart_amba_port*, %struct.uart_amba_port** %7, align 8
  %172 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %170
  store i32 %175, i32* %173, align 4
  br label %176

176:                                              ; preds = %169, %156
  br label %177

177:                                              ; preds = %176, %149
  %178 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %179 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @CREAD, align 4
  %182 = and i32 %180, %181
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %177
  %185 = load i32, i32* @UART_DUMMY_RSR_RX, align 4
  %186 = load %struct.uart_amba_port*, %struct.uart_amba_port** %7, align 8
  %187 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = or i32 %189, %185
  store i32 %190, i32* %188, align 4
  br label %191

191:                                              ; preds = %184, %177
  %192 = load %struct.uart_amba_port*, %struct.uart_amba_port** %7, align 8
  %193 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 5
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @UART010_CR, align 8
  %197 = add nsw i64 %195, %196
  %198 = call i32 @readb(i64 %197)
  %199 = load i32, i32* @UART010_CR_MSIE, align 4
  %200 = xor i32 %199, -1
  %201 = and i32 %198, %200
  store i32 %201, i32* %9, align 4
  %202 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %203 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %204 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i64 @UART_ENABLE_MS(%struct.uart_port* %202, i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %191
  %209 = load i32, i32* @UART010_CR_MSIE, align 4
  %210 = load i32, i32* %9, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %9, align 4
  br label %212

212:                                              ; preds = %208, %191
  %213 = load %struct.uart_amba_port*, %struct.uart_amba_port** %7, align 8
  %214 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 5
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @UART010_CR, align 8
  %218 = add nsw i64 %216, %217
  %219 = call i32 @writel(i32 0, i64 %218)
  %220 = load i32, i32* %12, align 4
  %221 = sub i32 %220, 1
  store i32 %221, i32* %12, align 4
  %222 = load i32, i32* %12, align 4
  %223 = and i32 %222, 3840
  %224 = lshr i32 %223, 8
  %225 = load %struct.uart_amba_port*, %struct.uart_amba_port** %7, align 8
  %226 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 5
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @UART010_LCRM, align 8
  %230 = add nsw i64 %228, %229
  %231 = call i32 @writel(i32 %224, i64 %230)
  %232 = load i32, i32* %12, align 4
  %233 = and i32 %232, 255
  %234 = load %struct.uart_amba_port*, %struct.uart_amba_port** %7, align 8
  %235 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 5
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @UART010_LCRL, align 8
  %239 = add nsw i64 %237, %238
  %240 = call i32 @writel(i32 %233, i64 %239)
  %241 = load i32, i32* %8, align 4
  %242 = load %struct.uart_amba_port*, %struct.uart_amba_port** %7, align 8
  %243 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 5
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @UART010_LCRH, align 8
  %247 = add nsw i64 %245, %246
  %248 = call i32 @writel(i32 %241, i64 %247)
  %249 = load i32, i32* %9, align 4
  %250 = load %struct.uart_amba_port*, %struct.uart_amba_port** %7, align 8
  %251 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i32 0, i32 5
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @UART010_CR, align 8
  %255 = add nsw i64 %253, %254
  %256 = call i32 @writel(i32 %249, i64 %255)
  %257 = load %struct.uart_amba_port*, %struct.uart_amba_port** %7, align 8
  %258 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 4
  %260 = load i64, i64* %10, align 8
  %261 = call i32 @spin_unlock_irqrestore(i32* %259, i64 %260)
  ret void
}

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @uart_get_divisor(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i64 @UART_ENABLE_MS(%struct.uart_port*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

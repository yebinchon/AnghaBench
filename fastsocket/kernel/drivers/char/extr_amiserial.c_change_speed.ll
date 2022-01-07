; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_amiserial.c_change_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_amiserial.c_change_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i16 }
%struct.async_struct = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_12__*, i32, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.ktermios = type { i32 }

@CSTOPB = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@UART_LCR_PARITY = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@UART_LCR_EPAR = common dso_local global i32 0, align 4
@ASYNC_SPD_MASK = common dso_local global i32 0, align 4
@ASYNC_SPD_CUST = common dso_local global i32 0, align 4
@CBAUD = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@UART_IER_MSI = common dso_local global i32 0, align 4
@ASYNC_HARDPPS_CD = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@ASYNC_CTS_FLOW = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@ASYNC_CHECK_CD = common dso_local global i32 0, align 4
@UART_LSR_OE = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i32 0, align 4
@UART_LSR_FE = common dso_local global i32 0, align 4
@UART_LSR_PE = common dso_local global i32 0, align 4
@UART_LSR_BI = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@SERPER_PARENB = common dso_local global i16 0, align 2
@custom = common dso_local global %struct.TYPE_13__ zeroinitializer, align 2
@CMSPAR = common dso_local global i32 0, align 4
@UART_LCR_SPAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.async_struct*, %struct.ktermios*)* @change_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_speed(%struct.async_struct* %0, %struct.ktermios* %1) #0 {
  %3 = alloca %struct.async_struct*, align 8
  %4 = alloca %struct.ktermios*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i16, align 2
  store %struct.async_struct* %0, %struct.async_struct** %3, align 8
  store %struct.ktermios* %1, %struct.ktermios** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %14 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %13, i32 0, i32 7
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = icmp ne %struct.TYPE_12__* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %19 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %18, i32 0, i32 7
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = icmp ne %struct.TYPE_10__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17, %2
  br label %385

25:                                               ; preds = %17
  %26 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %27 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %26, i32 0, i32 7
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  store i32 3, i32* %9, align 4
  store i32 10, i32* %10, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @CSTOPB, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %25
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, 4
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %37, %25
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @PARENB, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i32, i32* @UART_LCR_PARITY, align 4
  %49 = load i32, i32* %9, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %47, %42
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @PARODD, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @UART_LCR_EPAR, align 4
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %58, %53
  %63 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %64 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %63, i32 0, i32 7
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %64, align 8
  %66 = call i32 @tty_get_baud_rate(%struct.TYPE_12__* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %62
  store i32 9600, i32* %7, align 4
  br label %70

70:                                               ; preds = %69, %62
  %71 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %72 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %71, i32 0, i32 9
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp eq i32 %76, 38400
  br i1 %77, label %78, label %92

78:                                               ; preds = %70
  %79 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %80 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %83 = and i32 %81, %82
  %84 = load i32, i32* @ASYNC_SPD_CUST, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %78
  %87 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %88 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %87, i32 0, i32 9
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %5, align 4
  br label %108

92:                                               ; preds = %78, %70
  %93 = load i32, i32* %7, align 4
  %94 = icmp eq i32 %93, 134
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i32, i32* %6, align 4
  %97 = mul nsw i32 2, %96
  %98 = sdiv i32 %97, 269
  store i32 %98, i32* %5, align 4
  br label %107

99:                                               ; preds = %92
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %7, align 4
  %105 = sdiv i32 %103, %104
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %102, %99
  br label %107

107:                                              ; preds = %106, %95
  br label %108

108:                                              ; preds = %107, %86
  %109 = load i32, i32* %5, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %179, label %111

111:                                              ; preds = %108
  %112 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %113 = icmp ne %struct.ktermios* %112, null
  br i1 %113, label %114, label %179

114:                                              ; preds = %111
  %115 = load i32, i32* @CBAUD, align 4
  %116 = xor i32 %115, -1
  %117 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %118 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %117, i32 0, i32 7
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, %116
  store i32 %124, i32* %122, align 4
  %125 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %126 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @CBAUD, align 4
  %129 = and i32 %127, %128
  %130 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %131 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %130, i32 0, i32 7
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %129
  store i32 %137, i32* %135, align 4
  %138 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %139 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %138, i32 0, i32 7
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %139, align 8
  %141 = call i32 @tty_get_baud_rate(%struct.TYPE_12__* %140)
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %114
  store i32 9600, i32* %7, align 4
  br label %145

145:                                              ; preds = %144, %114
  %146 = load i32, i32* %7, align 4
  %147 = icmp eq i32 %146, 38400
  br i1 %147, label %148, label %162

148:                                              ; preds = %145
  %149 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %150 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %153 = and i32 %151, %152
  %154 = load i32, i32* @ASYNC_SPD_CUST, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %148
  %157 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %158 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %157, i32 0, i32 9
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %5, align 4
  br label %178

162:                                              ; preds = %148, %145
  %163 = load i32, i32* %7, align 4
  %164 = icmp eq i32 %163, 134
  br i1 %164, label %165, label %169

165:                                              ; preds = %162
  %166 = load i32, i32* %6, align 4
  %167 = mul nsw i32 2, %166
  %168 = sdiv i32 %167, 269
  store i32 %168, i32* %5, align 4
  br label %177

169:                                              ; preds = %162
  %170 = load i32, i32* %7, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %169
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* %7, align 4
  %175 = sdiv i32 %173, %174
  store i32 %175, i32* %5, align 4
  br label %176

176:                                              ; preds = %172, %169
  br label %177

177:                                              ; preds = %176, %165
  br label %178

178:                                              ; preds = %177, %156
  br label %179

179:                                              ; preds = %178, %111, %108
  %180 = load i32, i32* %5, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %179
  %183 = load i32, i32* %6, align 4
  %184 = sdiv i32 %183, 9600
  store i32 %184, i32* %5, align 4
  br label %185

185:                                              ; preds = %182, %179
  %186 = load i32, i32* %5, align 4
  %187 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %188 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 4
  %189 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %190 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @HZ, align 4
  %193 = mul nsw i32 %191, %192
  %194 = load i32, i32* %10, align 4
  %195 = mul nsw i32 %193, %194
  %196 = load i32, i32* %5, align 4
  %197 = mul nsw i32 %195, %196
  %198 = load i32, i32* %6, align 4
  %199 = sdiv i32 %197, %198
  %200 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %201 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %200, i32 0, i32 2
  store i32 %199, i32* %201, align 8
  %202 = load i32, i32* @HZ, align 4
  %203 = sdiv i32 %202, 50
  %204 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %205 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = add nsw i32 %206, %203
  store i32 %207, i32* %205, align 8
  %208 = load i32, i32* @UART_IER_MSI, align 4
  %209 = xor i32 %208, -1
  %210 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %211 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %210, i32 0, i32 8
  %212 = load i32, i32* %211, align 8
  %213 = and i32 %212, %209
  store i32 %213, i32* %211, align 8
  %214 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %215 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @ASYNC_HARDPPS_CD, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %185
  %221 = load i32, i32* @UART_IER_MSI, align 4
  %222 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %223 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %222, i32 0, i32 8
  %224 = load i32, i32* %223, align 8
  %225 = or i32 %224, %221
  store i32 %225, i32* %223, align 8
  br label %226

226:                                              ; preds = %220, %185
  %227 = load i32, i32* %8, align 4
  %228 = load i32, i32* @CRTSCTS, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %242

231:                                              ; preds = %226
  %232 = load i32, i32* @ASYNC_CTS_FLOW, align 4
  %233 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %234 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = or i32 %235, %232
  store i32 %236, i32* %234, align 8
  %237 = load i32, i32* @UART_IER_MSI, align 4
  %238 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %239 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %238, i32 0, i32 8
  %240 = load i32, i32* %239, align 8
  %241 = or i32 %240, %237
  store i32 %241, i32* %239, align 8
  br label %249

242:                                              ; preds = %226
  %243 = load i32, i32* @ASYNC_CTS_FLOW, align 4
  %244 = xor i32 %243, -1
  %245 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %246 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = and i32 %247, %244
  store i32 %248, i32* %246, align 8
  br label %249

249:                                              ; preds = %242, %231
  %250 = load i32, i32* %8, align 4
  %251 = load i32, i32* @CLOCAL, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %261

254:                                              ; preds = %249
  %255 = load i32, i32* @ASYNC_CHECK_CD, align 4
  %256 = xor i32 %255, -1
  %257 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %258 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = and i32 %259, %256
  store i32 %260, i32* %258, align 8
  br label %272

261:                                              ; preds = %249
  %262 = load i32, i32* @ASYNC_CHECK_CD, align 4
  %263 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %264 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = or i32 %265, %262
  store i32 %266, i32* %264, align 8
  %267 = load i32, i32* @UART_IER_MSI, align 4
  %268 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %269 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %268, i32 0, i32 8
  %270 = load i32, i32* %269, align 8
  %271 = or i32 %270, %267
  store i32 %271, i32* %269, align 8
  br label %272

272:                                              ; preds = %261, %254
  %273 = load i32, i32* @UART_LSR_OE, align 4
  %274 = load i32, i32* @UART_LSR_DR, align 4
  %275 = or i32 %273, %274
  %276 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %277 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %276, i32 0, i32 4
  store i32 %275, i32* %277, align 8
  %278 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %279 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %278, i32 0, i32 7
  %280 = load %struct.TYPE_12__*, %struct.TYPE_12__** %279, align 8
  %281 = call i64 @I_INPCK(%struct.TYPE_12__* %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %291

283:                                              ; preds = %272
  %284 = load i32, i32* @UART_LSR_FE, align 4
  %285 = load i32, i32* @UART_LSR_PE, align 4
  %286 = or i32 %284, %285
  %287 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %288 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %287, i32 0, i32 4
  %289 = load i32, i32* %288, align 8
  %290 = or i32 %289, %286
  store i32 %290, i32* %288, align 8
  br label %291

291:                                              ; preds = %283, %272
  %292 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %293 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %292, i32 0, i32 7
  %294 = load %struct.TYPE_12__*, %struct.TYPE_12__** %293, align 8
  %295 = call i64 @I_BRKINT(%struct.TYPE_12__* %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %303, label %297

297:                                              ; preds = %291
  %298 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %299 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %298, i32 0, i32 7
  %300 = load %struct.TYPE_12__*, %struct.TYPE_12__** %299, align 8
  %301 = call i64 @I_PARMRK(%struct.TYPE_12__* %300)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %309

303:                                              ; preds = %297, %291
  %304 = load i32, i32* @UART_LSR_BI, align 4
  %305 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %306 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %305, i32 0, i32 4
  %307 = load i32, i32* %306, align 8
  %308 = or i32 %307, %304
  store i32 %308, i32* %306, align 8
  br label %309

309:                                              ; preds = %303, %297
  %310 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %311 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %310, i32 0, i32 5
  store i32 0, i32* %311, align 4
  %312 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %313 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %312, i32 0, i32 7
  %314 = load %struct.TYPE_12__*, %struct.TYPE_12__** %313, align 8
  %315 = call i64 @I_IGNPAR(%struct.TYPE_12__* %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %325

317:                                              ; preds = %309
  %318 = load i32, i32* @UART_LSR_PE, align 4
  %319 = load i32, i32* @UART_LSR_FE, align 4
  %320 = or i32 %318, %319
  %321 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %322 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %321, i32 0, i32 5
  %323 = load i32, i32* %322, align 4
  %324 = or i32 %323, %320
  store i32 %324, i32* %322, align 4
  br label %325

325:                                              ; preds = %317, %309
  %326 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %327 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %326, i32 0, i32 7
  %328 = load %struct.TYPE_12__*, %struct.TYPE_12__** %327, align 8
  %329 = call i64 @I_IGNBRK(%struct.TYPE_12__* %328)
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %349

331:                                              ; preds = %325
  %332 = load i32, i32* @UART_LSR_BI, align 4
  %333 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %334 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %333, i32 0, i32 5
  %335 = load i32, i32* %334, align 4
  %336 = or i32 %335, %332
  store i32 %336, i32* %334, align 4
  %337 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %338 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %337, i32 0, i32 7
  %339 = load %struct.TYPE_12__*, %struct.TYPE_12__** %338, align 8
  %340 = call i64 @I_IGNPAR(%struct.TYPE_12__* %339)
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %348

342:                                              ; preds = %331
  %343 = load i32, i32* @UART_LSR_OE, align 4
  %344 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %345 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %344, i32 0, i32 5
  %346 = load i32, i32* %345, align 4
  %347 = or i32 %346, %343
  store i32 %347, i32* %345, align 4
  br label %348

348:                                              ; preds = %342, %331
  br label %349

349:                                              ; preds = %348, %325
  %350 = load i32, i32* %8, align 4
  %351 = load i32, i32* @CREAD, align 4
  %352 = and i32 %350, %351
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %354, label %360

354:                                              ; preds = %349
  %355 = load i32, i32* @UART_LSR_DR, align 4
  %356 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %357 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %356, i32 0, i32 5
  %358 = load i32, i32* %357, align 4
  %359 = or i32 %358, %355
  store i32 %359, i32* %357, align 4
  br label %360

360:                                              ; preds = %354, %349
  %361 = load i64, i64* %11, align 8
  %362 = call i32 @local_irq_save(i64 %361)
  %363 = load i32, i32* %5, align 4
  %364 = sub nsw i32 %363, 1
  %365 = trunc i32 %364 to i16
  store i16 %365, i16* %12, align 2
  %366 = load i32, i32* %9, align 4
  %367 = load i32, i32* @UART_LCR_PARITY, align 4
  %368 = and i32 %366, %367
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %377

370:                                              ; preds = %360
  %371 = load i16, i16* @SERPER_PARENB, align 2
  %372 = sext i16 %371 to i32
  %373 = load i16, i16* %12, align 2
  %374 = sext i16 %373 to i32
  %375 = or i32 %374, %372
  %376 = trunc i32 %375 to i16
  store i16 %376, i16* %12, align 2
  br label %377

377:                                              ; preds = %370, %360
  %378 = load i16, i16* %12, align 2
  store i16 %378, i16* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @custom, i32 0, i32 0), align 2
  %379 = call i32 (...) @mb()
  %380 = load i32, i32* %9, align 4
  %381 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %382 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %381, i32 0, i32 6
  store i32 %380, i32* %382, align 8
  %383 = load i64, i64* %11, align 8
  %384 = call i32 @local_irq_restore(i64 %383)
  br label %385

385:                                              ; preds = %377, %24
  ret void
}

declare dso_local i32 @tty_get_baud_rate(%struct.TYPE_12__*) #1

declare dso_local i64 @I_INPCK(%struct.TYPE_12__*) #1

declare dso_local i64 @I_BRKINT(%struct.TYPE_12__*) #1

declare dso_local i64 @I_PARMRK(%struct.TYPE_12__*) #1

declare dso_local i64 @I_IGNPAR(%struct.TYPE_12__*) #1

declare dso_local i64 @I_IGNBRK(%struct.TYPE_12__*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

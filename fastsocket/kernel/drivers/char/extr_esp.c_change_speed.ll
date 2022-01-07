; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_esp.c_change_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_esp.c_change_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp_struct = type { i16, i32, i32, i32, i32, i32, %struct.TYPE_14__, %struct.TYPE_16__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }

@CSIZE = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@UART_LCR_PARITY = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@UART_LCR_EPAR = common dso_local global i32 0, align 4
@ASYNC_SPD_MASK = common dso_local global i32 0, align 4
@ASYNC_SPD_CUST = common dso_local global i32 0, align 4
@BASE_BAUD = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@ASYNC_CTS_FLOW = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@ASYNC_CHECK_CD = common dso_local global i32 0, align 4
@UART_LSR_OE = common dso_local global i32 0, align 4
@UART_LSR_THRE = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i32 0, align 4
@UART_LSR_FE = common dso_local global i32 0, align 4
@UART_LSR_PE = common dso_local global i32 0, align 4
@UART_LSR_BI = common dso_local global i32 0, align 4
@UART_ESI_CMD1 = common dso_local global i32 0, align 4
@ESI_SET_BAUD = common dso_local global i32 0, align 4
@UART_ESI_CMD2 = common dso_local global i32 0, align 4
@ESI_WRITE_UART = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i32 0, align 4
@ESI_SET_FLOW_CNTL = common dso_local global i32 0, align 4
@ESI_SET_FLOW_CHARS = common dso_local global i32 0, align 4
@ESI_SET_FLOW_LVL = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@UART_LCR_SPAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esp_struct*)* @change_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_speed(%struct.esp_struct* %0) #0 {
  %2 = alloca %struct.esp_struct*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i64, align 8
  store %struct.esp_struct* %0, %struct.esp_struct** %2, align 8
  store i32 0, i32* %4, align 4
  store i8 0, i8* %9, align 1
  store i8 0, i8* %10, align 1
  %12 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %13 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %16 = icmp ne %struct.TYPE_17__* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %19 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %18, i32 0, i32 7
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %24 = icmp ne %struct.TYPE_15__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %17, %1
  br label %423

26:                                               ; preds = %17
  %27 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %28 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %27, i32 0, i32 7
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %5, align 4
  %35 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %36 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %35, i32 0, i32 0
  %37 = load i16, i16* %36, align 8
  store i16 %37, i16* %3, align 2
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @CSIZE, align 4
  %40 = and i32 %38, %39
  switch i32 %40, label %45 [
    i32 131, label %41
    i32 130, label %42
    i32 129, label %43
    i32 128, label %44
  ]

41:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  store i32 7, i32* %8, align 4
  br label %46

42:                                               ; preds = %26
  store i32 1, i32* %6, align 4
  store i32 8, i32* %8, align 4
  br label %46

43:                                               ; preds = %26
  store i32 2, i32* %6, align 4
  store i32 9, i32* %8, align 4
  br label %46

44:                                               ; preds = %26
  store i32 3, i32* %6, align 4
  store i32 10, i32* %8, align 4
  br label %46

45:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  store i32 7, i32* %8, align 4
  br label %46

46:                                               ; preds = %45, %44, %43, %42, %41
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @CSTOPB, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, 4
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %51, %46
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @PARENB, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load i32, i32* @UART_LCR_PARITY, align 4
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %61, %56
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @PARODD, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* @UART_LCR_EPAR, align 4
  %74 = load i32, i32* %6, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %72, %67
  %77 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %78 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %77, i32 0, i32 7
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %79, align 8
  %81 = call i32 @tty_get_baud_rate(%struct.TYPE_17__* %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp eq i32 %82, 38400
  br i1 %83, label %84, label %97

84:                                               ; preds = %76
  %85 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %86 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %85, i32 0, i32 7
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %90 = and i32 %88, %89
  %91 = load i32, i32* @ASYNC_SPD_CUST, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %84
  %94 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %95 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %4, align 4
  br label %113

97:                                               ; preds = %84, %76
  %98 = load i32, i32* %7, align 4
  %99 = icmp eq i32 %98, 134
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load i32, i32* @BASE_BAUD, align 4
  %102 = mul nsw i32 2, %101
  %103 = sdiv i32 %102, 269
  store i32 %103, i32* %4, align 4
  br label %112

104:                                              ; preds = %97
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load i32, i32* @BASE_BAUD, align 4
  %109 = load i32, i32* %7, align 4
  %110 = sdiv i32 %108, %109
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %107, %104
  br label %112

112:                                              ; preds = %111, %100
  br label %113

113:                                              ; preds = %112, %93
  %114 = load i32, i32* %4, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* @BASE_BAUD, align 4
  %118 = sdiv i32 %117, 9600
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %116, %113
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %133

122:                                              ; preds = %119
  %123 = load i32, i32* @BASE_BAUD, align 4
  %124 = load i32, i32* %4, align 4
  %125 = sdiv i32 %123, %124
  store i32 %125, i32* %7, align 4
  %126 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %127 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %126, i32 0, i32 7
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @tty_encode_baud_rate(%struct.TYPE_17__* %129, i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %122, %119
  %134 = load i32, i32* @HZ, align 4
  %135 = mul nsw i32 1024, %134
  %136 = load i32, i32* %8, align 4
  %137 = mul nsw i32 %135, %136
  %138 = load i32, i32* %4, align 4
  %139 = mul nsw i32 %137, %138
  %140 = load i32, i32* @BASE_BAUD, align 4
  %141 = sdiv i32 %139, %140
  %142 = load i32, i32* @HZ, align 4
  %143 = sdiv i32 %142, 50
  %144 = add nsw i32 %141, %143
  %145 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %146 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 8
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* @CRTSCTS, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %133
  %152 = load i32, i32* @ASYNC_CTS_FLOW, align 4
  %153 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %154 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %153, i32 0, i32 7
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = or i32 %156, %152
  store i32 %157, i32* %155, align 8
  store i8 4, i8* %9, align 1
  store i8 16, i8* %10, align 1
  br label %166

158:                                              ; preds = %133
  %159 = load i32, i32* @ASYNC_CTS_FLOW, align 4
  %160 = xor i32 %159, -1
  %161 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %162 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %161, i32 0, i32 7
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = and i32 %164, %160
  store i32 %165, i32* %163, align 8
  br label %166

166:                                              ; preds = %158, %151
  %167 = load i32, i32* %5, align 4
  %168 = load i32, i32* @CLOCAL, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %166
  %172 = load i32, i32* @ASYNC_CHECK_CD, align 4
  %173 = xor i32 %172, -1
  %174 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %175 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %174, i32 0, i32 7
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = and i32 %177, %173
  store i32 %178, i32* %176, align 8
  br label %186

179:                                              ; preds = %166
  %180 = load i32, i32* @ASYNC_CHECK_CD, align 4
  %181 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %182 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %181, i32 0, i32 7
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = or i32 %184, %180
  store i32 %185, i32* %183, align 8
  br label %186

186:                                              ; preds = %179, %171
  %187 = load i32, i32* @UART_LSR_OE, align 4
  %188 = load i32, i32* @UART_LSR_THRE, align 4
  %189 = or i32 %187, %188
  %190 = load i32, i32* @UART_LSR_DR, align 4
  %191 = or i32 %189, %190
  %192 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %193 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %192, i32 0, i32 3
  store i32 %191, i32* %193, align 4
  %194 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %195 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %194, i32 0, i32 7
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %196, align 8
  %198 = call i64 @I_INPCK(%struct.TYPE_17__* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %208

200:                                              ; preds = %186
  %201 = load i32, i32* @UART_LSR_FE, align 4
  %202 = load i32, i32* @UART_LSR_PE, align 4
  %203 = or i32 %201, %202
  %204 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %205 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = or i32 %206, %203
  store i32 %207, i32* %205, align 4
  br label %208

208:                                              ; preds = %200, %186
  %209 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %210 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %209, i32 0, i32 7
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %211, align 8
  %213 = call i64 @I_BRKINT(%struct.TYPE_17__* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %222, label %215

215:                                              ; preds = %208
  %216 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %217 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %216, i32 0, i32 7
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %218, align 8
  %220 = call i64 @I_PARMRK(%struct.TYPE_17__* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %215, %208
  %223 = load i32, i32* @UART_LSR_BI, align 4
  %224 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %225 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = or i32 %226, %223
  store i32 %227, i32* %225, align 4
  br label %228

228:                                              ; preds = %222, %215
  %229 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %230 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %229, i32 0, i32 4
  store i32 0, i32* %230, align 8
  %231 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %232 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %231, i32 0, i32 7
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 1
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %233, align 8
  %235 = call i64 @I_IGNBRK(%struct.TYPE_17__* %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %274

237:                                              ; preds = %228
  %238 = load i32, i32* @UART_LSR_BI, align 4
  %239 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %240 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 8
  %242 = or i32 %241, %238
  store i32 %242, i32* %240, align 8
  %243 = load i32, i32* @UART_LSR_BI, align 4
  %244 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %245 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = or i32 %246, %243
  store i32 %247, i32* %245, align 4
  %248 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %249 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %248, i32 0, i32 7
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 1
  %251 = load %struct.TYPE_17__*, %struct.TYPE_17__** %250, align 8
  %252 = call i64 @I_IGNPAR(%struct.TYPE_17__* %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %273

254:                                              ; preds = %237
  %255 = load i32, i32* @UART_LSR_OE, align 4
  %256 = load i32, i32* @UART_LSR_PE, align 4
  %257 = or i32 %255, %256
  %258 = load i32, i32* @UART_LSR_FE, align 4
  %259 = or i32 %257, %258
  %260 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %261 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %260, i32 0, i32 4
  %262 = load i32, i32* %261, align 8
  %263 = or i32 %262, %259
  store i32 %263, i32* %261, align 8
  %264 = load i32, i32* @UART_LSR_OE, align 4
  %265 = load i32, i32* @UART_LSR_PE, align 4
  %266 = or i32 %264, %265
  %267 = load i32, i32* @UART_LSR_FE, align 4
  %268 = or i32 %266, %267
  %269 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %270 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 4
  %272 = or i32 %271, %268
  store i32 %272, i32* %270, align 4
  br label %273

273:                                              ; preds = %254, %237
  br label %274

274:                                              ; preds = %273, %228
  %275 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %276 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %275, i32 0, i32 7
  %277 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %276, i32 0, i32 1
  %278 = load %struct.TYPE_17__*, %struct.TYPE_17__** %277, align 8
  %279 = call i64 @I_IXOFF(%struct.TYPE_17__* %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %286

281:                                              ; preds = %274
  %282 = load i8, i8* %9, align 1
  %283 = zext i8 %282 to i32
  %284 = or i32 %283, 129
  %285 = trunc i32 %284 to i8
  store i8 %285, i8* %9, align 1
  br label %286

286:                                              ; preds = %281, %274
  %287 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %288 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %287, i32 0, i32 5
  %289 = load i64, i64* %11, align 8
  %290 = call i32 @spin_lock_irqsave(i32* %288, i64 %289)
  %291 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %292 = load i32, i32* @UART_ESI_CMD1, align 4
  %293 = load i32, i32* @ESI_SET_BAUD, align 4
  %294 = call i32 @serial_out(%struct.esp_struct* %291, i32 %292, i32 %293)
  %295 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %296 = load i32, i32* @UART_ESI_CMD2, align 4
  %297 = load i32, i32* %4, align 4
  %298 = ashr i32 %297, 8
  %299 = call i32 @serial_out(%struct.esp_struct* %295, i32 %296, i32 %298)
  %300 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %301 = load i32, i32* @UART_ESI_CMD2, align 4
  %302 = load i32, i32* %4, align 4
  %303 = and i32 %302, 255
  %304 = call i32 @serial_out(%struct.esp_struct* %300, i32 %301, i32 %303)
  %305 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %306 = load i32, i32* @UART_ESI_CMD1, align 4
  %307 = load i32, i32* @ESI_WRITE_UART, align 4
  %308 = call i32 @serial_out(%struct.esp_struct* %305, i32 %306, i32 %307)
  %309 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %310 = load i32, i32* @UART_ESI_CMD2, align 4
  %311 = load i32, i32* @UART_LCR, align 4
  %312 = call i32 @serial_out(%struct.esp_struct* %309, i32 %310, i32 %311)
  %313 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %314 = load i32, i32* @UART_ESI_CMD2, align 4
  %315 = load i32, i32* %6, align 4
  %316 = call i32 @serial_out(%struct.esp_struct* %313, i32 %314, i32 %315)
  %317 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %318 = load i32, i32* @UART_ESI_CMD1, align 4
  %319 = load i32, i32* @ESI_SET_FLOW_CNTL, align 4
  %320 = call i32 @serial_out(%struct.esp_struct* %317, i32 %318, i32 %319)
  %321 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %322 = load i32, i32* @UART_ESI_CMD2, align 4
  %323 = load i8, i8* %9, align 1
  %324 = zext i8 %323 to i32
  %325 = call i32 @serial_out(%struct.esp_struct* %321, i32 %322, i32 %324)
  %326 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %327 = load i32, i32* @UART_ESI_CMD2, align 4
  %328 = load i8, i8* %10, align 1
  %329 = zext i8 %328 to i32
  %330 = call i32 @serial_out(%struct.esp_struct* %326, i32 %327, i32 %329)
  %331 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %332 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %331, i32 0, i32 7
  %333 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %332, i32 0, i32 1
  %334 = load %struct.TYPE_17__*, %struct.TYPE_17__** %333, align 8
  %335 = call i64 @I_IXOFF(%struct.TYPE_17__* %334)
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %384

337:                                              ; preds = %286
  %338 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %339 = load i32, i32* @UART_ESI_CMD1, align 4
  %340 = load i32, i32* @ESI_SET_FLOW_CHARS, align 4
  %341 = call i32 @serial_out(%struct.esp_struct* %338, i32 %339, i32 %340)
  %342 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %343 = load i32, i32* @UART_ESI_CMD2, align 4
  %344 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %345 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %344, i32 0, i32 7
  %346 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %345, i32 0, i32 1
  %347 = load %struct.TYPE_17__*, %struct.TYPE_17__** %346, align 8
  %348 = call i32 @START_CHAR(%struct.TYPE_17__* %347)
  %349 = call i32 @serial_out(%struct.esp_struct* %342, i32 %343, i32 %348)
  %350 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %351 = load i32, i32* @UART_ESI_CMD2, align 4
  %352 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %353 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %352, i32 0, i32 7
  %354 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %353, i32 0, i32 1
  %355 = load %struct.TYPE_17__*, %struct.TYPE_17__** %354, align 8
  %356 = call i32 @STOP_CHAR(%struct.TYPE_17__* %355)
  %357 = call i32 @serial_out(%struct.esp_struct* %350, i32 %351, i32 %356)
  %358 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %359 = load i32, i32* @UART_ESI_CMD2, align 4
  %360 = call i32 @serial_out(%struct.esp_struct* %358, i32 %359, i32 16)
  %361 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %362 = load i32, i32* @UART_ESI_CMD2, align 4
  %363 = call i32 @serial_out(%struct.esp_struct* %361, i32 %362, i32 33)
  %364 = load i32, i32* %5, align 4
  %365 = load i32, i32* @CSIZE, align 4
  %366 = and i32 %364, %365
  switch i32 %366, label %379 [
    i32 131, label %367
    i32 130, label %371
    i32 129, label %375
    i32 128, label %375
  ]

367:                                              ; preds = %337
  %368 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %369 = load i32, i32* @UART_ESI_CMD2, align 4
  %370 = call i32 @serial_out(%struct.esp_struct* %368, i32 %369, i32 31)
  br label %383

371:                                              ; preds = %337
  %372 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %373 = load i32, i32* @UART_ESI_CMD2, align 4
  %374 = call i32 @serial_out(%struct.esp_struct* %372, i32 %373, i32 63)
  br label %383

375:                                              ; preds = %337, %337
  %376 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %377 = load i32, i32* @UART_ESI_CMD2, align 4
  %378 = call i32 @serial_out(%struct.esp_struct* %376, i32 %377, i32 127)
  br label %383

379:                                              ; preds = %337
  %380 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %381 = load i32, i32* @UART_ESI_CMD2, align 4
  %382 = call i32 @serial_out(%struct.esp_struct* %380, i32 %381, i32 255)
  br label %383

383:                                              ; preds = %379, %375, %371, %367
  br label %384

384:                                              ; preds = %383, %286
  %385 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %386 = load i32, i32* @UART_ESI_CMD1, align 4
  %387 = load i32, i32* @ESI_SET_FLOW_LVL, align 4
  %388 = call i32 @serial_out(%struct.esp_struct* %385, i32 %386, i32 %387)
  %389 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %390 = load i32, i32* @UART_ESI_CMD2, align 4
  %391 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %392 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %391, i32 0, i32 6
  %393 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 8
  %395 = ashr i32 %394, 8
  %396 = call i32 @serial_out(%struct.esp_struct* %389, i32 %390, i32 %395)
  %397 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %398 = load i32, i32* @UART_ESI_CMD2, align 4
  %399 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %400 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %399, i32 0, i32 6
  %401 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 8
  %403 = call i32 @serial_out(%struct.esp_struct* %397, i32 %398, i32 %402)
  %404 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %405 = load i32, i32* @UART_ESI_CMD2, align 4
  %406 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %407 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %406, i32 0, i32 6
  %408 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 4
  %410 = ashr i32 %409, 8
  %411 = call i32 @serial_out(%struct.esp_struct* %404, i32 %405, i32 %410)
  %412 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %413 = load i32, i32* @UART_ESI_CMD2, align 4
  %414 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %415 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %414, i32 0, i32 6
  %416 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %415, i32 0, i32 1
  %417 = load i32, i32* %416, align 4
  %418 = call i32 @serial_out(%struct.esp_struct* %412, i32 %413, i32 %417)
  %419 = load %struct.esp_struct*, %struct.esp_struct** %2, align 8
  %420 = getelementptr inbounds %struct.esp_struct, %struct.esp_struct* %419, i32 0, i32 5
  %421 = load i64, i64* %11, align 8
  %422 = call i32 @spin_unlock_irqrestore(i32* %420, i64 %421)
  br label %423

423:                                              ; preds = %384, %25
  ret void
}

declare dso_local i32 @tty_get_baud_rate(%struct.TYPE_17__*) #1

declare dso_local i32 @tty_encode_baud_rate(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i64 @I_INPCK(%struct.TYPE_17__*) #1

declare dso_local i64 @I_BRKINT(%struct.TYPE_17__*) #1

declare dso_local i64 @I_PARMRK(%struct.TYPE_17__*) #1

declare dso_local i64 @I_IGNBRK(%struct.TYPE_17__*) #1

declare dso_local i64 @I_IGNPAR(%struct.TYPE_17__*) #1

declare dso_local i64 @I_IXOFF(%struct.TYPE_17__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @serial_out(%struct.esp_struct*, i32, i32) #1

declare dso_local i32 @START_CHAR(%struct.TYPE_17__*) #1

declare dso_local i32 @STOP_CHAR(%struct.TYPE_17__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

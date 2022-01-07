; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/jsm/extr_jsm_neo.c_neo_copy_data_from_uart_to_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/jsm/extr_jsm_neo.c_neo_copy_data_from_uart_to_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jsm_channel = type { i32, i32, i32, i32, i32*, i32*, i32, i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@RQUEUEMASK = common dso_local global i32 0, align 4
@CH_FIFO_ENABLED = common dso_local global i32 0, align 4
@UART_17158_RX_FIFO_DATA_ERROR = common dso_local global i32 0, align 4
@RQUEUESIZE = common dso_local global i32 0, align 4
@UART_LSR_THRE = common dso_local global i32 0, align 4
@UART_17158_TX_AND_FIFO_CLR = common dso_local global i32 0, align 4
@CH_TX_FIFO_EMPTY = common dso_local global i32 0, align 4
@CH_TX_FIFO_LWM = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@UART_LSR_BI = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Queue full, dropping DATA:%x LSR:%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"DATA/LSR pair: %x %x\0A\00", align 1
@EQUEUEMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jsm_channel*)* @neo_copy_data_from_uart_to_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neo_copy_data_from_uart_to_queue(%struct.jsm_channel* %0) #0 {
  %2 = alloca %struct.jsm_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.jsm_channel* %0, %struct.jsm_channel** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %12 = icmp ne %struct.jsm_channel* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %299

14:                                               ; preds = %1
  %15 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %16 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @RQUEUEMASK, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %21 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @RQUEUEMASK, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %9, align 4
  %25 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %26 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %4, align 4
  %28 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %29 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %28, i32 0, i32 2
  store i32 0, i32* %29, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = sub nsw i32 %30, %31
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %14
  %36 = load i32, i32* @RQUEUEMASK, align 4
  %37 = add nsw i32 %36, 1
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %35, %14
  %41 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %42 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CH_FIFO_ENABLED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %56

48:                                               ; preds = %40
  %49 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %50 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %49, i32 0, i32 10
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = call i32 @readb(i32* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 %54, 3
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %48, %47
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @min(i32 %57, i32 %58)
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %96, %56
  %61 = load i32, i32* %7, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %134

63:                                               ; preds = %60
  %64 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %65 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %64, i32 0, i32 10
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = call i32 @readb(i32* %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @UART_17158_RX_FIFO_DATA_ERROR, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  br label %134

74:                                               ; preds = %63
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @RQUEUESIZE, align 4
  %77 = load i32, i32* %8, align 4
  %78 = sub nsw i32 %76, %77
  %79 = call i32 @min(i32 %75, i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @min(i32 %80, i32 12)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @UART_LSR_THRE, align 4
  %84 = load i32, i32* @UART_17158_TX_AND_FIFO_CLR, align 4
  %85 = or i32 %83, %84
  %86 = and i32 %82, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %74
  %89 = load i32, i32* @CH_TX_FIFO_EMPTY, align 4
  %90 = load i32, i32* @CH_TX_FIFO_LWM, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %93 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %88, %74
  store i32 0, i32* %4, align 4
  %97 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %98 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %97, i32 0, i32 4
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %104 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %103, i32 0, i32 10
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @memcpy_fromio(i32* %102, i32* %106, i32 %107)
  %109 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %110 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %109, i32 0, i32 5
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @memset(i32* %114, i32 0, i32 %115)
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %117, %118
  %120 = load i32, i32* @RQUEUEMASK, align 4
  %121 = and i32 %119, %120
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %7, align 4
  %124 = sub nsw i32 %123, %122
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* %3, align 4
  %127 = sub nsw i32 %126, %125
  store i32 %127, i32* %3, align 4
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %131 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %130, i32 0, i32 8
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %132, %129
  store i64 %133, i64* %131, align 8
  br label %60

134:                                              ; preds = %73, %60
  %135 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %136 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @IGNBRK, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %134
  %142 = load i32, i32* @UART_LSR_BI, align 4
  %143 = load i32, i32* %5, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %5, align 4
  br label %145

145:                                              ; preds = %141, %134
  br label %146

146:                                              ; preds = %145, %192, %236
  %147 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %148 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %147, i32 0, i32 10
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 1
  %151 = call i32 @readb(i32* %150)
  %152 = load i32, i32* %4, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %4, align 4
  %154 = load i32, i32* %4, align 4
  %155 = load i32, i32* @UART_LSR_DR, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %162, label %158

158:                                              ; preds = %146
  %159 = load i32, i32* %4, align 4
  %160 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %161 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 8
  br label %286

162:                                              ; preds = %146
  %163 = load i32, i32* @UART_LSR_DR, align 4
  %164 = xor i32 %163, -1
  %165 = load i32, i32* %4, align 4
  %166 = and i32 %165, %164
  store i32 %166, i32* %4, align 4
  %167 = load i32, i32* %4, align 4
  %168 = load i32, i32* @UART_LSR_THRE, align 4
  %169 = load i32, i32* @UART_17158_TX_AND_FIFO_CLR, align 4
  %170 = or i32 %168, %169
  %171 = and i32 %167, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %187

173:                                              ; preds = %162
  %174 = load i32, i32* @UART_LSR_THRE, align 4
  %175 = load i32, i32* @UART_17158_TX_AND_FIFO_CLR, align 4
  %176 = or i32 %174, %175
  %177 = xor i32 %176, -1
  %178 = load i32, i32* %4, align 4
  %179 = and i32 %178, %177
  store i32 %179, i32* %4, align 4
  %180 = load i32, i32* @CH_TX_FIFO_EMPTY, align 4
  %181 = load i32, i32* @CH_TX_FIFO_LWM, align 4
  %182 = or i32 %180, %181
  %183 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %184 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 4
  br label %187

187:                                              ; preds = %173, %162
  %188 = load i32, i32* %4, align 4
  %189 = load i32, i32* %5, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %187
  store i32 0, i32* %4, align 4
  %193 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %194 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %193, i32 0, i32 10
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 0
  %197 = call i32 @memcpy_fromio(i32* %10, i32* %196, i32 1)
  br label %146

198:                                              ; preds = %187
  br label %199

199:                                              ; preds = %202, %198
  %200 = load i32, i32* %3, align 4
  %201 = icmp slt i32 %200, 1
  br i1 %201, label %202, label %236

202:                                              ; preds = %199
  %203 = load i32, i32* @READ, align 4
  %204 = load i32, i32* @INFO, align 4
  %205 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %206 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %205, i32 0, i32 9
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %210 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %209, i32 0, i32 4
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %9, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %217 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %216, i32 0, i32 5
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* %9, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @jsm_printk(i32 %203, i32 %204, i32* %208, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %215, i32 %222)
  %224 = load i32, i32* %9, align 4
  %225 = add nsw i32 %224, 1
  %226 = load i32, i32* @RQUEUEMASK, align 4
  %227 = and i32 %225, %226
  store i32 %227, i32* %9, align 4
  %228 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %229 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %228, i32 0, i32 1
  store i32 %227, i32* %229, align 4
  %230 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %231 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %230, i32 0, i32 11
  %232 = load i32, i32* %231, align 8
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %231, align 8
  %234 = load i32, i32* %3, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %3, align 4
  br label %199

236:                                              ; preds = %199
  %237 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %238 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %237, i32 0, i32 4
  %239 = load i32*, i32** %238, align 8
  %240 = load i32, i32* %8, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %244 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %243, i32 0, i32 10
  %245 = load %struct.TYPE_3__*, %struct.TYPE_3__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 0
  %247 = call i32 @memcpy_fromio(i32* %242, i32* %246, i32 1)
  %248 = load i32, i32* %4, align 4
  %249 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %250 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %249, i32 0, i32 5
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* %8, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  store i32 %248, i32* %254, align 4
  %255 = load i32, i32* @READ, align 4
  %256 = load i32, i32* @INFO, align 4
  %257 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %258 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %257, i32 0, i32 9
  %259 = load %struct.TYPE_4__*, %struct.TYPE_4__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 0
  %261 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %262 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %261, i32 0, i32 4
  %263 = load i32*, i32** %262, align 8
  %264 = load i32, i32* %8, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %269 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %268, i32 0, i32 5
  %270 = load i32*, i32** %269, align 8
  %271 = load i32, i32* %8, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @jsm_printk(i32 %255, i32 %256, i32* %260, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %267, i32 %274)
  store i32 0, i32* %4, align 4
  %276 = load i32, i32* %8, align 4
  %277 = add nsw i32 %276, 1
  %278 = load i32, i32* @RQUEUEMASK, align 4
  %279 = and i32 %277, %278
  store i32 %279, i32* %8, align 4
  %280 = load i32, i32* %3, align 4
  %281 = add nsw i32 %280, -1
  store i32 %281, i32* %3, align 4
  %282 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %283 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %282, i32 0, i32 8
  %284 = load i64, i64* %283, align 8
  %285 = add nsw i64 %284, 1
  store i64 %285, i64* %283, align 8
  br label %146

286:                                              ; preds = %158
  %287 = load i32, i32* %8, align 4
  %288 = load i32, i32* @RQUEUEMASK, align 4
  %289 = and i32 %287, %288
  %290 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %291 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %290, i32 0, i32 0
  store i32 %289, i32* %291, align 8
  %292 = load i32, i32* %8, align 4
  %293 = load i32, i32* @EQUEUEMASK, align 4
  %294 = and i32 %292, %293
  %295 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %296 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %295, i32 0, i32 7
  store i32 %294, i32* %296, align 4
  %297 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %298 = call i32 @jsm_input(%struct.jsm_channel* %297)
  br label %299

299:                                              ; preds = %286, %13
  ret void
}

declare dso_local i32 @readb(i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy_fromio(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @jsm_printk(i32, i32, i32*, i8*, i32, i32) #1

declare dso_local i32 @jsm_input(%struct.jsm_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

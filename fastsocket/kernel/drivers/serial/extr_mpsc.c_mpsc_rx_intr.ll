; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_rx_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_rx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpsc_port_info = type { i32, i64, i64, %struct.TYPE_9__, i64, i32* }
%struct.TYPE_9__ = type { i64, i64, i32, %struct.TYPE_8__, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i64 }
%struct.mpsc_rx_desc = type { i32, i32 }

@TTY_NORMAL = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [36 x i8] c"mpsc_rx_intr[%d]: Handling Rx intr\0A\00", align 1
@MPSC_RXRE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@SDMA_DESC_CMDSTAT_O = common dso_local global i64 0, align 8
@MPSC_RXBE_SIZE = common dso_local global i32 0, align 4
@SDMA_DESC_CMDSTAT_BR = common dso_local global i64 0, align 8
@SDMA_DESC_CMDSTAT_FR = common dso_local global i64 0, align 8
@SDMA_DESC_CMDSTAT_OR = common dso_local global i64 0, align 8
@TTY_BREAK = common dso_local global i8 0, align 1
@TTY_FRAME = common dso_local global i8 0, align 1
@TTY_OVERRUN = common dso_local global i8 0, align 1
@SDMA_DESC_CMDSTAT_PE = common dso_local global i64 0, align 8
@TTY_PARITY = common dso_local global i8 0, align 1
@SDMA_DESC_CMDSTAT_EI = common dso_local global i64 0, align 8
@SDMA_DESC_CMDSTAT_F = common dso_local global i64 0, align 8
@SDMA_DESC_CMDSTAT_L = common dso_local global i64 0, align 8
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@MPSC_RXR_ENTRIES = common dso_local global i32 0, align 4
@SDMA_SDCM = common dso_local global i64 0, align 8
@SDMA_SDCM_ERD = common dso_local global i32 0, align 4
@serial_polled = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpsc_port_info*)* @mpsc_rx_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpsc_rx_intr(%struct.mpsc_port_info* %0) #0 {
  %2 = alloca %struct.mpsc_port_info*, align 8
  %3 = alloca %struct.mpsc_rx_desc*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8, align 1
  store %struct.mpsc_port_info* %0, %struct.mpsc_port_info** %2, align 8
  %11 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %12 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 5
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.tty_struct*, %struct.tty_struct** %16, align 8
  store %struct.tty_struct* %17, %struct.tty_struct** %4, align 8
  store i32 0, i32* %8, align 4
  %18 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %18, i8* %10, align 1
  %19 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %20 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %25 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %28 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @MPSC_RXRE_SIZE, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %26, %32
  %34 = inttoptr i64 %33 to %struct.mpsc_rx_desc*
  store %struct.mpsc_rx_desc* %34, %struct.mpsc_rx_desc** %3, align 8
  %35 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %36 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.mpsc_rx_desc*, %struct.mpsc_rx_desc** %3, align 8
  %40 = bitcast %struct.mpsc_rx_desc* %39 to i8*
  %41 = load i32, i32* @MPSC_RXRE_SIZE, align 4
  %42 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %43 = call i32 @dma_cache_sync(i32 %38, i8* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %253, %1
  %45 = load %struct.mpsc_rx_desc*, %struct.mpsc_rx_desc** %3, align 8
  %46 = getelementptr inbounds %struct.mpsc_rx_desc, %struct.mpsc_rx_desc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @be32_to_cpu(i32 %47)
  store i64 %48, i64* %5, align 8
  %49 = load i64, i64* @SDMA_DESC_CMDSTAT_O, align 8
  %50 = and i64 %48, %49
  %51 = icmp ne i64 %50, 0
  %52 = xor i1 %51, true
  br i1 %52, label %53, label %307

53:                                               ; preds = %44
  %54 = load %struct.mpsc_rx_desc*, %struct.mpsc_rx_desc** %3, align 8
  %55 = getelementptr inbounds %struct.mpsc_rx_desc, %struct.mpsc_rx_desc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @be16_to_cpu(i32 %56)
  store i64 %57, i64* %6, align 8
  %58 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %59 = load i64, i64* %6, align 8
  %60 = call i64 @tty_buffer_request_room(%struct.tty_struct* %58, i64 %59)
  %61 = load i64, i64* %6, align 8
  %62 = icmp slt i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = sext i32 %63 to i64
  %65 = call i64 @unlikely(i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %53
  %68 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %69 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %74 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %73)
  br label %75

75:                                               ; preds = %72, %67
  br label %76

76:                                               ; preds = %75, %53
  %77 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %78 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %77, i32 0, i32 5
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %81 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @MPSC_RXBE_SIZE, align 4
  %84 = mul nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %79, i64 %85
  store i32* %86, i32** %9, align 8
  %87 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %88 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = bitcast i32* %91 to i8*
  %93 = load i32, i32* @MPSC_RXBE_SIZE, align 4
  %94 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %95 = call i32 @dma_cache_sync(i32 %90, i8* %92, i32 %93, i32 %94)
  %96 = load i64, i64* %5, align 8
  %97 = load i64, i64* @SDMA_DESC_CMDSTAT_BR, align 8
  %98 = load i64, i64* @SDMA_DESC_CMDSTAT_FR, align 8
  %99 = or i64 %97, %98
  %100 = load i64, i64* @SDMA_DESC_CMDSTAT_OR, align 8
  %101 = or i64 %99, %100
  %102 = and i64 %96, %101
  %103 = call i64 @unlikely(i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %193

105:                                              ; preds = %76
  %106 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %107 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %109, align 8
  %112 = load i64, i64* %5, align 8
  %113 = load i64, i64* @SDMA_DESC_CMDSTAT_BR, align 8
  %114 = and i64 %112, %113
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %105
  %117 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %118 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 8
  %123 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %124 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %123, i32 0, i32 3
  %125 = call i64 @uart_handle_break(%struct.TYPE_9__* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %116
  br label %253

128:                                              ; preds = %116
  br label %155

129:                                              ; preds = %105
  %130 = load i64, i64* %5, align 8
  %131 = load i64, i64* @SDMA_DESC_CMDSTAT_FR, align 8
  %132 = and i64 %130, %131
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %129
  %135 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %136 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 4
  br label %154

141:                                              ; preds = %129
  %142 = load i64, i64* %5, align 8
  %143 = load i64, i64* @SDMA_DESC_CMDSTAT_OR, align 8
  %144 = and i64 %142, %143
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %141
  %147 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %148 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 8
  br label %153

153:                                              ; preds = %146, %141
  br label %154

154:                                              ; preds = %153, %134
  br label %155

155:                                              ; preds = %154, %128
  %156 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %157 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* %5, align 8
  %161 = and i64 %160, %159
  store i64 %161, i64* %5, align 8
  %162 = load i64, i64* %5, align 8
  %163 = load i64, i64* @SDMA_DESC_CMDSTAT_BR, align 8
  %164 = and i64 %162, %163
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %155
  %167 = load i8, i8* @TTY_BREAK, align 1
  store i8 %167, i8* %10, align 1
  br label %192

168:                                              ; preds = %155
  %169 = load i64, i64* %5, align 8
  %170 = load i64, i64* @SDMA_DESC_CMDSTAT_FR, align 8
  %171 = and i64 %169, %170
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %168
  %174 = load i8, i8* @TTY_FRAME, align 1
  store i8 %174, i8* %10, align 1
  br label %191

175:                                              ; preds = %168
  %176 = load i64, i64* %5, align 8
  %177 = load i64, i64* @SDMA_DESC_CMDSTAT_OR, align 8
  %178 = and i64 %176, %177
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %175
  %181 = load i8, i8* @TTY_OVERRUN, align 1
  store i8 %181, i8* %10, align 1
  br label %190

182:                                              ; preds = %175
  %183 = load i64, i64* %5, align 8
  %184 = load i64, i64* @SDMA_DESC_CMDSTAT_PE, align 8
  %185 = and i64 %183, %184
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %182
  %188 = load i8, i8* @TTY_PARITY, align 1
  store i8 %188, i8* %10, align 1
  br label %189

189:                                              ; preds = %187, %182
  br label %190

190:                                              ; preds = %189, %180
  br label %191

191:                                              ; preds = %190, %173
  br label %192

192:                                              ; preds = %191, %166
  br label %193

193:                                              ; preds = %192, %76
  %194 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %195 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %194, i32 0, i32 3
  %196 = load i32*, i32** %9, align 8
  %197 = load i32, i32* %196, align 4
  %198 = call i64 @uart_handle_sysrq_char(%struct.TYPE_9__* %195, i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %193
  %201 = load i32*, i32** %9, align 8
  %202 = getelementptr inbounds i32, i32* %201, i32 1
  store i32* %202, i32** %9, align 8
  %203 = load i64, i64* %6, align 8
  %204 = add nsw i64 %203, -1
  store i64 %204, i64* %6, align 8
  br label %253

205:                                              ; preds = %193
  %206 = load i64, i64* %5, align 8
  %207 = load i64, i64* @SDMA_DESC_CMDSTAT_BR, align 8
  %208 = load i64, i64* @SDMA_DESC_CMDSTAT_FR, align 8
  %209 = or i64 %207, %208
  %210 = load i64, i64* @SDMA_DESC_CMDSTAT_OR, align 8
  %211 = or i64 %209, %210
  %212 = and i64 %206, %211
  %213 = call i64 @unlikely(i64 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %229

215:                                              ; preds = %205
  %216 = load i64, i64* %5, align 8
  %217 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %218 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = and i64 %216, %220
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %229, label %223

223:                                              ; preds = %215
  %224 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %225 = load i32*, i32** %9, align 8
  %226 = load i32, i32* %225, align 4
  %227 = load i8, i8* %10, align 1
  %228 = call i32 @tty_insert_flip_char(%struct.tty_struct* %224, i32 %226, i8 signext %227)
  br label %252

229:                                              ; preds = %215, %205
  store i64 0, i64* %7, align 8
  br label %230

230:                                              ; preds = %241, %229
  %231 = load i64, i64* %7, align 8
  %232 = load i64, i64* %6, align 8
  %233 = icmp slt i64 %231, %232
  br i1 %233, label %234, label %244

234:                                              ; preds = %230
  %235 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %236 = load i32*, i32** %9, align 8
  %237 = getelementptr inbounds i32, i32* %236, i32 1
  store i32* %237, i32** %9, align 8
  %238 = load i32, i32* %236, align 4
  %239 = load i8, i8* @TTY_NORMAL, align 1
  %240 = call i32 @tty_insert_flip_char(%struct.tty_struct* %235, i32 %238, i8 signext %239)
  br label %241

241:                                              ; preds = %234
  %242 = load i64, i64* %7, align 8
  %243 = add nsw i64 %242, 1
  store i64 %243, i64* %7, align 8
  br label %230

244:                                              ; preds = %230
  %245 = load i64, i64* %6, align 8
  %246 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %247 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %246, i32 0, i32 3
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 3
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = add nsw i64 %250, %245
  store i64 %251, i64* %249, align 8
  br label %252

252:                                              ; preds = %244, %223
  br label %253

253:                                              ; preds = %252, %200, %127
  %254 = call i32 @cpu_to_be16(i32 0)
  %255 = load %struct.mpsc_rx_desc*, %struct.mpsc_rx_desc** %3, align 8
  %256 = getelementptr inbounds %struct.mpsc_rx_desc, %struct.mpsc_rx_desc* %255, i32 0, i32 1
  store i32 %254, i32* %256, align 4
  %257 = call i32 (...) @wmb()
  %258 = load i64, i64* @SDMA_DESC_CMDSTAT_O, align 8
  %259 = load i64, i64* @SDMA_DESC_CMDSTAT_EI, align 8
  %260 = or i64 %258, %259
  %261 = load i64, i64* @SDMA_DESC_CMDSTAT_F, align 8
  %262 = or i64 %260, %261
  %263 = load i64, i64* @SDMA_DESC_CMDSTAT_L, align 8
  %264 = or i64 %262, %263
  %265 = call i32 @cpu_to_be32(i64 %264)
  %266 = load %struct.mpsc_rx_desc*, %struct.mpsc_rx_desc** %3, align 8
  %267 = getelementptr inbounds %struct.mpsc_rx_desc, %struct.mpsc_rx_desc* %266, i32 0, i32 0
  store i32 %265, i32* %267, align 4
  %268 = call i32 (...) @wmb()
  %269 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %270 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %269, i32 0, i32 3
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.mpsc_rx_desc*, %struct.mpsc_rx_desc** %3, align 8
  %274 = bitcast %struct.mpsc_rx_desc* %273 to i8*
  %275 = load i32, i32* @MPSC_RXRE_SIZE, align 4
  %276 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %277 = call i32 @dma_cache_sync(i32 %272, i8* %274, i32 %275, i32 %276)
  %278 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %279 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = add nsw i32 %280, 1
  %282 = load i32, i32* @MPSC_RXR_ENTRIES, align 4
  %283 = sub nsw i32 %282, 1
  %284 = and i32 %281, %283
  %285 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %286 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %285, i32 0, i32 0
  store i32 %284, i32* %286, align 8
  %287 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %288 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %287, i32 0, i32 4
  %289 = load i64, i64* %288, align 8
  %290 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %291 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* @MPSC_RXRE_SIZE, align 4
  %294 = mul nsw i32 %292, %293
  %295 = sext i32 %294 to i64
  %296 = add nsw i64 %289, %295
  %297 = inttoptr i64 %296 to %struct.mpsc_rx_desc*
  store %struct.mpsc_rx_desc* %297, %struct.mpsc_rx_desc** %3, align 8
  %298 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %299 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %298, i32 0, i32 3
  %300 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.mpsc_rx_desc*, %struct.mpsc_rx_desc** %3, align 8
  %303 = bitcast %struct.mpsc_rx_desc* %302 to i8*
  %304 = load i32, i32* @MPSC_RXRE_SIZE, align 4
  %305 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %306 = call i32 @dma_cache_sync(i32 %301, i8* %303, i32 %304, i32 %305)
  store i32 1, i32* %8, align 4
  br label %44

307:                                              ; preds = %44
  %308 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %309 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %308, i32 0, i32 1
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* @SDMA_SDCM, align 8
  %312 = add nsw i64 %310, %311
  %313 = call i32 @readl(i64 %312)
  %314 = load i32, i32* @SDMA_SDCM_ERD, align 4
  %315 = and i32 %313, %314
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %320

317:                                              ; preds = %307
  %318 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %319 = call i32 @mpsc_start_rx(%struct.mpsc_port_info* %318)
  br label %320

320:                                              ; preds = %317, %307
  %321 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %322 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %321)
  %323 = load i32, i32* %8, align 4
  ret i32 %323
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @dma_cache_sync(i32, i8*, i32, i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i64 @tty_buffer_request_room(%struct.tty_struct*, i64) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

declare dso_local i64 @uart_handle_break(%struct.TYPE_9__*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_struct*, i32, i8 signext) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @mpsc_start_rx(%struct.mpsc_port_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

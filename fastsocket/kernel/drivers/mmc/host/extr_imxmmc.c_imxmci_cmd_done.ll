; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_imxmmc.c_imxmci_cmd_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_imxmmc.c_imxmci_cmd_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imxmci_host = type { i32, %struct.mmc_request*, i32, i32, i64, %struct.mmc_command*, %struct.mmc_data* }
%struct.mmc_request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_command = type { i32, i32*, i32 }
%struct.mmc_data = type { i32 }

@STATUS_TIME_OUT_RESP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"CMD TIMEOUT\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@STATUS_RESP_CRC_ERR = common dso_local global i32 0, align 4
@MMC_RSP_CRC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"cmd crc error\0A\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@MMC_RSP_PRESENT = common dso_local global i32 0, align 4
@MMC_RSP_136 = common dso_local global i32 0, align 4
@MMC_REG_RES_FIFO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"RESP 0x%08x, 0x%08x, 0x%08x, 0x%08x, error %d\0A\00", align 1
@STATUS_ERR_MASK = common dso_local global i32 0, align 4
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@MMC_REG_STATUS = common dso_local global i64 0, align 8
@STATUS_APPL_BUFF_FE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"imxmci_cmd_done DMA WR\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"STATUS = 0x%04x\0A\00", align 1
@IMXMCI_PEND_DMA_DATA_b = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"imxmci_cmd_done: no request to finish\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imxmci_host*, i32)* @imxmci_cmd_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imxmci_cmd_done(%struct.imxmci_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.imxmci_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc_command*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mmc_data*, align 8
  %12 = alloca %struct.mmc_request*, align 8
  store %struct.imxmci_host* %0, %struct.imxmci_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %14 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %13, i32 0, i32 5
  %15 = load %struct.mmc_command*, %struct.mmc_command** %14, align 8
  store %struct.mmc_command* %15, %struct.mmc_command** %6, align 8
  %16 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %17 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %16, i32 0, i32 6
  %18 = load %struct.mmc_data*, %struct.mmc_data** %17, align 8
  store %struct.mmc_data* %18, %struct.mmc_data** %11, align 8
  %19 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %20 = icmp ne %struct.mmc_command* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %273

22:                                               ; preds = %2
  %23 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %24 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %23, i32 0, i32 5
  store %struct.mmc_command* null, %struct.mmc_command** %24, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @STATUS_TIME_OUT_RESP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %22
  %30 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %31 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @mmc_dev(i32 %32)
  %34 = call i32 (i32, i8*, ...) @dev_dbg(i32 %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ETIMEDOUT, align 4
  %36 = sub nsw i32 0, %35
  %37 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %38 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  br label %62

39:                                               ; preds = %22
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @STATUS_RESP_CRC_ERR, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %39
  %45 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %46 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @MMC_RSP_CRC, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %44
  %52 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %53 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @mmc_dev(i32 %54)
  %56 = call i32 (i32, i8*, ...) @dev_dbg(i32 %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @EILSEQ, align 4
  %58 = sub nsw i32 0, %57
  %59 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %60 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %51, %44, %39
  br label %62

62:                                               ; preds = %61, %29
  %63 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %64 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @MMC_RSP_PRESENT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %144

69:                                               ; preds = %62
  %70 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %71 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @MMC_RSP_136, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %109

76:                                               ; preds = %69
  store i32 0, i32* %7, align 4
  br label %77

77:                                               ; preds = %105, %76
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %78, 4
  br i1 %79, label %80, label %108

80:                                               ; preds = %77
  %81 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %82 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @MMC_REG_RES_FIFO, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i8* @readw(i64 %85)
  %87 = ptrtoint i8* %86 to i32
  store i32 %87, i32* %8, align 4
  %88 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %89 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @MMC_REG_RES_FIFO, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i8* @readw(i64 %92)
  %94 = ptrtoint i8* %93 to i32
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %8, align 4
  %96 = shl i32 %95, 16
  %97 = load i32, i32* %9, align 4
  %98 = or i32 %96, %97
  %99 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %100 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %98, i32* %104, align 4
  br label %105

105:                                              ; preds = %80
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %77

108:                                              ; preds = %77
  br label %143

109:                                              ; preds = %69
  %110 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %111 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @MMC_REG_RES_FIFO, align 8
  %114 = add nsw i64 %112, %113
  %115 = call i8* @readw(i64 %114)
  %116 = ptrtoint i8* %115 to i32
  store i32 %116, i32* %8, align 4
  %117 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %118 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @MMC_REG_RES_FIFO, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i8* @readw(i64 %121)
  %123 = ptrtoint i8* %122 to i32
  store i32 %123, i32* %9, align 4
  %124 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %125 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @MMC_REG_RES_FIFO, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i8* @readw(i64 %128)
  %130 = ptrtoint i8* %129 to i32
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %8, align 4
  %132 = shl i32 %131, 24
  %133 = load i32, i32* %9, align 4
  %134 = shl i32 %133, 8
  %135 = or i32 %132, %134
  %136 = load i32, i32* %10, align 4
  %137 = ashr i32 %136, 8
  %138 = or i32 %135, %137
  %139 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %140 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  store i32 %138, i32* %142, align 4
  br label %143

143:                                              ; preds = %109, %108
  br label %144

144:                                              ; preds = %143, %62
  %145 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %146 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @mmc_dev(i32 %147)
  %149 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %150 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %155 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %160 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 2
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %165 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 3
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %170 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = call i32 (i32, i8*, ...) @dev_dbg(i32 %148, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %153, i32 %158, i32 %163, i32 %168, i32 %171)
  %173 = load %struct.mmc_data*, %struct.mmc_data** %11, align 8
  %174 = icmp ne %struct.mmc_data* %173, null
  br i1 %174, label %175, label %246

175:                                              ; preds = %144
  %176 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %177 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %246, label %180

180:                                              ; preds = %175
  %181 = load i32, i32* %5, align 4
  %182 = load i32, i32* @STATUS_ERR_MASK, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %246, label %185

185:                                              ; preds = %180
  %186 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %187 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %186, i32 0, i32 1
  %188 = load %struct.mmc_request*, %struct.mmc_request** %187, align 8
  %189 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %188, i32 0, i32 0
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @MMC_DATA_WRITE, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %245

196:                                              ; preds = %185
  %197 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %198 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %197, i32 0, i32 4
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @MMC_REG_STATUS, align 8
  %201 = add nsw i64 %199, %200
  %202 = call i8* @readw(i64 %201)
  %203 = ptrtoint i8* %202 to i32
  store i32 %203, i32* %5, align 4
  %204 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %205 = load i32, i32* @STATUS_APPL_BUFF_FE, align 4
  %206 = call i64 @imxmci_busy_wait_for_status(%struct.imxmci_host* %204, i32* %5, i32 %205, i32 40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %207 = icmp slt i64 %206, 0
  br i1 %207, label %208, label %233

208:                                              ; preds = %196
  %209 = load i32, i32* @EIO, align 4
  %210 = sub nsw i32 0, %209
  %211 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %212 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %211, i32 0, i32 2
  store i32 %210, i32* %212, align 8
  %213 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %214 = load i32, i32* %5, align 4
  %215 = call i32 @imxmci_finish_data(%struct.imxmci_host* %213, i32 %214)
  %216 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %217 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %216, i32 0, i32 1
  %218 = load %struct.mmc_request*, %struct.mmc_request** %217, align 8
  %219 = icmp ne %struct.mmc_request* %218, null
  br i1 %219, label %220, label %226

220:                                              ; preds = %208
  %221 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %222 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %223 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %222, i32 0, i32 1
  %224 = load %struct.mmc_request*, %struct.mmc_request** %223, align 8
  %225 = call i32 @imxmci_finish_request(%struct.imxmci_host* %221, %struct.mmc_request* %224)
  br label %226

226:                                              ; preds = %220, %208
  %227 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %228 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @mmc_dev(i32 %229)
  %231 = load i32, i32* %5, align 4
  %232 = call i32 (i32, i8*, ...) @dev_warn(i32 %230, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %231)
  store i32 0, i32* %3, align 4
  br label %273

233:                                              ; preds = %196
  %234 = load i32, i32* @IMXMCI_PEND_DMA_DATA_b, align 4
  %235 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %236 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %235, i32 0, i32 3
  %237 = call i64 @test_bit(i32 %234, i32* %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %233
  %240 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %241 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @imx_dma_enable(i32 %242)
  br label %244

244:                                              ; preds = %239, %233
  br label %245

245:                                              ; preds = %244, %185
  br label %272

246:                                              ; preds = %180, %175, %144
  %247 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %248 = call i32 @imxmci_stop_clock(%struct.imxmci_host* %247)
  %249 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %250 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %249, i32 0, i32 1
  %251 = load %struct.mmc_request*, %struct.mmc_request** %250, align 8
  store %struct.mmc_request* %251, %struct.mmc_request** %12, align 8
  %252 = load %struct.mmc_data*, %struct.mmc_data** %11, align 8
  %253 = icmp ne %struct.mmc_data* %252, null
  br i1 %253, label %254, label %258

254:                                              ; preds = %246
  %255 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %256 = load i32, i32* %5, align 4
  %257 = call i32 @imxmci_finish_data(%struct.imxmci_host* %255, i32 %256)
  br label %258

258:                                              ; preds = %254, %246
  %259 = load %struct.mmc_request*, %struct.mmc_request** %12, align 8
  %260 = icmp ne %struct.mmc_request* %259, null
  br i1 %260, label %261, label %265

261:                                              ; preds = %258
  %262 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %263 = load %struct.mmc_request*, %struct.mmc_request** %12, align 8
  %264 = call i32 @imxmci_finish_request(%struct.imxmci_host* %262, %struct.mmc_request* %263)
  br label %271

265:                                              ; preds = %258
  %266 = load %struct.imxmci_host*, %struct.imxmci_host** %4, align 8
  %267 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @mmc_dev(i32 %268)
  %270 = call i32 (i32, i8*, ...) @dev_warn(i32 %269, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %271

271:                                              ; preds = %265, %261
  br label %272

272:                                              ; preds = %271, %245
  store i32 1, i32* %3, align 4
  br label %273

273:                                              ; preds = %272, %226, %21
  %274 = load i32, i32* %3, align 4
  ret i32 %274
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i8* @readw(i64) #1

declare dso_local i64 @imxmci_busy_wait_for_status(%struct.imxmci_host*, i32*, i32, i32, i8*) #1

declare dso_local i32 @imxmci_finish_data(%struct.imxmci_host*, i32) #1

declare dso_local i32 @imxmci_finish_request(%struct.imxmci_host*, %struct.mmc_request*) #1

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @imx_dma_enable(i32) #1

declare dso_local i32 @imxmci_stop_clock(%struct.imxmci_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

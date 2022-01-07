; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdricoh_cs.c_sdricoh_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdricoh_cs.c_sdricoh_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.mmc_command* }
%struct.mmc_command = type { i8, i32, i32, i32*, i32, %struct.mmc_data* }
%struct.mmc_data = type { i64, i32, i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sdricoh_host = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.page = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"=============================\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"sdricoh_request opcode=%i\0A\00", align 1
@R21C_STATUS = common dso_local global i32 0, align 4
@R226_BLOCKSIZE = common dso_local global i32 0, align 4
@R208_DATAIO = common dso_local global i32 0, align 4
@MMC_RSP_PRESENT = common dso_local global i32 0, align 4
@MMC_RSP_136 = common dso_local global i32 0, align 4
@R20C_RESP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"transfer: blksz %i blocks %i sg_len %i sg length %i\0A\00", align 1
@MMC_DATA_READ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"sdricoh_request: cmd %i block transfer failed\0A\00", align 1
@STATUS_TRANSFER_FINISHED = common dso_local global i32 0, align 4
@TRANSFER_TIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"sdricoh_request: transfer end error\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @sdricoh_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdricoh_request(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.sdricoh_host*, align 8
  %6 = alloca %struct.mmc_command*, align 8
  %7 = alloca %struct.mmc_data*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.page*, align 8
  %14 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %15 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %16 = call %struct.sdricoh_host* @mmc_priv(%struct.mmc_host* %15)
  store %struct.sdricoh_host* %16, %struct.sdricoh_host** %5, align 8
  %17 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %18 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %17, i32 0, i32 0
  %19 = load %struct.mmc_command*, %struct.mmc_command** %18, align 8
  store %struct.mmc_command* %19, %struct.mmc_command** %6, align 8
  %20 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %21 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %20, i32 0, i32 5
  %22 = load %struct.mmc_data*, %struct.mmc_data** %21, align 8
  store %struct.mmc_data* %22, %struct.mmc_data** %7, align 8
  %23 = load %struct.sdricoh_host*, %struct.sdricoh_host** %5, align 8
  %24 = getelementptr inbounds %struct.sdricoh_host, %struct.sdricoh_host* %23, i32 0, i32 1
  %25 = load %struct.device*, %struct.device** %24, align 8
  store %struct.device* %25, %struct.device** %8, align 8
  %26 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %27 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %26, i32 0, i32 0
  %28 = load i8, i8* %27, align 8
  store i8 %28, i8* %9, align 1
  %29 = load %struct.device*, %struct.device** %8, align 8
  %30 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.device*, %struct.device** %8, align 8
  %32 = load i8, i8* %9, align 1
  %33 = zext i8 %32 to i32
  %34 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load %struct.sdricoh_host*, %struct.sdricoh_host** %5, align 8
  %36 = load i32, i32* @R21C_STATUS, align 4
  %37 = call i32 @sdricoh_writel(%struct.sdricoh_host* %35, i32 %36, i32 24)
  %38 = load %struct.sdricoh_host*, %struct.sdricoh_host** %5, align 8
  %39 = getelementptr inbounds %struct.sdricoh_host, %struct.sdricoh_host* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %2
  %43 = load i8, i8* %9, align 1
  %44 = zext i8 %43 to i32
  %45 = or i32 %44, 64
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %9, align 1
  %47 = load %struct.sdricoh_host*, %struct.sdricoh_host** %5, align 8
  %48 = getelementptr inbounds %struct.sdricoh_host, %struct.sdricoh_host* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  br label %57

49:                                               ; preds = %2
  %50 = load i8, i8* %9, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %51, 55
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load %struct.sdricoh_host*, %struct.sdricoh_host** %5, align 8
  %55 = getelementptr inbounds %struct.sdricoh_host, %struct.sdricoh_host* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  br label %56

56:                                               ; preds = %53, %49
  br label %57

57:                                               ; preds = %56, %42
  %58 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %59 = icmp ne %struct.mmc_data* %58, null
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load %struct.sdricoh_host*, %struct.sdricoh_host** %5, align 8
  %62 = load i32, i32* @R226_BLOCKSIZE, align 4
  %63 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %64 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @sdricoh_writew(%struct.sdricoh_host* %61, i32 %62, i64 %65)
  %67 = load %struct.sdricoh_host*, %struct.sdricoh_host** %5, align 8
  %68 = load i32, i32* @R208_DATAIO, align 4
  %69 = call i32 @sdricoh_writel(%struct.sdricoh_host* %67, i32 %68, i32 0)
  br label %70

70:                                               ; preds = %60, %57
  %71 = load %struct.sdricoh_host*, %struct.sdricoh_host** %5, align 8
  %72 = load i8, i8* %9, align 1
  %73 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %74 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @sdricoh_mmc_cmd(%struct.sdricoh_host* %71, i8 zeroext %72, i32 %75)
  %77 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %78 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %80 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @MMC_RSP_PRESENT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %146

85:                                               ; preds = %70
  %86 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %87 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @MMC_RSP_136, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %137

92:                                               ; preds = %85
  store i32 0, i32* %10, align 4
  br label %93

93:                                               ; preds = %133, %92
  %94 = load i32, i32* %10, align 4
  %95 = icmp slt i32 %94, 4
  br i1 %95, label %96, label %136

96:                                               ; preds = %93
  %97 = load %struct.sdricoh_host*, %struct.sdricoh_host** %5, align 8
  %98 = load i64, i64* @R20C_RESP, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sub nsw i32 3, %99
  %101 = mul nsw i32 %100, 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %98, %102
  %104 = call i32 @sdricoh_readl(%struct.sdricoh_host* %97, i64 %103)
  %105 = shl i32 %104, 8
  %106 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %107 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 %105, i32* %111, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 3
  br i1 %113, label %114, label %132

114:                                              ; preds = %96
  %115 = load %struct.sdricoh_host*, %struct.sdricoh_host** %5, align 8
  %116 = load i64, i64* @R20C_RESP, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sub nsw i32 3, %117
  %119 = mul nsw i32 %118, 4
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %116, %120
  %122 = sub nsw i64 %121, 1
  %123 = call i32 @sdricoh_readb(%struct.sdricoh_host* %115, i64 %122)
  %124 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %125 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %123
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %114, %96
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %10, align 4
  br label %93

136:                                              ; preds = %93
  br label %145

137:                                              ; preds = %85
  %138 = load %struct.sdricoh_host*, %struct.sdricoh_host** %5, align 8
  %139 = load i64, i64* @R20C_RESP, align 8
  %140 = call i32 @sdricoh_readl(%struct.sdricoh_host* %138, i64 %139)
  %141 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %142 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %141, i32 0, i32 3
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  store i32 %140, i32* %144, align 4
  br label %145

145:                                              ; preds = %137, %136
  br label %146

146:                                              ; preds = %145, %70
  %147 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %148 = icmp ne %struct.mmc_data* %147, null
  br i1 %148, label %149, label %254

149:                                              ; preds = %146
  %150 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %151 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %254

154:                                              ; preds = %149
  %155 = load %struct.device*, %struct.device** %8, align 8
  %156 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %157 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %160 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %163 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %166 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %165, i32 0, i32 4
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %155, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i64 %158, i32 %161, i32 %164, i32 %169)
  %171 = load %struct.sdricoh_host*, %struct.sdricoh_host** %5, align 8
  %172 = load i32, i32* @R21C_STATUS, align 4
  %173 = call i32 @sdricoh_writel(%struct.sdricoh_host* %171, i32 %172, i32 -2088828130)
  store i32 0, i32* %10, align 4
  br label %174

174:                                              ; preds = %234, %154
  %175 = load i32, i32* %10, align 4
  %176 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %177 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = icmp slt i32 %175, %178
  br i1 %179, label %180, label %237

180:                                              ; preds = %174
  %181 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %182 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  store i64 %183, i64* %11, align 8
  %184 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %185 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %184, i32 0, i32 4
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** %185, align 8
  %187 = call %struct.page* @sg_page(%struct.TYPE_2__* %186)
  store %struct.page* %187, %struct.page** %13, align 8
  %188 = load %struct.page*, %struct.page** %13, align 8
  %189 = call i32* @kmap(%struct.page* %188)
  %190 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %191 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %190, i32 0, i32 4
  %192 = load %struct.TYPE_2__*, %struct.TYPE_2__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %189, i64 %195
  %197 = load i64, i64* %11, align 8
  %198 = load i32, i32* %10, align 4
  %199 = sext i32 %198 to i64
  %200 = mul i64 %197, %199
  %201 = getelementptr inbounds i32, i32* %196, i64 %200
  store i32* %201, i32** %12, align 8
  %202 = load %struct.sdricoh_host*, %struct.sdricoh_host** %5, align 8
  %203 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %204 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @MMC_DATA_READ, align 4
  %207 = and i32 %205, %206
  %208 = load i32*, i32** %12, align 8
  %209 = load i64, i64* %11, align 8
  %210 = call i32 @sdricoh_blockio(%struct.sdricoh_host* %202, i32 %207, i32* %208, i64 %209)
  store i32 %210, i32* %14, align 4
  %211 = load %struct.page*, %struct.page** %13, align 8
  %212 = call i32 @kunmap(%struct.page* %211)
  %213 = load %struct.page*, %struct.page** %13, align 8
  %214 = call i32 @flush_dcache_page(%struct.page* %213)
  %215 = load i32, i32* %14, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %227

217:                                              ; preds = %180
  %218 = load %struct.device*, %struct.device** %8, align 8
  %219 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %220 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %219, i32 0, i32 0
  %221 = load i8, i8* %220, align 8
  %222 = zext i8 %221 to i32
  %223 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %218, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %222)
  %224 = load i32, i32* %14, align 4
  %225 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %226 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %225, i32 0, i32 1
  store i32 %224, i32* %226, align 4
  br label %237

227:                                              ; preds = %180
  %228 = load i64, i64* %11, align 8
  %229 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %230 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %229, i32 0, i32 3
  %231 = load i64, i64* %230, align 8
  %232 = add i64 %231, %228
  store i64 %232, i64* %230, align 8
  br label %233

233:                                              ; preds = %227
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %10, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %10, align 4
  br label %174

237:                                              ; preds = %217, %174
  %238 = load %struct.sdricoh_host*, %struct.sdricoh_host** %5, align 8
  %239 = load i32, i32* @R208_DATAIO, align 4
  %240 = call i32 @sdricoh_writel(%struct.sdricoh_host* %238, i32 %239, i32 1)
  %241 = load %struct.sdricoh_host*, %struct.sdricoh_host** %5, align 8
  %242 = load i32, i32* @STATUS_TRANSFER_FINISHED, align 4
  %243 = load i32, i32* @TRANSFER_TIMEOUT, align 4
  %244 = call i64 @sdricoh_query_status(%struct.sdricoh_host* %241, i32 %242, i32 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %253

246:                                              ; preds = %237
  %247 = load %struct.device*, %struct.device** %8, align 8
  %248 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %247, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %249 = load i32, i32* @EINVAL, align 4
  %250 = sub nsw i32 0, %249
  %251 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %252 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %251, i32 0, i32 1
  store i32 %250, i32* %252, align 4
  br label %253

253:                                              ; preds = %246, %237
  br label %254

254:                                              ; preds = %253, %149, %146
  %255 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %256 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %257 = call i32 @mmc_request_done(%struct.mmc_host* %255, %struct.mmc_request* %256)
  %258 = load %struct.device*, %struct.device** %8, align 8
  %259 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %258, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local %struct.sdricoh_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @sdricoh_writel(%struct.sdricoh_host*, i32, i32) #1

declare dso_local i32 @sdricoh_writew(%struct.sdricoh_host*, i32, i64) #1

declare dso_local i32 @sdricoh_mmc_cmd(%struct.sdricoh_host*, i8 zeroext, i32) #1

declare dso_local i32 @sdricoh_readl(%struct.sdricoh_host*, i64) #1

declare dso_local i32 @sdricoh_readb(%struct.sdricoh_host*, i64) #1

declare dso_local %struct.page* @sg_page(%struct.TYPE_2__*) #1

declare dso_local i32* @kmap(%struct.page*) #1

declare dso_local i32 @sdricoh_blockio(%struct.sdricoh_host*, i32, i32*, i64) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @sdricoh_query_status(%struct.sdricoh_host*, i32, i32) #1

declare dso_local i32 @mmc_request_done(%struct.mmc_host*, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

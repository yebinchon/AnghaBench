; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_imxmmc.c_imxmci_tasklet_fnc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_imxmmc.c_imxmci_tasklet_fnc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imxmci_host = type { i32, i32, i32, i64, i32, i64, i64, %struct.TYPE_2__*, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@MMC_REG_STATUS = common dso_local global i64 0, align 8
@IMXMCI_PEND_WAIT_RESP_b = common dso_local global i32 0, align 4
@IMXMCI_PEND_DMA_DATA_b = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"RESP+DMA\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"RESP\00", align 1
@IMXMCI_PEND_DMA_END_b = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"DATA\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"DMA\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"%s TIMEOUT, hardware stucked STATUS = 0x%04x IMASK = 0x%04x\0A\00", align 1
@MMC_REG_INT_MASK = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [81 x i8] c"CMD_DAT_CONT = 0x%04x, MMC_BLK_LEN = 0x%04x, MMC_NOB = 0x%04x, DMA_CCR = 0x%08x\0A\00", align 1
@MMC_REG_CMD_DAT_CONT = common dso_local global i64 0, align 8
@MMC_REG_BLK_LEN = common dso_local global i64 0, align 8
@MMC_REG_NOB = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [47 x i8] c"CMD%d, prevCMD%d, bus %d-bit, dma_size = 0x%x\0A\00", align 1
@STATUS_TIME_OUT_RESP = common dso_local global i32 0, align 4
@STATUS_TIME_OUT_READ = common dso_local global i32 0, align 4
@STATUS_CRC_READ_ERR = common dso_local global i32 0, align 4
@STATUS_CRC_WRITE_ERR = common dso_local global i32 0, align 4
@IMXMCI_PEND_IRQ_b = common dso_local global i32 0, align 4
@IMXMCI_PEND_CPU_DATA_b = common dso_local global i32 0, align 4
@STATUS_END_CMD_RESP = common dso_local global i32 0, align 4
@STATUS_ERR_MASK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"imxmci_tasklet_fnc resp (ERRATUM #4)\00", align 1
@IMXMCI_PEND_IRQ_m = common dso_local global i32 0, align 4
@IMXMCI_PEND_CPU_DATA_m = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@STATUS_WRITE_OP_DONE = common dso_local global i32 0, align 4
@STATUS_DATA_TRANS_DONE = common dso_local global i32 0, align 4
@IMXMCI_PEND_CARD_XCHG_b = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @imxmci_tasklet_fnc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imxmci_tasklet_fnc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.imxmci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to %struct.imxmci_host*
  store %struct.imxmci_host* %9, %struct.imxmci_host** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %11 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %10, i32 0, i32 13
  %12 = call i32 @atomic_read(i32* %11)
  %13 = icmp sgt i32 %12, 4
  br i1 %13, label %14, label %124

14:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  %15 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %16 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %15, i32 0, i32 9
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MMC_REG_STATUS, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readw(i64 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %23 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @IMXMCI_PEND_WAIT_RESP_b, align 4
  %25 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %26 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %25, i32 0, i32 8
  %27 = call i64 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %14
  %30 = load i32, i32* @IMXMCI_PEND_DMA_DATA_b, align 4
  %31 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %32 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %31, i32 0, i32 8
  %33 = call i64 @test_bit(i32 %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %37

36:                                               ; preds = %29
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %37

37:                                               ; preds = %36, %35
  br label %55

38:                                               ; preds = %14
  %39 = load i32, i32* @IMXMCI_PEND_DMA_DATA_b, align 4
  %40 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %41 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %40, i32 0, i32 8
  %42 = call i64 @test_bit(i32 %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %38
  %45 = load i32, i32* @IMXMCI_PEND_DMA_END_b, align 4
  %46 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %47 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %46, i32 0, i32 8
  %48 = call i64 @test_bit(i32 %45, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %52

51:                                               ; preds = %44
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %52

52:                                               ; preds = %51, %50
  br label %54

53:                                               ; preds = %38
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %54

54:                                               ; preds = %53, %52
  br label %55

55:                                               ; preds = %54, %37
  %56 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %57 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @mmc_dev(i32 %58)
  %60 = load i8*, i8** %7, align 8
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %63 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %62, i32 0, i32 9
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MMC_REG_INT_MASK, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @readw(i64 %66)
  %68 = call i32 (i32, i8*, ...) @dev_err(i32 %59, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i8* %60, i32 %61, i32 %67)
  %69 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %70 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @mmc_dev(i32 %71)
  %73 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %74 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %73, i32 0, i32 9
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @MMC_REG_CMD_DAT_CONT, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @readw(i64 %77)
  %79 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %80 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %79, i32 0, i32 9
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @MMC_REG_BLK_LEN, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @readw(i64 %83)
  %85 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %86 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %85, i32 0, i32 9
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @MMC_REG_NOB, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @readw(i64 %89)
  %91 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %92 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %91, i32 0, i32 12
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @CCR(i32 %93)
  %95 = call i32 (i32, i8*, ...) @dev_err(i32 %72, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.6, i64 0, i64 0), i32 %78, i32 %84, i32 %90, i32 %94)
  %96 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %97 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @mmc_dev(i32 %98)
  %100 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %101 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %100, i32 0, i32 7
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = icmp ne %struct.TYPE_2__* %102, null
  br i1 %103, label %104, label %110

104:                                              ; preds = %55
  %105 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %106 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %105, i32 0, i32 7
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  br label %111

110:                                              ; preds = %55
  br label %111

111:                                              ; preds = %110, %104
  %112 = phi i32 [ %109, %104 ], [ 0, %110 ]
  %113 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %114 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %117 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = shl i32 1, %118
  %120 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %121 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %120, i32 0, i32 11
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (i32, i8*, ...) @dev_err(i32 %99, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i32 %112, i32 %115, i32 %119, i32 %122)
  br label %124

124:                                              ; preds = %111, %1
  %125 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %126 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %125, i32 0, i32 10
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load i32, i32* %6, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %129, %124
  %133 = load i32, i32* @STATUS_TIME_OUT_RESP, align 4
  %134 = load i32, i32* @STATUS_TIME_OUT_READ, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @STATUS_CRC_READ_ERR, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @STATUS_CRC_WRITE_ERR, align 4
  %139 = or i32 %137, %138
  %140 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %141 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  br label %142

142:                                              ; preds = %132, %129
  %143 = load i32, i32* @IMXMCI_PEND_IRQ_b, align 4
  %144 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %145 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %144, i32 0, i32 8
  %146 = call i64 @test_bit(i32 %143, i32* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %142
  %149 = load i32, i32* %6, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %261

151:                                              ; preds = %148, %142
  %152 = load i32, i32* @IMXMCI_PEND_IRQ_b, align 4
  %153 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %154 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %153, i32 0, i32 8
  %155 = call i32 @clear_bit(i32 %152, i32* %154)
  %156 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %157 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %156, i32 0, i32 9
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @MMC_REG_STATUS, align 8
  %160 = add nsw i64 %158, %159
  %161 = call i32 @readw(i64 %160)
  store i32 %161, i32* %4, align 4
  %162 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %163 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* %4, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %4, align 4
  %167 = load i32, i32* @IMXMCI_PEND_CPU_DATA_b, align 4
  %168 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %169 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %168, i32 0, i32 8
  %170 = call i64 @test_bit(i32 %167, i32* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %151
  %173 = load i32, i32* @STATUS_CRC_READ_ERR, align 4
  %174 = xor i32 %173, -1
  %175 = load i32, i32* %4, align 4
  %176 = and i32 %175, %174
  store i32 %176, i32* %4, align 4
  br label %177

177:                                              ; preds = %172, %151
  %178 = load i32, i32* @IMXMCI_PEND_WAIT_RESP_b, align 4
  %179 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %180 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %179, i32 0, i32 8
  %181 = call i64 @test_bit(i32 %178, i32* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %177
  %184 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %185 = load i32, i32* @STATUS_END_CMD_RESP, align 4
  %186 = load i32, i32* @STATUS_ERR_MASK, align 4
  %187 = or i32 %185, %186
  %188 = call i32 @imxmci_busy_wait_for_status(%struct.imxmci_host* %184, i32* %4, i32 %187, i32 20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  br label %189

189:                                              ; preds = %183, %177
  %190 = load i32, i32* %4, align 4
  %191 = load i32, i32* @STATUS_END_CMD_RESP, align 4
  %192 = load i32, i32* @STATUS_ERR_MASK, align 4
  %193 = or i32 %191, %192
  %194 = and i32 %190, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %221

196:                                              ; preds = %189
  %197 = load i32, i32* @IMXMCI_PEND_WAIT_RESP_b, align 4
  %198 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %199 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %198, i32 0, i32 8
  %200 = call i64 @test_and_clear_bit(i32 %197, i32* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %196
  %203 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %204 = load i32, i32* %4, align 4
  %205 = call i32 @imxmci_cmd_done(%struct.imxmci_host* %203, i32 %204)
  br label %206

206:                                              ; preds = %202, %196
  %207 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %208 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %207, i32 0, i32 6
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %220

211:                                              ; preds = %206
  %212 = load i32, i32* %4, align 4
  %213 = load i32, i32* @STATUS_ERR_MASK, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %211
  %217 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %218 = load i32, i32* %4, align 4
  %219 = call i32 @imxmci_data_done(%struct.imxmci_host* %217, i32 %218)
  br label %220

220:                                              ; preds = %216, %211, %206
  br label %221

221:                                              ; preds = %220, %189
  %222 = load i32, i32* @IMXMCI_PEND_CPU_DATA_b, align 4
  %223 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %224 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %223, i32 0, i32 8
  %225 = call i64 @test_bit(i32 %222, i32* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %260

227:                                              ; preds = %221
  %228 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %229 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %228, i32 0, i32 9
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @MMC_REG_STATUS, align 8
  %232 = add nsw i64 %230, %231
  %233 = call i32 @readw(i64 %232)
  %234 = load i32, i32* %4, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* %4, align 4
  %236 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %237 = call i64 @imxmci_cpu_driven_data(%struct.imxmci_host* %236, i32* %4)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %259

239:                                              ; preds = %227
  %240 = load i32, i32* @IMXMCI_PEND_WAIT_RESP_b, align 4
  %241 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %242 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %241, i32 0, i32 8
  %243 = call i64 @test_and_clear_bit(i32 %240, i32* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %239
  %246 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %247 = load i32, i32* %4, align 4
  %248 = call i32 @imxmci_cmd_done(%struct.imxmci_host* %246, i32 %247)
  br label %249

249:                                              ; preds = %245, %239
  %250 = load i32, i32* @IMXMCI_PEND_IRQ_m, align 4
  %251 = load i32, i32* @IMXMCI_PEND_CPU_DATA_m, align 4
  %252 = or i32 %250, %251
  %253 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %254 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %253, i32 0, i32 8
  %255 = call i32 @atomic_clear_mask(i32 %252, i32* %254)
  %256 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %257 = load i32, i32* %4, align 4
  %258 = call i32 @imxmci_data_done(%struct.imxmci_host* %256, i32 %257)
  br label %259

259:                                              ; preds = %249, %227
  br label %260

260:                                              ; preds = %259, %221
  br label %261

261:                                              ; preds = %260, %148
  %262 = load i32, i32* @IMXMCI_PEND_DMA_END_b, align 4
  %263 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %264 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %263, i32 0, i32 8
  %265 = call i64 @test_bit(i32 %262, i32* %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %308

267:                                              ; preds = %261
  %268 = load i32, i32* @IMXMCI_PEND_WAIT_RESP_b, align 4
  %269 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %270 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %269, i32 0, i32 8
  %271 = call i64 @test_bit(i32 %268, i32* %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %308, label %273

273:                                              ; preds = %267
  %274 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %275 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %274, i32 0, i32 9
  %276 = load i64, i64* %275, align 8
  %277 = load i64, i64* @MMC_REG_STATUS, align 8
  %278 = add nsw i64 %276, %277
  %279 = call i32 @readw(i64 %278)
  store i32 %279, i32* %4, align 4
  %280 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %281 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* %4, align 4
  %284 = or i32 %283, %282
  store i32 %284, i32* %4, align 4
  %285 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %286 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %285, i32 0, i32 3
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* @DMA_TO_DEVICE, align 8
  %289 = icmp eq i64 %287, %288
  br i1 %289, label %290, label %292

290:                                              ; preds = %273
  %291 = load i32, i32* @STATUS_WRITE_OP_DONE, align 4
  store i32 %291, i32* %5, align 4
  br label %294

292:                                              ; preds = %273
  %293 = load i32, i32* @STATUS_DATA_TRANS_DONE, align 4
  store i32 %293, i32* %5, align 4
  br label %294

294:                                              ; preds = %292, %290
  %295 = load i32, i32* %4, align 4
  %296 = load i32, i32* %5, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %307

299:                                              ; preds = %294
  %300 = load i32, i32* @IMXMCI_PEND_DMA_END_b, align 4
  %301 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %302 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %301, i32 0, i32 8
  %303 = call i32 @clear_bit(i32 %300, i32* %302)
  %304 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %305 = load i32, i32* %4, align 4
  %306 = call i32 @imxmci_data_done(%struct.imxmci_host* %304, i32 %305)
  br label %307

307:                                              ; preds = %299, %294
  br label %308

308:                                              ; preds = %307, %267, %261
  %309 = load i32, i32* @IMXMCI_PEND_CARD_XCHG_b, align 4
  %310 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %311 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %310, i32 0, i32 8
  %312 = call i64 @test_and_clear_bit(i32 %309, i32* %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %353

314:                                              ; preds = %308
  %315 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %316 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %315, i32 0, i32 7
  %317 = load %struct.TYPE_2__*, %struct.TYPE_2__** %316, align 8
  %318 = icmp ne %struct.TYPE_2__* %317, null
  br i1 %318, label %319, label %323

319:                                              ; preds = %314
  %320 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %321 = load i32, i32* @STATUS_TIME_OUT_RESP, align 4
  %322 = call i32 @imxmci_cmd_done(%struct.imxmci_host* %320, i32 %321)
  br label %323

323:                                              ; preds = %319, %314
  %324 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %325 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %324, i32 0, i32 6
  %326 = load i64, i64* %325, align 8
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %336

328:                                              ; preds = %323
  %329 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %330 = load i32, i32* @STATUS_TIME_OUT_READ, align 4
  %331 = load i32, i32* @STATUS_CRC_READ_ERR, align 4
  %332 = or i32 %330, %331
  %333 = load i32, i32* @STATUS_CRC_WRITE_ERR, align 4
  %334 = or i32 %332, %333
  %335 = call i32 @imxmci_data_done(%struct.imxmci_host* %329, i32 %334)
  br label %336

336:                                              ; preds = %328, %323
  %337 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %338 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %337, i32 0, i32 5
  %339 = load i64, i64* %338, align 8
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %347

341:                                              ; preds = %336
  %342 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %343 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %344 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %343, i32 0, i32 5
  %345 = load i64, i64* %344, align 8
  %346 = call i32 @imxmci_finish_request(%struct.imxmci_host* %342, i64 %345)
  br label %347

347:                                              ; preds = %341, %336
  %348 = load %struct.imxmci_host*, %struct.imxmci_host** %3, align 8
  %349 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %348, i32 0, i32 4
  %350 = load i32, i32* %349, align 8
  %351 = call i32 @msecs_to_jiffies(i32 100)
  %352 = call i32 @mmc_detect_change(i32 %350, i32 %351)
  br label %353

353:                                              ; preds = %347, %308
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @CCR(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @imxmci_busy_wait_for_status(%struct.imxmci_host*, i32*, i32, i32, i8*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @imxmci_cmd_done(%struct.imxmci_host*, i32) #1

declare dso_local i32 @imxmci_data_done(%struct.imxmci_host*, i32) #1

declare dso_local i64 @imxmci_cpu_driven_data(%struct.imxmci_host*, i32*) #1

declare dso_local i32 @atomic_clear_mask(i32, i32*) #1

declare dso_local i32 @imxmci_finish_request(%struct.imxmci_host*, i64) #1

declare dso_local i32 @mmc_detect_change(i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

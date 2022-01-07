; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_sup.c_qla24xx_write_flash_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_sup.c_qla24xx_write_flash_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, %struct.TYPE_10__*, i64, i64 }
%struct.TYPE_10__ = type { i32 }

@OPTROM_BURST_DWORDS = common dso_local global i32 0, align 4
@OPTROM_BURST_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Unable to allocate memory for optrom burst write (%x KB).\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Unable to unprotect flash for update.\0A\00", align 1
@ql_dbg_user = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Unable to erase erase sector: address=%x.\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Unable to burst-write optrom segment (%x/%x/%llx).\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Reverting to slow-write.\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Unable to program flash address=%x data=%x.\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Unable to protect flash after update.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*, i32, i32)* @qla24xx_write_flash_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla24xx_write_flash_data(%struct.TYPE_11__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i8* null, i8** %15, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %18, align 8
  store %struct.qla_hw_data* %19, %struct.qla_hw_data** %16, align 8
  %20 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %21 = call i64 @IS_QLA25XX(%struct.qla_hw_data* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %4
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %25 = call i64 @IS_QLA81XX(%struct.qla_hw_data* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %29 = call i64 @IS_QLA83XX(%struct.qla_hw_data* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %27, %23, %4
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, 4095
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %56, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @OPTROM_BURST_DWORDS, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %35
  %40 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %41 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %40, i32 0, i32 1
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* @OPTROM_BURST_SIZE, align 4
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i8* @dma_alloc_coherent(i32* %43, i32 %44, i64* %14, i32 %45)
  store i8* %46, i8** %15, align 8
  %47 = load i8*, i8** %15, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %39
  %50 = load i32, i32* @ql_log_warn, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %52 = load i32, i32* @OPTROM_BURST_SIZE, align 4
  %53 = sdiv i32 %52, 1024
  %54 = call i32 (i32, %struct.TYPE_11__*, i32, i8*, ...) @ql_log(i32 %50, %struct.TYPE_11__* %51, i32 28821, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %49, %39
  br label %56

56:                                               ; preds = %55, %35, %31, %27
  %57 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %58 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = ashr i32 %59, 2
  %61 = sub nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = xor i32 %62, -1
  store i32 %63, i32* %11, align 4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %65 = call i32 @qla24xx_unprotect_flash(%struct.TYPE_11__* %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @QLA_SUCCESS, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %56
  %70 = load i32, i32* @ql_log_warn, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %72 = call i32 (i32, %struct.TYPE_11__*, i32, i8*, ...) @ql_log(i32 %70, %struct.TYPE_11__* %71, i32 28822, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %245

73:                                               ; preds = %56
  store i32 0, i32* %10, align 4
  br label %74

74:                                               ; preds = %227, %73
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %234

78:                                               ; preds = %74
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %11, align 4
  %81 = and i32 %79, %80
  %82 = shl i32 %81, 2
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %12, align 4
  %85 = and i32 %83, %84
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %121

87:                                               ; preds = %78
  %88 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %89 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %108

92:                                               ; preds = %87
  %93 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %94 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %95 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %13, align 4
  %98 = and i32 %97, 65280
  %99 = load i32, i32* %13, align 4
  %100 = shl i32 %99, 16
  %101 = and i32 %100, 16711680
  %102 = or i32 %98, %101
  %103 = load i32, i32* %13, align 4
  %104 = ashr i32 %103, 16
  %105 = and i32 %104, 255
  %106 = or i32 %102, %105
  %107 = call i32 @qla24xx_write_flash_dword(%struct.qla_hw_data* %93, i64 %96, i32 %106)
  br label %108

108:                                              ; preds = %92, %87
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %110 = load i32, i32* %13, align 4
  %111 = call i32 @qla24xx_erase_sector(%struct.TYPE_11__* %109, i32 %110)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @QLA_SUCCESS, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %108
  %116 = load i32, i32* @ql_dbg_user, align 4
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %118 = load i32, i32* %7, align 4
  %119 = call i32 (i32, %struct.TYPE_11__*, i32, i8*, i32, ...) @ql_dbg(i32 %116, %struct.TYPE_11__* %117, i32 28679, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  br label %234

120:                                              ; preds = %108
  br label %121

121:                                              ; preds = %120, %78
  %122 = load i8*, i8** %15, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %180

124:                                              ; preds = %121
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* @OPTROM_BURST_DWORDS, align 4
  %127 = add nsw i32 %125, %126
  %128 = load i32, i32* %8, align 4
  %129 = icmp sle i32 %127, %128
  br i1 %129, label %130, label %180

130:                                              ; preds = %124
  %131 = load i8*, i8** %15, align 8
  %132 = load i32*, i32** %6, align 8
  %133 = load i32, i32* @OPTROM_BURST_SIZE, align 4
  %134 = call i32 @memcpy(i8* %131, i32* %132, i32 %133)
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %136 = load i64, i64* %14, align 8
  %137 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %138 = load i32, i32* %7, align 4
  %139 = call i64 @flash_data_addr(%struct.qla_hw_data* %137, i32 %138)
  %140 = load i32, i32* @OPTROM_BURST_DWORDS, align 4
  %141 = call i32 @qla2x00_load_ram(%struct.TYPE_11__* %135, i64 %136, i64 %139, i32 %140)
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @QLA_SUCCESS, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %165

145:                                              ; preds = %130
  %146 = load i32, i32* @ql_log_warn, align 4
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %148 = load i32, i32* %9, align 4
  %149 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %150 = load i32, i32* %7, align 4
  %151 = call i64 @flash_data_addr(%struct.qla_hw_data* %149, i32 %150)
  %152 = load i64, i64* %14, align 8
  %153 = call i32 (i32, %struct.TYPE_11__*, i32, i8*, ...) @ql_log(i32 %146, %struct.TYPE_11__* %147, i32 28823, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %148, i64 %151, i64 %152)
  %154 = load i32, i32* @ql_log_warn, align 4
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %156 = call i32 (i32, %struct.TYPE_11__*, i32, i8*, ...) @ql_log(i32 %154, %struct.TYPE_11__* %155, i32 28824, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %157 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %158 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %157, i32 0, i32 1
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = load i32, i32* @OPTROM_BURST_SIZE, align 4
  %162 = load i8*, i8** %15, align 8
  %163 = load i64, i64* %14, align 8
  %164 = call i32 @dma_free_coherent(i32* %160, i32 %161, i8* %162, i64 %163)
  store i8* null, i8** %15, align 8
  br label %179

165:                                              ; preds = %130
  %166 = load i32, i32* @OPTROM_BURST_DWORDS, align 4
  %167 = sub nsw i32 %166, 1
  %168 = load i32, i32* %10, align 4
  %169 = add nsw i32 %168, %167
  store i32 %169, i32* %10, align 4
  %170 = load i32, i32* @OPTROM_BURST_DWORDS, align 4
  %171 = sub nsw i32 %170, 1
  %172 = load i32, i32* %7, align 4
  %173 = add nsw i32 %172, %171
  store i32 %173, i32* %7, align 4
  %174 = load i32, i32* @OPTROM_BURST_DWORDS, align 4
  %175 = sub nsw i32 %174, 1
  %176 = load i32*, i32** %6, align 8
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  store i32* %178, i32** %6, align 8
  br label %227

179:                                              ; preds = %145
  br label %180

180:                                              ; preds = %179, %124, %121
  %181 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %182 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %183 = load i32, i32* %7, align 4
  %184 = call i64 @flash_data_addr(%struct.qla_hw_data* %182, i32 %183)
  %185 = load i32*, i32** %6, align 8
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @cpu_to_le32(i32 %186)
  %188 = call i32 @qla24xx_write_flash_dword(%struct.qla_hw_data* %181, i64 %184, i32 %187)
  store i32 %188, i32* %9, align 4
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* @QLA_SUCCESS, align 4
  %191 = icmp ne i32 %189, %190
  br i1 %191, label %192, label %199

192:                                              ; preds = %180
  %193 = load i32, i32* @ql_dbg_user, align 4
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %195 = load i32, i32* %7, align 4
  %196 = load i32*, i32** %6, align 8
  %197 = load i32, i32* %196, align 4
  %198 = call i32 (i32, %struct.TYPE_11__*, i32, i8*, i32, ...) @ql_dbg(i32 %193, %struct.TYPE_11__* %194, i32 28678, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %195, i32 %197)
  br label %234

199:                                              ; preds = %180
  %200 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %201 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %226

204:                                              ; preds = %199
  %205 = load i32, i32* %7, align 4
  %206 = load i32, i32* %12, align 4
  %207 = and i32 %205, %206
  %208 = load i32, i32* %12, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %226

210:                                              ; preds = %204
  %211 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %212 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %213 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = load i32, i32* %13, align 4
  %216 = and i32 %215, 65280
  %217 = load i32, i32* %13, align 4
  %218 = shl i32 %217, 16
  %219 = and i32 %218, 16711680
  %220 = or i32 %216, %219
  %221 = load i32, i32* %13, align 4
  %222 = ashr i32 %221, 16
  %223 = and i32 %222, 255
  %224 = or i32 %220, %223
  %225 = call i32 @qla24xx_write_flash_dword(%struct.qla_hw_data* %211, i64 %214, i32 %224)
  br label %226

226:                                              ; preds = %210, %204, %199
  br label %227

227:                                              ; preds = %226, %165
  %228 = load i32, i32* %10, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %10, align 4
  %230 = load i32, i32* %7, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %7, align 4
  %232 = load i32*, i32** %6, align 8
  %233 = getelementptr inbounds i32, i32* %232, i32 1
  store i32* %233, i32** %6, align 8
  br label %74

234:                                              ; preds = %192, %115, %74
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %236 = call i32 @qla24xx_protect_flash(%struct.TYPE_11__* %235)
  store i32 %236, i32* %9, align 4
  %237 = load i32, i32* %9, align 4
  %238 = load i32, i32* @QLA_SUCCESS, align 4
  %239 = icmp ne i32 %237, %238
  br i1 %239, label %240, label %244

240:                                              ; preds = %234
  %241 = load i32, i32* @ql_log_warn, align 4
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %243 = call i32 (i32, %struct.TYPE_11__*, i32, i8*, ...) @ql_log(i32 %241, %struct.TYPE_11__* %242, i32 28825, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  br label %244

244:                                              ; preds = %240, %234
  br label %245

245:                                              ; preds = %244, %69
  %246 = load i8*, i8** %15, align 8
  %247 = icmp ne i8* %246, null
  br i1 %247, label %248, label %257

248:                                              ; preds = %245
  %249 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  %250 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %249, i32 0, i32 1
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 0
  %253 = load i32, i32* @OPTROM_BURST_SIZE, align 4
  %254 = load i8*, i8** %15, align 8
  %255 = load i64, i64* %14, align 8
  %256 = call i32 @dma_free_coherent(i32* %252, i32 %253, i8* %254, i64 %255)
  br label %257

257:                                              ; preds = %248, %245
  %258 = load i32, i32* %9, align 4
  ret i32 %258
}

declare dso_local i64 @IS_QLA25XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA81XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA83XX(%struct.qla_hw_data*) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_11__*, i32, i8*, ...) #1

declare dso_local i32 @qla24xx_unprotect_flash(%struct.TYPE_11__*) #1

declare dso_local i32 @qla24xx_write_flash_dword(%struct.qla_hw_data*, i64, i32) #1

declare dso_local i32 @qla24xx_erase_sector(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_11__*, i32, i8*, i32, ...) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @qla2x00_load_ram(%struct.TYPE_11__*, i64, i64, i32) #1

declare dso_local i64 @flash_data_addr(%struct.qla_hw_data*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @qla24xx_protect_flash(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

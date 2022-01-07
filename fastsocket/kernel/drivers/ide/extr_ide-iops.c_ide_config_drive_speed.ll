; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-iops.c_ide_config_drive_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-iops.c_ide_config_drive_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32*, i32, i32, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__*, %struct.ide_tp_ops* }
%struct.TYPE_16__ = type { {}* }
%struct.ide_tp_ops = type { i32 (%struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_18__*, %struct.ide_taskfile*, i32)*, i32 (%struct.TYPE_18__*)* }
%struct.ide_taskfile = type opaque
%struct.ide_taskfile.0 = type { i32, i32 }

@XFER_PIO_0 = common dso_local global i32 0, align 4
@ATA_NIEN = common dso_local global i32 0, align 4
@ATA_DEVCTL_OBS = common dso_local global i32 0, align 4
@SETFEATURES_XFER = common dso_local global i32 0, align 4
@IDE_VALID_FEATURE = common dso_local global i32 0, align 4
@IDE_VALID_NSECT = common dso_local global i32 0, align 4
@ATA_CMD_SET_FEATURES = common dso_local global i32 0, align 4
@IDE_DFLAG_NIEN_QUIRK = common dso_local global i32 0, align 4
@ATA_BUSY = common dso_local global i32 0, align 4
@ATA_DRQ = common dso_local global i32 0, align 4
@ATA_ERR = common dso_local global i32 0, align 4
@WAIT_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"set_drive_speed_status\00", align 1
@XFER_SW_DMA_0 = common dso_local global i32 0, align 4
@ATA_ID_UDMA_MODES = common dso_local global i64 0, align 8
@ATA_ID_MWDMA_MODES = common dso_local global i64 0, align 8
@ATA_ID_SWDMA_MODES = common dso_local global i64 0, align 8
@ATA_ID_CFA_MODES = common dso_local global i64 0, align 8
@XFER_UDMA_0 = common dso_local global i32 0, align 4
@XFER_MW_DMA_3 = common dso_local global i32 0, align 4
@XFER_MW_DMA_2 = common dso_local global i32 0, align 4
@XFER_MW_DMA_0 = common dso_local global i32 0, align 4
@XFER_PIO_5 = common dso_local global i32 0, align 4
@XFER_PIO_4 = common dso_local global i32 0, align 4
@IDE_DFLAG_USING_DMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_config_drive_speed(%struct.TYPE_18__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.ide_tp_ops*, align 8
  %8 = alloca %struct.ide_taskfile.0, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 5
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %6, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  %18 = load %struct.ide_tp_ops*, %struct.ide_tp_ops** %17, align 8
  store %struct.ide_tp_ops* %18, %struct.ide_tp_ops** %7, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 248
  %24 = load i32, i32* @XFER_PIO_0, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i64 @ata_id_has_iordy(i32* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %147

33:                                               ; preds = %26, %2
  %34 = call i32 @udelay(i32 1)
  %35 = load %struct.ide_tp_ops*, %struct.ide_tp_ops** %7, align 8
  %36 = getelementptr inbounds %struct.ide_tp_ops, %struct.ide_tp_ops* %35, i32 0, i32 3
  %37 = load i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*)** %36, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %39 = call i32 %37(%struct.TYPE_18__* %38)
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %41 = call i32 @SELECT_MASK(%struct.TYPE_18__* %40, i32 1)
  %42 = call i32 @udelay(i32 1)
  %43 = load %struct.ide_tp_ops*, %struct.ide_tp_ops** %7, align 8
  %44 = getelementptr inbounds %struct.ide_tp_ops, %struct.ide_tp_ops* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_17__*, i32)** %44, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %47 = load i32, i32* @ATA_NIEN, align 4
  %48 = load i32, i32* @ATA_DEVCTL_OBS, align 4
  %49 = or i32 %47, %48
  %50 = call i32 %45(%struct.TYPE_17__* %46, i32 %49)
  %51 = call i32 @memset(%struct.ide_taskfile.0* %8, i32 0, i32 8)
  %52 = load i32, i32* @SETFEATURES_XFER, align 4
  %53 = getelementptr inbounds %struct.ide_taskfile.0, %struct.ide_taskfile.0* %8, i32 0, i32 1
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* %5, align 4
  %55 = getelementptr inbounds %struct.ide_taskfile.0, %struct.ide_taskfile.0* %8, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = load %struct.ide_tp_ops*, %struct.ide_tp_ops** %7, align 8
  %57 = getelementptr inbounds %struct.ide_tp_ops, %struct.ide_tp_ops* %56, i32 0, i32 2
  %58 = load i32 (%struct.TYPE_18__*, %struct.ide_taskfile*, i32)*, i32 (%struct.TYPE_18__*, %struct.ide_taskfile*, i32)** %57, align 8
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %60 = bitcast %struct.ide_taskfile.0* %8 to %struct.ide_taskfile*
  %61 = load i32, i32* @IDE_VALID_FEATURE, align 4
  %62 = load i32, i32* @IDE_VALID_NSECT, align 4
  %63 = or i32 %61, %62
  %64 = call i32 %58(%struct.TYPE_18__* %59, %struct.ide_taskfile* %60, i32 %63)
  %65 = load %struct.ide_tp_ops*, %struct.ide_tp_ops** %7, align 8
  %66 = getelementptr inbounds %struct.ide_tp_ops, %struct.ide_tp_ops* %65, i32 0, i32 1
  %67 = load i32 (%struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_17__*, i32)** %66, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %69 = load i32, i32* @ATA_CMD_SET_FEATURES, align 4
  %70 = call i32 %67(%struct.TYPE_17__* %68, i32 %69)
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @IDE_DFLAG_NIEN_QUIRK, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %33
  %78 = load %struct.ide_tp_ops*, %struct.ide_tp_ops** %7, align 8
  %79 = getelementptr inbounds %struct.ide_tp_ops, %struct.ide_tp_ops* %78, i32 0, i32 0
  %80 = load i32 (%struct.TYPE_17__*, i32)*, i32 (%struct.TYPE_17__*, i32)** %79, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %82 = load i32, i32* @ATA_DEVCTL_OBS, align 4
  %83 = call i32 %80(%struct.TYPE_17__* %81, i32 %82)
  br label %84

84:                                               ; preds = %77, %33
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @ATA_BUSY, align 4
  %90 = load i32, i32* @ATA_DRQ, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @ATA_ERR, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @WAIT_CMD, align 4
  %95 = call i32 @__ide_wait_stat(%struct.TYPE_18__* %85, i32 %88, i32 %93, i32 %94, i32* %12)
  store i32 %95, i32* %11, align 4
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %97 = call i32 @SELECT_MASK(%struct.TYPE_18__* %96, i32 0)
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %84
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @ide_dump_status(%struct.TYPE_18__* %101, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %3, align 4
  br label %257

105:                                              ; preds = %84
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @XFER_SW_DMA_0, align 4
  %108 = icmp sge i32 %106, %107
  br i1 %108, label %109, label %135

109:                                              ; preds = %105
  %110 = load i32*, i32** %9, align 8
  %111 = load i64, i64* @ATA_ID_UDMA_MODES, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, -65281
  store i32 %114, i32* %112, align 4
  %115 = load i32*, i32** %9, align 8
  %116 = load i64, i64* @ATA_ID_MWDMA_MODES, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, -1793
  store i32 %119, i32* %117, align 4
  %120 = load i32*, i32** %9, align 8
  %121 = load i64, i64* @ATA_ID_SWDMA_MODES, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, -1793
  store i32 %124, i32* %122, align 4
  %125 = load i32*, i32** %9, align 8
  %126 = call i64 @ata_id_is_cfa(i32* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %109
  %129 = load i32*, i32** %9, align 8
  %130 = load i64, i64* @ATA_ID_CFA_MODES, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, -3585
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %128, %109
  br label %146

135:                                              ; preds = %105
  %136 = load i32*, i32** %9, align 8
  %137 = call i64 @ata_id_is_cfa(i32* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %135
  %140 = load i32*, i32** %9, align 8
  %141 = load i64, i64* @ATA_ID_CFA_MODES, align 8
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, -449
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %139, %135
  br label %146

146:                                              ; preds = %145, %134
  br label %147

147:                                              ; preds = %146, %32
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* @XFER_UDMA_0, align 4
  %150 = icmp sge i32 %148, %149
  br i1 %150, label %151, label %165

151:                                              ; preds = %147
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* @XFER_UDMA_0, align 4
  %154 = sub nsw i32 %152, %153
  %155 = shl i32 1, %154
  store i32 %155, i32* %10, align 4
  %156 = load i32, i32* %10, align 4
  %157 = shl i32 %156, 8
  %158 = load i32, i32* %10, align 4
  %159 = or i32 %157, %158
  %160 = load i32*, i32** %9, align 8
  %161 = load i64, i64* @ATA_ID_UDMA_MODES, align 8
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %159
  store i32 %164, i32* %162, align 4
  br label %243

165:                                              ; preds = %147
  %166 = load i32*, i32** %9, align 8
  %167 = call i64 @ata_id_is_cfa(i32* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %184

169:                                              ; preds = %165
  %170 = load i32, i32* %5, align 4
  %171 = load i32, i32* @XFER_MW_DMA_3, align 4
  %172 = icmp sge i32 %170, %171
  br i1 %172, label %173, label %184

173:                                              ; preds = %169
  %174 = load i32, i32* %5, align 4
  %175 = load i32, i32* @XFER_MW_DMA_2, align 4
  %176 = sub nsw i32 %174, %175
  store i32 %176, i32* %10, align 4
  %177 = load i32, i32* %10, align 4
  %178 = shl i32 %177, 9
  %179 = load i32*, i32** %9, align 8
  %180 = load i64, i64* @ATA_ID_CFA_MODES, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %182, %178
  store i32 %183, i32* %181, align 4
  br label %242

184:                                              ; preds = %169, %165
  %185 = load i32, i32* %5, align 4
  %186 = load i32, i32* @XFER_MW_DMA_0, align 4
  %187 = icmp sge i32 %185, %186
  br i1 %187, label %188, label %202

188:                                              ; preds = %184
  %189 = load i32, i32* %5, align 4
  %190 = load i32, i32* @XFER_MW_DMA_0, align 4
  %191 = sub nsw i32 %189, %190
  %192 = shl i32 1, %191
  store i32 %192, i32* %10, align 4
  %193 = load i32, i32* %10, align 4
  %194 = shl i32 %193, 8
  %195 = load i32, i32* %10, align 4
  %196 = or i32 %194, %195
  %197 = load i32*, i32** %9, align 8
  %198 = load i64, i64* @ATA_ID_MWDMA_MODES, align 8
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = or i32 %200, %196
  store i32 %201, i32* %199, align 4
  br label %241

202:                                              ; preds = %184
  %203 = load i32, i32* %5, align 4
  %204 = load i32, i32* @XFER_SW_DMA_0, align 4
  %205 = icmp sge i32 %203, %204
  br i1 %205, label %206, label %220

206:                                              ; preds = %202
  %207 = load i32, i32* %5, align 4
  %208 = load i32, i32* @XFER_SW_DMA_0, align 4
  %209 = sub nsw i32 %207, %208
  %210 = shl i32 1, %209
  store i32 %210, i32* %10, align 4
  %211 = load i32, i32* %10, align 4
  %212 = shl i32 %211, 8
  %213 = load i32, i32* %10, align 4
  %214 = or i32 %212, %213
  %215 = load i32*, i32** %9, align 8
  %216 = load i64, i64* @ATA_ID_SWDMA_MODES, align 8
  %217 = getelementptr inbounds i32, i32* %215, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = or i32 %218, %214
  store i32 %219, i32* %217, align 4
  br label %240

220:                                              ; preds = %202
  %221 = load i32*, i32** %9, align 8
  %222 = call i64 @ata_id_is_cfa(i32* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %239

224:                                              ; preds = %220
  %225 = load i32, i32* %5, align 4
  %226 = load i32, i32* @XFER_PIO_5, align 4
  %227 = icmp sge i32 %225, %226
  br i1 %227, label %228, label %239

228:                                              ; preds = %224
  %229 = load i32, i32* %5, align 4
  %230 = load i32, i32* @XFER_PIO_4, align 4
  %231 = sub nsw i32 %229, %230
  store i32 %231, i32* %10, align 4
  %232 = load i32, i32* %10, align 4
  %233 = shl i32 %232, 6
  %234 = load i32*, i32** %9, align 8
  %235 = load i64, i64* @ATA_ID_CFA_MODES, align 8
  %236 = getelementptr inbounds i32, i32* %234, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = or i32 %237, %233
  store i32 %238, i32* %236, align 4
  br label %239

239:                                              ; preds = %228, %224, %220
  br label %240

240:                                              ; preds = %239, %206
  br label %241

241:                                              ; preds = %240, %188
  br label %242

242:                                              ; preds = %241, %173
  br label %243

243:                                              ; preds = %242, %151
  %244 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %252, label %248

248:                                              ; preds = %243
  %249 = load i32, i32* %5, align 4
  %250 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %250, i32 0, i32 2
  store i32 %249, i32* %251, align 4
  br label %252

252:                                              ; preds = %248, %243
  %253 = load i32, i32* %5, align 4
  %254 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %254, i32 0, i32 3
  store i32 %253, i32* %255, align 8
  %256 = load i32, i32* %11, align 4
  store i32 %256, i32* %3, align 4
  br label %257

257:                                              ; preds = %252, %100
  %258 = load i32, i32* %3, align 4
  ret i32 %258
}

declare dso_local i64 @ata_id_has_iordy(i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @SELECT_MASK(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @memset(%struct.ide_taskfile.0*, i32, i32) #1

declare dso_local i32 @__ide_wait_stat(%struct.TYPE_18__*, i32, i32, i32, i32*) #1

declare dso_local i32 @ide_dump_status(%struct.TYPE_18__*, i8*, i32) #1

declare dso_local i64 @ata_id_is_cfa(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

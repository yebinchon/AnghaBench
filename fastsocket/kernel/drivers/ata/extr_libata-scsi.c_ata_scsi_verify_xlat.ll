; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_scsi_verify_xlat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_scsi_verify_xlat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.ata_device*, %struct.ata_taskfile, %struct.scsi_cmnd* }
%struct.ata_device = type { i64, i32, i64, i64 }
%struct.ata_taskfile = type { i32, i64, i64, i64, i64, i64, i8*, i64, i64, i64, i64, i32 }
%struct.scsi_cmnd = type { i64*, i32, i32 }

@ATA_TFLAG_ISADDR = common dso_local global i32 0, align 4
@ATA_TFLAG_DEVICE = common dso_local global i32 0, align 4
@ATA_PROT_NODATA = common dso_local global i32 0, align 4
@VERIFY = common dso_local global i64 0, align 8
@VERIFY_16 = common dso_local global i64 0, align 8
@ATA_DFLAG_LBA = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA = common dso_local global i32 0, align 4
@ATA_CMD_VERIFY = common dso_local global i8* null, align 8
@ATA_DFLAG_LBA48 = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA48 = common dso_local global i32 0, align 4
@ATA_CMD_VERIFY_EXT = common dso_local global i8* null, align 8
@ATA_LBA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"block %u track %u cyl %u head %u sect %u\0A\00", align 1
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SAM_STAT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*)* @ata_scsi_verify_xlat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_scsi_verify_xlat(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_queued_cmd*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.ata_taskfile*, align 8
  %6 = alloca %struct.ata_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %3, align 8
  %15 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %16 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %15, i32 0, i32 2
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %16, align 8
  store %struct.scsi_cmnd* %17, %struct.scsi_cmnd** %4, align 8
  %18 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %19 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %18, i32 0, i32 1
  store %struct.ata_taskfile* %19, %struct.ata_taskfile** %5, align 8
  %20 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %21 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %20, i32 0, i32 0
  %22 = load %struct.ata_device*, %struct.ata_device** %21, align 8
  store %struct.ata_device* %22, %struct.ata_device** %6, align 8
  %23 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %24 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %23, i32 0, i32 0
  %25 = load %struct.ata_device*, %struct.ata_device** %24, align 8
  %26 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %7, align 8
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %29 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  store i64* %30, i64** %8, align 8
  %31 = load i32, i32* @ATA_TFLAG_ISADDR, align 4
  %32 = load i32, i32* @ATA_TFLAG_DEVICE, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %35 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load i32, i32* @ATA_PROT_NODATA, align 4
  %39 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %40 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %39, i32 0, i32 11
  store i32 %38, i32* %40, align 8
  %41 = load i64*, i64** %8, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @VERIFY, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %1
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %48 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %49, 10
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %257

52:                                               ; preds = %46
  %53 = load i64*, i64** %8, align 8
  %54 = call i32 @scsi_10_lba_len(i64* %53, i64* %9, i64* %10)
  br label %72

55:                                               ; preds = %1
  %56 = load i64*, i64** %8, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @VERIFY_16, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %63 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %64, 16
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %257

67:                                               ; preds = %61
  %68 = load i64*, i64** %8, align 8
  %69 = call i32 @scsi_16_lba_len(i64* %68, i64* %9, i64* %10)
  br label %71

70:                                               ; preds = %55
  br label %257

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %71, %52
  %73 = load i64, i64* %10, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  br label %265

76:                                               ; preds = %72
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* %7, align 8
  %79 = icmp sge i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %261

81:                                               ; preds = %76
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* %10, align 8
  %84 = add nsw i64 %82, %83
  %85 = load i64, i64* %7, align 8
  %86 = icmp sgt i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %261

88:                                               ; preds = %81
  %89 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %90 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @ATA_DFLAG_LBA, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %184

95:                                               ; preds = %88
  %96 = load i32, i32* @ATA_TFLAG_LBA, align 4
  %97 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %98 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load i64, i64* %9, align 8
  %102 = load i64, i64* %10, align 8
  %103 = call i64 @lba_28_ok(i64 %101, i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %95
  %106 = load i8*, i8** @ATA_CMD_VERIFY, align 8
  %107 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %108 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %107, i32 0, i32 6
  store i8* %106, i8** %108, align 8
  %109 = load i64, i64* %9, align 8
  %110 = ashr i64 %109, 24
  %111 = and i64 %110, 15
  %112 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %113 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = or i64 %114, %111
  store i64 %115, i64* %113, align 8
  br label %160

116:                                              ; preds = %95
  %117 = load i64, i64* %9, align 8
  %118 = load i64, i64* %10, align 8
  %119 = call i64 @lba_48_ok(i64 %117, i64 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %158

121:                                              ; preds = %116
  %122 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %123 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @ATA_DFLAG_LBA48, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %121
  br label %261

129:                                              ; preds = %121
  %130 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %131 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %132 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 8
  %135 = load i8*, i8** @ATA_CMD_VERIFY_EXT, align 8
  %136 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %137 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %136, i32 0, i32 6
  store i8* %135, i8** %137, align 8
  %138 = load i64, i64* %10, align 8
  %139 = ashr i64 %138, 8
  %140 = and i64 %139, 255
  %141 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %142 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %141, i32 0, i32 10
  store i64 %140, i64* %142, align 8
  %143 = load i64, i64* %9, align 8
  %144 = ashr i64 %143, 40
  %145 = and i64 %144, 255
  %146 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %147 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %146, i32 0, i32 9
  store i64 %145, i64* %147, align 8
  %148 = load i64, i64* %9, align 8
  %149 = ashr i64 %148, 32
  %150 = and i64 %149, 255
  %151 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %152 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %151, i32 0, i32 8
  store i64 %150, i64* %152, align 8
  %153 = load i64, i64* %9, align 8
  %154 = ashr i64 %153, 24
  %155 = and i64 %154, 255
  %156 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %157 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %156, i32 0, i32 7
  store i64 %155, i64* %157, align 8
  br label %159

158:                                              ; preds = %116
  br label %261

159:                                              ; preds = %129
  br label %160

160:                                              ; preds = %159, %105
  %161 = load i64, i64* %10, align 8
  %162 = and i64 %161, 255
  %163 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %164 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %163, i32 0, i32 5
  store i64 %162, i64* %164, align 8
  %165 = load i64, i64* %9, align 8
  %166 = ashr i64 %165, 16
  %167 = and i64 %166, 255
  %168 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %169 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %168, i32 0, i32 2
  store i64 %167, i64* %169, align 8
  %170 = load i64, i64* %9, align 8
  %171 = ashr i64 %170, 8
  %172 = and i64 %171, 255
  %173 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %174 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %173, i32 0, i32 3
  store i64 %172, i64* %174, align 8
  %175 = load i64, i64* %9, align 8
  %176 = and i64 %175, 255
  %177 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %178 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %177, i32 0, i32 4
  store i64 %176, i64* %178, align 8
  %179 = load i64, i64* @ATA_LBA, align 8
  %180 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %181 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = or i64 %182, %179
  store i64 %183, i64* %181, align 8
  br label %256

184:                                              ; preds = %88
  %185 = load i64, i64* %9, align 8
  %186 = load i64, i64* %10, align 8
  %187 = call i64 @lba_28_ok(i64 %185, i64 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %184
  br label %261

190:                                              ; preds = %184
  %191 = load i64, i64* %9, align 8
  %192 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %193 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = sdiv i64 %191, %194
  store i64 %195, i64* %14, align 8
  %196 = load i64, i64* %14, align 8
  %197 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %198 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %197, i32 0, i32 3
  %199 = load i64, i64* %198, align 8
  %200 = sdiv i64 %196, %199
  store i64 %200, i64* %13, align 8
  %201 = load i64, i64* %14, align 8
  %202 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %203 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = srem i64 %201, %204
  store i64 %205, i64* %12, align 8
  %206 = load i64, i64* %9, align 8
  %207 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %208 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = srem i64 %206, %209
  %211 = add nsw i64 %210, 1
  store i64 %211, i64* %11, align 8
  %212 = load i64, i64* %9, align 8
  %213 = load i64, i64* %14, align 8
  %214 = load i64, i64* %13, align 8
  %215 = load i64, i64* %12, align 8
  %216 = load i64, i64* %11, align 8
  %217 = call i32 @DPRINTK(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %212, i64 %213, i64 %214, i64 %215, i64 %216)
  %218 = load i64, i64* %13, align 8
  %219 = ashr i64 %218, 16
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %232, label %221

221:                                              ; preds = %190
  %222 = load i64, i64* %12, align 8
  %223 = ashr i64 %222, 4
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %232, label %225

225:                                              ; preds = %221
  %226 = load i64, i64* %11, align 8
  %227 = ashr i64 %226, 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %232, label %229

229:                                              ; preds = %225
  %230 = load i64, i64* %11, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %233, label %232

232:                                              ; preds = %229, %225, %221, %190
  br label %261

233:                                              ; preds = %229
  %234 = load i8*, i8** @ATA_CMD_VERIFY, align 8
  %235 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %236 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %235, i32 0, i32 6
  store i8* %234, i8** %236, align 8
  %237 = load i64, i64* %10, align 8
  %238 = and i64 %237, 255
  %239 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %240 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %239, i32 0, i32 5
  store i64 %238, i64* %240, align 8
  %241 = load i64, i64* %11, align 8
  %242 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %243 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %242, i32 0, i32 4
  store i64 %241, i64* %243, align 8
  %244 = load i64, i64* %13, align 8
  %245 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %246 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %245, i32 0, i32 3
  store i64 %244, i64* %246, align 8
  %247 = load i64, i64* %13, align 8
  %248 = ashr i64 %247, 8
  %249 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %250 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %249, i32 0, i32 2
  store i64 %248, i64* %250, align 8
  %251 = load i64, i64* %12, align 8
  %252 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %253 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = or i64 %254, %251
  store i64 %255, i64* %253, align 8
  br label %256

256:                                              ; preds = %233, %160
  store i32 0, i32* %2, align 4
  br label %269

257:                                              ; preds = %70, %66, %51
  %258 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %259 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %260 = call i32 @ata_scsi_set_sense(%struct.scsi_cmnd* %258, i32 %259, i32 36, i32 0)
  store i32 1, i32* %2, align 4
  br label %269

261:                                              ; preds = %232, %189, %158, %128, %87, %80
  %262 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %263 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %264 = call i32 @ata_scsi_set_sense(%struct.scsi_cmnd* %262, i32 %263, i32 33, i32 0)
  store i32 1, i32* %2, align 4
  br label %269

265:                                              ; preds = %75
  %266 = load i32, i32* @SAM_STAT_GOOD, align 4
  %267 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %268 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %267, i32 0, i32 2
  store i32 %266, i32* %268, align 4
  store i32 1, i32* %2, align 4
  br label %269

269:                                              ; preds = %265, %261, %257, %256
  %270 = load i32, i32* %2, align 4
  ret i32 %270
}

declare dso_local i32 @scsi_10_lba_len(i64*, i64*, i64*) #1

declare dso_local i32 @scsi_16_lba_len(i64*, i64*, i64*) #1

declare dso_local i64 @lba_28_ok(i64, i64) #1

declare dso_local i64 @lba_48_ok(i64, i64) #1

declare dso_local i32 @DPRINTK(i8*, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ata_scsi_set_sense(%struct.scsi_cmnd*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

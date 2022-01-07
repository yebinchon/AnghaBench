; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_scsi_pass_thru.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_scsi_pass_thru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i32, i32, %struct.ata_device*, %struct.scsi_cmnd*, %struct.ata_taskfile }
%struct.ata_device = type { i64, i32, i64 }
%struct.scsi_cmnd = type { i32*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_taskfile = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ATA_PROT_UNKNOWN = common dso_local global i64 0, align 8
@ATA_16 = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA48 = common dso_local global i32 0, align 4
@ATA_DEV1 = common dso_local global i32 0, align 4
@ATA_PROT_PIO = common dso_local global i64 0, align 8
@ATA_SECT_SIZE = common dso_local global i32 0, align 4
@ATA_TFLAG_ISADDR = common dso_local global i32 0, align 4
@ATA_TFLAG_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@ATA_TFLAG_WRITE = common dso_local global i32 0, align 4
@ATA_QCFLAG_RESULT_TF = common dso_local global i32 0, align 4
@ATA_QCFLAG_QUIET = common dso_local global i32 0, align 4
@ATA_PROT_DMA = common dso_local global i64 0, align 8
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"invalid multi_count %u ignored\0A\00", align 1
@ATA_CMD_SET_FEATURES = common dso_local global i32 0, align 4
@SETFEATURES_XFER = common dso_local global i32 0, align 4
@libata_allow_tpm = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*)* @ata_scsi_pass_thru to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_scsi_pass_thru(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_queued_cmd*, align 8
  %4 = alloca %struct.ata_taskfile*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.ata_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %3, align 8
  %9 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %10 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %9, i32 0, i32 4
  store %struct.ata_taskfile* %10, %struct.ata_taskfile** %4, align 8
  %11 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %12 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %11, i32 0, i32 3
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  store %struct.scsi_cmnd* %13, %struct.scsi_cmnd** %5, align 8
  %14 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %15 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %14, i32 0, i32 2
  %16 = load %struct.ata_device*, %struct.ata_device** %15, align 8
  store %struct.ata_device* %16, %struct.ata_device** %6, align 8
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %18 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @ata_scsi_map_proto(i32 %22)
  %24 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %25 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load i64, i64* @ATA_PROT_UNKNOWN, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %311

29:                                               ; preds = %1
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ATA_16, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %115

35:                                               ; preds = %29
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %72

41:                                               ; preds = %35
  %42 = load i32*, i32** %7, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %46 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 5
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %51 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 7
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %56 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 9
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %61 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 11
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %66 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %68 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %69 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %79

72:                                               ; preds = %35
  %73 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %76 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %72, %41
  %80 = load i32*, i32** %7, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 4
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %84 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %83, i32 0, i32 7
  store i32 %82, i32* %84, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 6
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %89 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %88, i32 0, i32 8
  store i32 %87, i32* %89, align 4
  %90 = load i32*, i32** %7, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 8
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %94 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %93, i32 0, i32 9
  store i32 %92, i32* %94, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 10
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %99 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %98, i32 0, i32 10
  store i32 %97, i32* %99, align 4
  %100 = load i32*, i32** %7, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 12
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %104 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %103, i32 0, i32 11
  store i32 %102, i32* %104, align 8
  %105 = load i32*, i32** %7, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 13
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %109 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %108, i32 0, i32 12
  store i32 %107, i32* %109, align 4
  %110 = load i32*, i32** %7, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 14
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %114 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %113, i32 0, i32 13
  store i32 %112, i32* %114, align 8
  br label %157

115:                                              ; preds = %29
  %116 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %117 = xor i32 %116, -1
  %118 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %119 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, %117
  store i32 %121, i32* %119, align 4
  %122 = load i32*, i32** %7, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 3
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %126 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %125, i32 0, i32 7
  store i32 %124, i32* %126, align 8
  %127 = load i32*, i32** %7, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 4
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %131 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %130, i32 0, i32 8
  store i32 %129, i32* %131, align 4
  %132 = load i32*, i32** %7, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 5
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %136 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %135, i32 0, i32 9
  store i32 %134, i32* %136, align 8
  %137 = load i32*, i32** %7, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 6
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %141 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %140, i32 0, i32 10
  store i32 %139, i32* %141, align 4
  %142 = load i32*, i32** %7, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 7
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %146 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %145, i32 0, i32 11
  store i32 %144, i32* %146, align 8
  %147 = load i32*, i32** %7, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 8
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %151 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %150, i32 0, i32 12
  store i32 %149, i32* %151, align 4
  %152 = load i32*, i32** %7, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 9
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %156 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %155, i32 0, i32 13
  store i32 %154, i32* %156, align 8
  br label %157

157:                                              ; preds = %115, %79
  %158 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %159 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %157
  %163 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %164 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %163, i32 0, i32 12
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @ATA_DEV1, align 4
  %167 = or i32 %165, %166
  br label %175

168:                                              ; preds = %157
  %169 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %170 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %169, i32 0, i32 12
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @ATA_DEV1, align 4
  %173 = xor i32 %172, -1
  %174 = and i32 %171, %173
  br label %175

175:                                              ; preds = %168, %162
  %176 = phi i32 [ %167, %162 ], [ %174, %168 ]
  %177 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %178 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %177, i32 0, i32 12
  store i32 %176, i32* %178, align 4
  %179 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %180 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %179, i32 0, i32 13
  %181 = load i32, i32* %180, align 8
  switch i32 %181, label %207 [
    i32 148, label %182
    i32 147, label %182
    i32 136, label %182
    i32 135, label %182
    i32 157, label %199
    i32 159, label %199
    i32 158, label %199
    i32 150, label %199
    i32 149, label %199
    i32 144, label %199
    i32 156, label %199
    i32 146, label %199
    i32 145, label %199
    i32 154, label %199
    i32 153, label %199
    i32 143, label %199
    i32 142, label %199
    i32 141, label %199
    i32 140, label %199
    i32 139, label %199
    i32 138, label %199
    i32 137, label %199
    i32 131, label %199
    i32 130, label %199
    i32 155, label %199
    i32 134, label %199
    i32 133, label %199
    i32 132, label %199
    i32 152, label %199
    i32 151, label %199
    i32 129, label %199
    i32 128, label %199
  ]

182:                                              ; preds = %175, %175, %175, %175
  %183 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %184 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @ATA_PROT_PIO, align 8
  %187 = icmp ne i64 %185, %186
  br i1 %187, label %193, label %188

188:                                              ; preds = %182
  %189 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %190 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %189, i32 0, i32 8
  %191 = load i32, i32* %190, align 4
  %192 = icmp ne i32 %191, 1
  br i1 %192, label %193, label %194

193:                                              ; preds = %188, %182
  br label %311

194:                                              ; preds = %188
  %195 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %196 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %195)
  %197 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %198 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %197, i32 0, i32 1
  store i32 %196, i32* %198, align 4
  br label %211

199:                                              ; preds = %175, %175, %175, %175, %175, %175, %175, %175, %175, %175, %175, %175, %175, %175, %175, %175, %175, %175, %175, %175, %175, %175, %175, %175, %175, %175, %175, %175
  %200 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %201 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %200, i32 0, i32 2
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %206 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %205, i32 0, i32 1
  store i32 %204, i32* %206, align 4
  br label %211

207:                                              ; preds = %175
  %208 = load i32, i32* @ATA_SECT_SIZE, align 4
  %209 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %210 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %209, i32 0, i32 1
  store i32 %208, i32* %210, align 4
  br label %211

211:                                              ; preds = %207, %199, %194
  %212 = load i32, i32* @ATA_TFLAG_ISADDR, align 4
  %213 = load i32, i32* @ATA_TFLAG_DEVICE, align 4
  %214 = or i32 %212, %213
  %215 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %216 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %215, i32 0, i32 6
  %217 = load i32, i32* %216, align 4
  %218 = or i32 %217, %214
  store i32 %218, i32* %216, align 4
  %219 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %220 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @DMA_TO_DEVICE, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %230

224:                                              ; preds = %211
  %225 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %226 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %227 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %226, i32 0, i32 6
  %228 = load i32, i32* %227, align 4
  %229 = or i32 %228, %225
  store i32 %229, i32* %227, align 4
  br label %230

230:                                              ; preds = %224, %211
  %231 = load i32, i32* @ATA_QCFLAG_RESULT_TF, align 4
  %232 = load i32, i32* @ATA_QCFLAG_QUIET, align 4
  %233 = or i32 %231, %232
  %234 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %235 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = or i32 %236, %233
  store i32 %237, i32* %235, align 8
  %238 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %239 = call i32 @ata_qc_set_pc_nbytes(%struct.ata_queued_cmd* %238)
  %240 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %241 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @ATA_PROT_DMA, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %251

245:                                              ; preds = %230
  %246 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %247 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %245
  br label %311

251:                                              ; preds = %245, %230
  %252 = load i32*, i32** %7, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 1
  %254 = load i32, i32* %253, align 4
  %255 = and i32 %254, 224
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %262

257:                                              ; preds = %251
  %258 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %259 = call i64 @is_multi_taskfile(%struct.ata_taskfile* %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %262, label %261

261:                                              ; preds = %257
  br label %311

262:                                              ; preds = %257, %251
  %263 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %264 = call i64 @is_multi_taskfile(%struct.ata_taskfile* %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %283

266:                                              ; preds = %262
  %267 = load i32*, i32** %7, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 1
  %269 = load i32, i32* %268, align 4
  %270 = ashr i32 %269, 5
  %271 = shl i32 1, %270
  store i32 %271, i32* %8, align 4
  %272 = load i32, i32* %8, align 4
  %273 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %274 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 8
  %276 = icmp ne i32 %272, %275
  br i1 %276, label %277, label %282

277:                                              ; preds = %266
  %278 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %279 = load i32, i32* @KERN_WARNING, align 4
  %280 = load i32, i32* %8, align 4
  %281 = call i32 @ata_dev_printk(%struct.ata_device* %278, i32 %279, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %280)
  br label %282

282:                                              ; preds = %277, %266
  br label %283

283:                                              ; preds = %282, %262
  %284 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %285 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %284, i32 0, i32 13
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @ATA_CMD_SET_FEATURES, align 4
  %288 = icmp eq i32 %286, %287
  br i1 %288, label %289, label %296

289:                                              ; preds = %283
  %290 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %291 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %290, i32 0, i32 7
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* @SETFEATURES_XFER, align 4
  %294 = icmp eq i32 %292, %293
  br i1 %294, label %295, label %296

295:                                              ; preds = %289
  br label %311

296:                                              ; preds = %289, %283
  %297 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %298 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %297, i32 0, i32 13
  %299 = load i32, i32* %298, align 8
  %300 = icmp sge i32 %299, 92
  br i1 %300, label %301, label %310

301:                                              ; preds = %296
  %302 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %303 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %302, i32 0, i32 13
  %304 = load i32, i32* %303, align 8
  %305 = icmp sle i32 %304, 95
  br i1 %305, label %306, label %310

306:                                              ; preds = %301
  %307 = load i32, i32* @libata_allow_tpm, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %310, label %309

309:                                              ; preds = %306
  br label %311

310:                                              ; preds = %306, %301, %296
  store i32 0, i32* %2, align 4
  br label %315

311:                                              ; preds = %309, %295, %261, %250, %193, %28
  %312 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %313 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %314 = call i32 @ata_scsi_set_sense(%struct.scsi_cmnd* %312, i32 %313, i32 36, i32 0)
  store i32 1, i32* %2, align 4
  br label %315

315:                                              ; preds = %311, %310
  %316 = load i32, i32* %2, align 4
  ret i32 %316
}

declare dso_local i64 @ata_scsi_map_proto(i32) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @ata_qc_set_pc_nbytes(%struct.ata_queued_cmd*) #1

declare dso_local i64 @is_multi_taskfile(%struct.ata_taskfile*) #1

declare dso_local i32 @ata_dev_printk(%struct.ata_device*, i32, i8*, i32) #1

declare dso_local i32 @ata_scsi_set_sense(%struct.scsi_cmnd*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

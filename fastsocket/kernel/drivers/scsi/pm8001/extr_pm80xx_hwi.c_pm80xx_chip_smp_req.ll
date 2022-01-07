; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm80xx_hwi.c_pm80xx_chip_smp_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm80xx_hwi.c_pm80xx_chip_smp_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i8*, i32, %struct.inbound_queue_table* }
%struct.inbound_queue_table = type { i32 }
%struct.pm8001_ccb_info = type { i32, %struct.sas_task* }
%struct.sas_task = type { %struct.TYPE_4__, %struct.domain_device* }
%struct.TYPE_4__ = type { %struct.scatterlist, %struct.scatterlist }
%struct.scatterlist = type { i32 }
%struct.domain_device = type { %struct.pm8001_device* }
%struct.pm8001_device = type { i32 }
%struct.smp_req = type { i8*, i8*, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8* }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OPC_INB_SMP_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"SMP Frame Length %d\0A\00", align 1
@SMP_DIRECT = common dso_local global i8* null, align 8
@SMP_INDIRECT = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"SMP REQUEST INDIRECT MODE\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"SMP REQUEST DIRECT MODE\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Byte[%d]:%x (DMA data:%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*, %struct.pm8001_ccb_info*)* @pm80xx_chip_smp_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm80xx_chip_smp_req(%struct.pm8001_hba_info* %0, %struct.pm8001_ccb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pm8001_hba_info*, align 8
  %5 = alloca %struct.pm8001_ccb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sas_task*, align 8
  %9 = alloca %struct.domain_device*, align 8
  %10 = alloca %struct.pm8001_device*, align 8
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.smp_req, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.inbound_queue_table*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %4, align 8
  store %struct.pm8001_ccb_info* %1, %struct.pm8001_ccb_info** %5, align 8
  %22 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %5, align 8
  %23 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %22, i32 0, i32 1
  %24 = load %struct.sas_task*, %struct.sas_task** %23, align 8
  store %struct.sas_task* %24, %struct.sas_task** %8, align 8
  %25 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %26 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %25, i32 0, i32 1
  %27 = load %struct.domain_device*, %struct.domain_device** %26, align 8
  store %struct.domain_device* %27, %struct.domain_device** %9, align 8
  %28 = load %struct.domain_device*, %struct.domain_device** %9, align 8
  %29 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %28, i32 0, i32 0
  %30 = load %struct.pm8001_device*, %struct.pm8001_device** %29, align 8
  store %struct.pm8001_device* %30, %struct.pm8001_device** %10, align 8
  store i8* null, i8** %18, align 8
  %31 = call i32 @memset(%struct.smp_req* %15, i32 0, i32 56)
  %32 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %33 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store %struct.scatterlist* %34, %struct.scatterlist** %11, align 8
  %35 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %36 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %39 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %40 = call i32 @dma_map_sg(i32 %37, %struct.scatterlist* %38, i32 1, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %2
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %319

46:                                               ; preds = %2
  %47 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %48 = call i32 @sg_dma_len(%struct.scatterlist* %47)
  store i32 %48, i32* %13, align 4
  %49 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %50 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store %struct.scatterlist* %51, %struct.scatterlist** %12, align 8
  %52 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %53 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %56 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %57 = call i32 @dma_map_sg(i32 %54, %struct.scatterlist* %55, i32 1, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %46
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %7, align 4
  br label %307

63:                                               ; preds = %46
  %64 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %65 = call i32 @sg_dma_len(%struct.scatterlist* %64)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %13, align 4
  %67 = and i32 %66, 3
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %63
  %70 = load i32, i32* %14, align 4
  %71 = and i32 %70, 3
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69, %63
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %7, align 4
  br label %296

76:                                               ; preds = %69
  %77 = load i32, i32* @OPC_INB_SMP_REQUEST, align 4
  store i32 %77, i32* %16, align 4
  %78 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %79 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %78, i32 0, i32 2
  %80 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %79, align 8
  %81 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %80, i64 0
  store %struct.inbound_queue_table* %81, %struct.inbound_queue_table** %17, align 8
  %82 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %5, align 8
  %83 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i8* @cpu_to_le32(i32 %84)
  %86 = getelementptr inbounds %struct.smp_req, %struct.smp_req* %15, i32 0, i32 2
  store i8* %85, i8** %86, align 8
  %87 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %88 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %21, align 4
  %90 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %91 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %92 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %93)
  %95 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %90, i32 %94)
  %96 = load i32, i32* %21, align 4
  %97 = sub nsw i32 %96, 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %76
  %100 = load i8*, i8** @SMP_DIRECT, align 8
  %101 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %102 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  br label %107

103:                                              ; preds = %76
  %104 = load i8*, i8** @SMP_INDIRECT, align 8
  %105 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %106 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  br label %107

107:                                              ; preds = %103, %99
  %108 = load i8*, i8** @SMP_DIRECT, align 8
  %109 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %110 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %109, i32 0, i32 0
  store i8* %108, i8** %110, align 8
  %111 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %112 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = call i64 @sg_dma_address(%struct.scatterlist* %113)
  %115 = call i8* @cpu_to_le64(i64 %114)
  store i8* %115, i8** %19, align 8
  %116 = load i8*, i8** %19, align 8
  %117 = call i64 @phys_to_virt(i8* %116)
  %118 = inttoptr i64 %117 to i8*
  store i8* %118, i8** %18, align 8
  %119 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %120 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = load i8*, i8** @SMP_INDIRECT, align 8
  %123 = icmp eq i8* %121, %122
  br i1 %123, label %124, label %177

124:                                              ; preds = %107
  %125 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %126 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %127 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %125, i32 %126)
  store i32 0, i32* %20, align 4
  br label %128

128:                                              ; preds = %142, %124
  %129 = load i32, i32* %20, align 4
  %130 = icmp slt i32 %129, 4
  br i1 %130, label %131, label %145

131:                                              ; preds = %128
  %132 = load i8*, i8** %18, align 8
  %133 = load i32, i32* %20, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = getelementptr inbounds %struct.smp_req, %struct.smp_req* %15, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = load i32, i32* %20, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  store i8 %136, i8* %141, align 1
  br label %142

142:                                              ; preds = %131
  %143 = load i32, i32* %20, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %20, align 4
  br label %128

145:                                              ; preds = %128
  %146 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %147 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = call i64 @sg_dma_address(%struct.scatterlist* %148)
  %150 = sub nsw i64 %149, 4
  %151 = call i8* @cpu_to_le64(i64 %150)
  %152 = getelementptr inbounds %struct.smp_req, %struct.smp_req* %15, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 3
  store i8* %151, i8** %153, align 8
  %154 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %155 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = call i32 @sg_dma_len(%struct.scatterlist* %156)
  %158 = sub nsw i32 %157, 8
  %159 = call i8* @cpu_to_le32(i32 %158)
  %160 = getelementptr inbounds %struct.smp_req, %struct.smp_req* %15, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 2
  store i8* %159, i8** %161, align 8
  %162 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %163 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 1
  %165 = call i64 @sg_dma_address(%struct.scatterlist* %164)
  %166 = call i8* @cpu_to_le64(i64 %165)
  %167 = getelementptr inbounds %struct.smp_req, %struct.smp_req* %15, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 1
  store i8* %166, i8** %168, align 8
  %169 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %170 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  %172 = call i32 @sg_dma_len(%struct.scatterlist* %171)
  %173 = sub nsw i32 %172, 4
  %174 = call i8* @cpu_to_le32(i32 %173)
  %175 = getelementptr inbounds %struct.smp_req, %struct.smp_req* %15, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  store i8* %174, i8** %176, align 8
  br label %208

177:                                              ; preds = %107
  %178 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %179 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = call i64 @sg_dma_address(%struct.scatterlist* %180)
  %182 = call i8* @cpu_to_le64(i64 %181)
  %183 = getelementptr inbounds %struct.smp_req, %struct.smp_req* %15, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 3
  store i8* %182, i8** %184, align 8
  %185 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %186 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = call i32 @sg_dma_len(%struct.scatterlist* %187)
  %189 = sub nsw i32 %188, 4
  %190 = call i8* @cpu_to_le32(i32 %189)
  %191 = getelementptr inbounds %struct.smp_req, %struct.smp_req* %15, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 2
  store i8* %190, i8** %192, align 8
  %193 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %194 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 1
  %196 = call i64 @sg_dma_address(%struct.scatterlist* %195)
  %197 = call i8* @cpu_to_le64(i64 %196)
  %198 = getelementptr inbounds %struct.smp_req, %struct.smp_req* %15, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 1
  store i8* %197, i8** %199, align 8
  %200 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %201 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 1
  %203 = call i32 @sg_dma_len(%struct.scatterlist* %202)
  %204 = sub nsw i32 %203, 4
  %205 = call i8* @cpu_to_le32(i32 %204)
  %206 = getelementptr inbounds %struct.smp_req, %struct.smp_req* %15, i32 0, i32 3
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 0
  store i8* %205, i8** %207, align 8
  br label %208

208:                                              ; preds = %177, %145
  %209 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %210 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %209, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  %212 = load i8*, i8** @SMP_DIRECT, align 8
  %213 = icmp eq i8* %211, %212
  br i1 %213, label %214, label %280

214:                                              ; preds = %208
  %215 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %216 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %217 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %215, i32 %216)
  store i32 0, i32* %20, align 4
  br label %218

218:                                              ; preds = %276, %214
  %219 = load i32, i32* %20, align 4
  %220 = load i32, i32* %21, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %279

222:                                              ; preds = %218
  %223 = load i32, i32* %20, align 4
  %224 = icmp slt i32 %223, 16
  br i1 %224, label %225, label %250

225:                                              ; preds = %222
  %226 = load i8*, i8** %18, align 8
  %227 = load i32, i32* %20, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8, i8* %226, i64 %228
  %230 = load i8, i8* %229, align 1
  %231 = getelementptr inbounds %struct.smp_req, %struct.smp_req* %15, i32 0, i32 0
  %232 = load i8*, i8** %231, align 8
  %233 = load i32, i32* %20, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8, i8* %232, i64 %234
  store i8 %230, i8* %235, align 1
  %236 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %237 = load i32, i32* %20, align 4
  %238 = getelementptr inbounds %struct.smp_req, %struct.smp_req* %15, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = load i32, i32* %20, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i8, i8* %239, i64 %241
  %243 = load i8, i8* %242, align 1
  %244 = sext i8 %243 to i32
  %245 = load i8*, i8** %18, align 8
  %246 = load i8, i8* %245, align 1
  %247 = sext i8 %246 to i32
  %248 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %237, i32 %244, i32 %247)
  %249 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %236, i32 %248)
  br label %275

250:                                              ; preds = %222
  %251 = load i8*, i8** %18, align 8
  %252 = load i32, i32* %20, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i8, i8* %251, i64 %253
  %255 = load i8, i8* %254, align 1
  %256 = getelementptr inbounds %struct.smp_req, %struct.smp_req* %15, i32 0, i32 1
  %257 = load i8*, i8** %256, align 8
  %258 = load i32, i32* %20, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8, i8* %257, i64 %259
  store i8 %255, i8* %260, align 1
  %261 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %262 = load i32, i32* %20, align 4
  %263 = getelementptr inbounds %struct.smp_req, %struct.smp_req* %15, i32 0, i32 1
  %264 = load i8*, i8** %263, align 8
  %265 = load i32, i32* %20, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8, i8* %264, i64 %266
  %268 = load i8, i8* %267, align 1
  %269 = sext i8 %268 to i32
  %270 = load i8*, i8** %18, align 8
  %271 = load i8, i8* %270, align 1
  %272 = sext i8 %271 to i32
  %273 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %262, i32 %269, i32 %272)
  %274 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %261, i32 %273)
  br label %275

275:                                              ; preds = %250, %225
  br label %276

276:                                              ; preds = %275
  %277 = load i32, i32* %20, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %20, align 4
  br label %218

279:                                              ; preds = %218
  br label %280

280:                                              ; preds = %279, %208
  %281 = load %struct.pm8001_device*, %struct.pm8001_device** %10, align 8
  %282 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = getelementptr inbounds %struct.smp_req, %struct.smp_req* %15, i32 0, i32 2
  %285 = load i8*, i8** %284, align 8
  %286 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %287 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %286, i32 0, i32 0
  %288 = load i8*, i8** %287, align 8
  %289 = load i32, i32* %21, align 4
  %290 = call i32 @build_smp_cmd(i32 %283, i8* %285, %struct.smp_req* %15, i8* %288, i32 %289)
  %291 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %292 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %17, align 8
  %293 = load i32, i32* %16, align 4
  %294 = bitcast %struct.smp_req* %15 to i32*
  %295 = call i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info* %291, %struct.inbound_queue_table* %292, i32 %293, i32* %294, i32 0)
  store i32 0, i32* %3, align 4
  br label %319

296:                                              ; preds = %73
  %297 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %298 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 8
  %300 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %5, align 8
  %301 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %300, i32 0, i32 1
  %302 = load %struct.sas_task*, %struct.sas_task** %301, align 8
  %303 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i32 0, i32 1
  %305 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %306 = call i32 @dma_unmap_sg(i32 %299, %struct.scatterlist* %304, i32 1, i32 %305)
  br label %307

307:                                              ; preds = %296, %60
  %308 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %309 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %5, align 8
  %312 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %311, i32 0, i32 1
  %313 = load %struct.sas_task*, %struct.sas_task** %312, align 8
  %314 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i32 0, i32 0
  %316 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %317 = call i32 @dma_unmap_sg(i32 %310, %struct.scatterlist* %315, i32 1, i32 %316)
  %318 = load i32, i32* %7, align 4
  store i32 %318, i32* %3, align 4
  br label %319

319:                                              ; preds = %307, %280, %43
  %320 = load i32, i32* %3, align 4
  ret i32 %320
}

declare dso_local i32 @memset(%struct.smp_req*, i32, i32) #1

declare dso_local i32 @dma_map_sg(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @PM8001_IO_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i64 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i64 @phys_to_virt(i8*) #1

declare dso_local i32 @build_smp_cmd(i32, i8*, %struct.smp_req*, i8*, i32) #1

declare dso_local i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info*, %struct.inbound_queue_table*, i32, i32*, i32) #1

declare dso_local i32 @dma_unmap_sg(i32, %struct.scatterlist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

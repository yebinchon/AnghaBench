; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_vendor_specific_fw_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_vendor_specific_fw_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_ctrl_info = type { i32 }
%struct.beiscsi_hba = type { i32 }
%struct.bsg_job = type { %struct.TYPE_6__, i32, %struct.iscsi_bsg_request* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.iscsi_bsg_request = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i16* }
%struct.be_dma_mem = type { i32, i32, %struct.be_mcc_wrb* }
%struct.be_mcc_wrb = type { i16, i16, i16, i32, i32 }
%struct.be_cmd_resp_hdr = type { i16, i16, i16, i32, i32 }
%struct.be_sge = type { i8*, i8*, i8* }
%struct.be_bsg_vendor_cmd = type { i16, i16, i16, i32, i32 }

@CMD_SUBSYSTEM_ISCSI = common dso_local global i32 0, align 4
@OPCODE_COMMON_WRITE_FLASH = common dso_local global i32 0, align 4
@OPCODE_COMMON_READ_FLASH = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"BG_%d : Unsupported cmd = 0x%x\0A\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmt_vendor_specific_fw_cmd(%struct.be_ctrl_info* %0, %struct.beiscsi_hba* %1, %struct.bsg_job* %2, %struct.be_dma_mem* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.be_ctrl_info*, align 8
  %7 = alloca %struct.beiscsi_hba*, align 8
  %8 = alloca %struct.bsg_job*, align 8
  %9 = alloca %struct.be_dma_mem*, align 8
  %10 = alloca %struct.be_cmd_resp_hdr*, align 8
  %11 = alloca %struct.be_mcc_wrb*, align 8
  %12 = alloca %struct.be_sge*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.iscsi_bsg_request*, align 8
  %15 = alloca %struct.be_bsg_vendor_cmd*, align 8
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  %19 = alloca i16, align 2
  store %struct.be_ctrl_info* %0, %struct.be_ctrl_info** %6, align 8
  store %struct.beiscsi_hba* %1, %struct.beiscsi_hba** %7, align 8
  store %struct.bsg_job* %2, %struct.bsg_job** %8, align 8
  store %struct.be_dma_mem* %3, %struct.be_dma_mem** %9, align 8
  %20 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %7, align 8
  %21 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.beiscsi_hba* %20)
  store %struct.be_mcc_wrb* %21, %struct.be_mcc_wrb** %11, align 8
  %22 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %11, align 8
  %23 = call %struct.be_sge* @nonembedded_sgl(%struct.be_mcc_wrb* %22)
  store %struct.be_sge* %23, %struct.be_sge** %12, align 8
  store i32 0, i32* %13, align 4
  %24 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %25 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %24, i32 0, i32 2
  %26 = load %struct.iscsi_bsg_request*, %struct.iscsi_bsg_request** %25, align 8
  store %struct.iscsi_bsg_request* %26, %struct.iscsi_bsg_request** %14, align 8
  %27 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %28 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %27, i32 0, i32 2
  %29 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %28, align 8
  %30 = bitcast %struct.be_mcc_wrb* %29 to %struct.be_bsg_vendor_cmd*
  store %struct.be_bsg_vendor_cmd* %30, %struct.be_bsg_vendor_cmd** %15, align 8
  %31 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %32 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %36 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %38 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %37, i32 0, i32 2
  %39 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %38, align 8
  %40 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %41 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @memset(%struct.be_mcc_wrb* %39, i32 0, i32 %42)
  %44 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %45 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %44, i32 0, i32 2
  %46 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %45, align 8
  %47 = bitcast %struct.be_mcc_wrb* %46 to %struct.be_cmd_resp_hdr*
  store %struct.be_cmd_resp_hdr* %47, %struct.be_cmd_resp_hdr** %10, align 8
  %48 = load %struct.iscsi_bsg_request*, %struct.iscsi_bsg_request** %14, align 8
  %49 = getelementptr inbounds %struct.iscsi_bsg_request, %struct.iscsi_bsg_request* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i16*, i16** %51, align 8
  %53 = getelementptr inbounds i16, i16* %52, i64 1
  %54 = load i16, i16* %53, align 2
  store i16 %54, i16* %16, align 2
  %55 = load %struct.iscsi_bsg_request*, %struct.iscsi_bsg_request** %14, align 8
  %56 = getelementptr inbounds %struct.iscsi_bsg_request, %struct.iscsi_bsg_request* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i16*, i16** %58, align 8
  %60 = getelementptr inbounds i16, i16* %59, i64 2
  %61 = load i16, i16* %60, align 2
  store i16 %61, i16* %17, align 2
  %62 = load %struct.iscsi_bsg_request*, %struct.iscsi_bsg_request** %14, align 8
  %63 = getelementptr inbounds %struct.iscsi_bsg_request, %struct.iscsi_bsg_request* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i16*, i16** %65, align 8
  %67 = getelementptr inbounds i16, i16* %66, i64 3
  %68 = load i16, i16* %67, align 2
  store i16 %68, i16* %18, align 2
  %69 = load %struct.iscsi_bsg_request*, %struct.iscsi_bsg_request** %14, align 8
  %70 = getelementptr inbounds %struct.iscsi_bsg_request, %struct.iscsi_bsg_request* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i16*, i16** %72, align 8
  %74 = getelementptr inbounds i16, i16* %73, i64 4
  %75 = load i16, i16* %74, align 2
  store i16 %75, i16* %19, align 2
  %76 = load i16, i16* %16, align 2
  %77 = load %struct.be_bsg_vendor_cmd*, %struct.be_bsg_vendor_cmd** %15, align 8
  %78 = getelementptr inbounds %struct.be_bsg_vendor_cmd, %struct.be_bsg_vendor_cmd* %77, i32 0, i32 0
  store i16 %76, i16* %78, align 4
  %79 = load i16, i16* %18, align 2
  %80 = load %struct.be_bsg_vendor_cmd*, %struct.be_bsg_vendor_cmd** %15, align 8
  %81 = getelementptr inbounds %struct.be_bsg_vendor_cmd, %struct.be_bsg_vendor_cmd* %80, i32 0, i32 1
  store i16 %79, i16* %81, align 2
  %82 = load i16, i16* %19, align 2
  %83 = load %struct.be_bsg_vendor_cmd*, %struct.be_bsg_vendor_cmd** %15, align 8
  %84 = getelementptr inbounds %struct.be_bsg_vendor_cmd, %struct.be_bsg_vendor_cmd* %83, i32 0, i32 2
  store i16 %82, i16* %84, align 4
  %85 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %6, align 8
  %86 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %85, i32 0, i32 0
  %87 = call i32 @spin_lock(i32* %86)
  %88 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %11, align 8
  %89 = call i32 @memset(%struct.be_mcc_wrb* %88, i32 0, i32 16)
  %90 = load %struct.iscsi_bsg_request*, %struct.iscsi_bsg_request** %14, align 8
  %91 = getelementptr inbounds %struct.iscsi_bsg_request, %struct.iscsi_bsg_request* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i16*, i16** %93, align 8
  %95 = getelementptr inbounds i16, i16* %94, i64 0
  %96 = load i16, i16* %95, align 2
  %97 = zext i16 %96 to i32
  switch i32 %97, label %138 [
    i32 128, label %98
    i32 129, label %132
  ]

98:                                               ; preds = %4
  %99 = load i16, i16* %18, align 2
  %100 = zext i16 %99 to i32
  %101 = load i16, i16* %17, align 2
  %102 = zext i16 %101 to i32
  %103 = mul nsw i32 %100, %102
  %104 = load i16, i16* %19, align 2
  %105 = zext i16 %104 to i32
  %106 = add nsw i32 %103, %105
  %107 = trunc i32 %106 to i16
  store i16 %107, i16* %19, align 2
  %108 = load %struct.be_bsg_vendor_cmd*, %struct.be_bsg_vendor_cmd** %15, align 8
  %109 = getelementptr inbounds %struct.be_bsg_vendor_cmd, %struct.be_bsg_vendor_cmd* %108, i32 0, i32 4
  %110 = load i32, i32* @CMD_SUBSYSTEM_ISCSI, align 4
  %111 = load i32, i32* @OPCODE_COMMON_WRITE_FLASH, align 4
  %112 = call i32 @be_cmd_hdr_prepare(i32* %109, i32 %110, i32 %111, i32 16)
  %113 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %114 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %118 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %122 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %121, i32 0, i32 2
  %123 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %122, align 8
  %124 = load i16, i16* %19, align 2
  %125 = zext i16 %124 to i32
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.be_mcc_wrb, %struct.be_mcc_wrb* %123, i64 %126
  %128 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %129 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @sg_copy_to_buffer(i32 %116, i32 %120, %struct.be_mcc_wrb* %127, i32 %130)
  br label %155

132:                                              ; preds = %4
  %133 = load %struct.be_bsg_vendor_cmd*, %struct.be_bsg_vendor_cmd** %15, align 8
  %134 = getelementptr inbounds %struct.be_bsg_vendor_cmd, %struct.be_bsg_vendor_cmd* %133, i32 0, i32 4
  %135 = load i32, i32* @CMD_SUBSYSTEM_ISCSI, align 4
  %136 = load i32, i32* @OPCODE_COMMON_READ_FLASH, align 4
  %137 = call i32 @be_cmd_hdr_prepare(i32* %134, i32 %135, i32 %136, i32 16)
  br label %155

138:                                              ; preds = %4
  %139 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %7, align 8
  %140 = load i32, i32* @KERN_WARNING, align 4
  %141 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %142 = load %struct.iscsi_bsg_request*, %struct.iscsi_bsg_request** %14, align 8
  %143 = getelementptr inbounds %struct.iscsi_bsg_request, %struct.iscsi_bsg_request* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i16*, i16** %145, align 8
  %147 = getelementptr inbounds i16, i16* %146, i64 0
  %148 = load i16, i16* %147, align 2
  %149 = call i32 @beiscsi_log(%struct.beiscsi_hba* %139, i32 %140, i32 %141, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i16 signext %148)
  %150 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %6, align 8
  %151 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %150, i32 0, i32 0
  %152 = call i32 @spin_unlock(i32* %151)
  %153 = load i32, i32* @ENOSYS, align 4
  %154 = sub i32 0, %153
  store i32 %154, i32* %5, align 4
  br label %205

155:                                              ; preds = %132, %98
  %156 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %7, align 8
  %157 = call i32 @alloc_mcc_tag(%struct.beiscsi_hba* %156)
  store i32 %157, i32* %13, align 4
  %158 = load i32, i32* %13, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %165, label %160

160:                                              ; preds = %155
  %161 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %6, align 8
  %162 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %161, i32 0, i32 0
  %163 = call i32 @spin_unlock(i32* %162)
  %164 = load i32, i32* %13, align 4
  store i32 %164, i32* %5, align 4
  br label %205

165:                                              ; preds = %155
  %166 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %11, align 8
  %167 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %168 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.bsg_job*, %struct.bsg_job** %8, align 8
  %171 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb* %166, i32 %169, i32 0, i32 %173)
  %175 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %176 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @upper_32_bits(i32 %177)
  %179 = call i8* @cpu_to_le32(i32 %178)
  %180 = load %struct.be_sge*, %struct.be_sge** %12, align 8
  %181 = getelementptr inbounds %struct.be_sge, %struct.be_sge* %180, i32 0, i32 2
  store i8* %179, i8** %181, align 8
  %182 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %183 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i8* @cpu_to_le32(i32 %184)
  %186 = load %struct.be_sge*, %struct.be_sge** %12, align 8
  %187 = getelementptr inbounds %struct.be_sge, %struct.be_sge* %186, i32 0, i32 1
  store i8* %185, i8** %187, align 8
  %188 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %189 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = call i8* @cpu_to_le32(i32 %190)
  %192 = load %struct.be_sge*, %struct.be_sge** %12, align 8
  %193 = getelementptr inbounds %struct.be_sge, %struct.be_sge* %192, i32 0, i32 0
  store i8* %191, i8** %193, align 8
  %194 = load i32, i32* %13, align 4
  %195 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %11, align 8
  %196 = getelementptr inbounds %struct.be_mcc_wrb, %struct.be_mcc_wrb* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = or i32 %197, %194
  store i32 %198, i32* %196, align 4
  %199 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %7, align 8
  %200 = call i32 @be_mcc_notify(%struct.beiscsi_hba* %199)
  %201 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %6, align 8
  %202 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %201, i32 0, i32 0
  %203 = call i32 @spin_unlock(i32* %202)
  %204 = load i32, i32* %13, align 4
  store i32 %204, i32* %5, align 4
  br label %205

205:                                              ; preds = %165, %160, %138
  %206 = load i32, i32* %5, align 4
  ret i32 %206
}

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.beiscsi_hba*) #1

declare dso_local %struct.be_sge* @nonembedded_sgl(%struct.be_mcc_wrb*) #1

declare dso_local i32 @memset(%struct.be_mcc_wrb*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @be_cmd_hdr_prepare(i32*, i32, i32, i32) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, %struct.be_mcc_wrb*, i32) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, i16 signext) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @alloc_mcc_tag(%struct.beiscsi_hba*) #1

declare dso_local i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb*, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @be_mcc_notify(%struct.beiscsi_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

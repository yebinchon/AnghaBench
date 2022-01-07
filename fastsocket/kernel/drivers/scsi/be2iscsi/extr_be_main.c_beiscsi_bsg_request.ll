; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_bsg_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_bsg_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.iscsi_bsg_reply*, %struct.iscsi_bsg_request* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.iscsi_bsg_reply = type { i16, i32 }
%struct.iscsi_bsg_request = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.beiscsi_hba = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32*, i32, i32* }
%struct.be_dma_mem = type { i32, i32*, i32 }
%struct.be_cmd_resp_hdr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"BM_%d : Failed to allocate memory for beiscsi_bsg_request\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"BM_%d : MBX Tag Allocation Failed\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@BEISCSI_HOST_MBX_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"BM_%d : MBX Cmd Failed status = %d extd_status = %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"BM_%d : Unsupported bsg command: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*)* @beiscsi_bsg_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_bsg_request(%struct.bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bsg_job*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.beiscsi_hba*, align 8
  %6 = alloca %struct.iscsi_bsg_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.be_dma_mem, align 8
  %10 = alloca %struct.be_cmd_resp_hdr*, align 8
  %11 = alloca %struct.iscsi_bsg_reply*, align 8
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  store %struct.bsg_job* %0, %struct.bsg_job** %3, align 8
  %14 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %15 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %14, i32 0, i32 3
  %16 = load %struct.iscsi_bsg_request*, %struct.iscsi_bsg_request** %15, align 8
  store %struct.iscsi_bsg_request* %16, %struct.iscsi_bsg_request** %6, align 8
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %7, align 4
  %19 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %20 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %19, i32 0, i32 2
  %21 = load %struct.iscsi_bsg_reply*, %struct.iscsi_bsg_reply** %20, align 8
  store %struct.iscsi_bsg_reply* %21, %struct.iscsi_bsg_reply** %11, align 8
  %22 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %23 = call %struct.Scsi_Host* @iscsi_job_to_shost(%struct.bsg_job* %22)
  store %struct.Scsi_Host* %23, %struct.Scsi_Host** %4, align 8
  %24 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %25 = call %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host* %24)
  store %struct.beiscsi_hba* %25, %struct.beiscsi_hba** %5, align 8
  %26 = load %struct.iscsi_bsg_request*, %struct.iscsi_bsg_request** %6, align 8
  %27 = getelementptr inbounds %struct.iscsi_bsg_request, %struct.iscsi_bsg_request* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %189 [
    i32 128, label %29
  ]

29:                                               ; preds = %1
  %30 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %31 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %35 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 0
  %39 = call i32* @pci_alloc_consistent(i32 %33, i32 %37, i32* %38)
  %40 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 1
  store i32* %39, i32** %40, align 8
  %41 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %29
  %45 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %46 = load i32, i32* @KERN_ERR, align 4
  %47 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %48 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %45, i32 %46, i32 %47, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %199

51:                                               ; preds = %29
  %52 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %53 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %52, i32 0, i32 0
  %54 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %55 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %56 = call i32 @mgmt_vendor_specific_fw_cmd(%struct.TYPE_7__* %53, %struct.beiscsi_hba* %54, %struct.bsg_job* %55, %struct.be_dma_mem* %9)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %77, label %59

59:                                               ; preds = %51
  %60 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %61 = load i32, i32* @KERN_ERR, align 4
  %62 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %63 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %60, i32 %61, i32 %62, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %64 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %65 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @pci_free_consistent(i32 %67, i32 %69, i32* %71, i32 %73)
  %75 = load i32, i32* @EAGAIN, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %199

77:                                               ; preds = %51
  %78 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %79 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %87 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @BEISCSI_HOST_MBX_TIMEOUT, align 4
  %95 = call i32 @msecs_to_jiffies(i32 %94)
  %96 = call i32 @wait_event_interruptible_timeout(i32 %85, i32 %93, i32 %95)
  store i32 %96, i32* %7, align 4
  %97 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %98 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 65280
  %106 = ashr i32 %105, 8
  %107 = trunc i32 %106 to i16
  store i16 %107, i16* %13, align 2
  %108 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %109 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, 255
  %117 = trunc i32 %116 to i16
  store i16 %117, i16* %12, align 2
  %118 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %119 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %118, i32 0, i32 0
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @free_mcc_tag(%struct.TYPE_7__* %119, i32 %120)
  %122 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = bitcast i32* %123 to %struct.be_cmd_resp_hdr*
  store %struct.be_cmd_resp_hdr* %124, %struct.be_cmd_resp_hdr** %10, align 8
  %125 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %126 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %130 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load %struct.be_cmd_resp_hdr*, %struct.be_cmd_resp_hdr** %10, align 8
  %136 = getelementptr inbounds %struct.be_cmd_resp_hdr, %struct.be_cmd_resp_hdr* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = add i64 %138, 4
  %140 = trunc i64 %139 to i32
  %141 = call i32 @sg_copy_from_buffer(i32 %128, i32 %132, i32* %134, i32 %140)
  %142 = load %struct.be_cmd_resp_hdr*, %struct.be_cmd_resp_hdr** %10, align 8
  %143 = getelementptr inbounds %struct.be_cmd_resp_hdr, %struct.be_cmd_resp_hdr* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.iscsi_bsg_reply*, %struct.iscsi_bsg_reply** %11, align 8
  %146 = getelementptr inbounds %struct.iscsi_bsg_reply, %struct.iscsi_bsg_reply* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  %147 = load i16, i16* %12, align 2
  %148 = load %struct.iscsi_bsg_reply*, %struct.iscsi_bsg_reply** %11, align 8
  %149 = getelementptr inbounds %struct.iscsi_bsg_reply, %struct.iscsi_bsg_reply* %148, i32 0, i32 0
  store i16 %147, i16* %149, align 4
  %150 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %151 = load %struct.iscsi_bsg_reply*, %struct.iscsi_bsg_reply** %11, align 8
  %152 = getelementptr inbounds %struct.iscsi_bsg_reply, %struct.iscsi_bsg_reply* %151, i32 0, i32 0
  %153 = load i16, i16* %152, align 4
  %154 = load %struct.iscsi_bsg_reply*, %struct.iscsi_bsg_reply** %11, align 8
  %155 = getelementptr inbounds %struct.iscsi_bsg_reply, %struct.iscsi_bsg_reply* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @bsg_job_done(%struct.bsg_job* %150, i16 zeroext %153, i32 %156)
  %158 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %159 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @pci_free_consistent(i32 %161, i32 %163, i32* %165, i32 %167)
  %169 = load i16, i16* %12, align 2
  %170 = zext i16 %169 to i32
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %77
  %173 = load i16, i16* %13, align 2
  %174 = zext i16 %173 to i32
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %187

176:                                              ; preds = %172, %77
  %177 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %178 = load i32, i32* @KERN_ERR, align 4
  %179 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %180 = load i16, i16* %12, align 2
  %181 = zext i16 %180 to i32
  %182 = load i16, i16* %13, align 2
  %183 = zext i16 %182 to i32
  %184 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %177, i32 %178, i32 %179, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %181, i32 %183)
  %185 = load i32, i32* @EIO, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %2, align 4
  br label %199

187:                                              ; preds = %172
  store i32 0, i32* %7, align 4
  br label %188

188:                                              ; preds = %187
  br label %197

189:                                              ; preds = %1
  %190 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %191 = load i32, i32* @KERN_ERR, align 4
  %192 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %193 = load %struct.iscsi_bsg_request*, %struct.iscsi_bsg_request** %6, align 8
  %194 = getelementptr inbounds %struct.iscsi_bsg_request, %struct.iscsi_bsg_request* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %190, i32 %191, i32 %192, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %195)
  br label %197

197:                                              ; preds = %189, %188
  %198 = load i32, i32* %7, align 4
  store i32 %198, i32* %2, align 4
  br label %199

199:                                              ; preds = %197, %176, %59, %44
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local %struct.Scsi_Host* @iscsi_job_to_shost(%struct.bsg_job*) #1

declare dso_local %struct.beiscsi_hba* @iscsi_host_priv(%struct.Scsi_Host*) #1

declare dso_local i32* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @mgmt_vendor_specific_fw_cmd(%struct.TYPE_7__*, %struct.beiscsi_hba*, %struct.bsg_job*, %struct.be_dma_mem*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @free_mcc_tag(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @sg_copy_from_buffer(i32, i32, i32*, i32) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_cmds.c_be_cmd_wrbq_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_cmds.c_be_cmd_wrbq_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_ctrl_info = type { i32, i32 }
%struct.be_dma_mem = type { i32, i32 }
%struct.be_queue_info = type { i32, i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_wrbq_create_req = type { i32, i32, i32 }
%struct.be_wrbq_create_resp = type { i32 }

@CMD_SUBSYSTEM_ISCSI = common dso_local global i32 0, align 4
@OPCODE_COMMON_ISCSI_WRBQ_CREATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_wrbq_create(%struct.be_ctrl_info* %0, %struct.be_dma_mem* %1, %struct.be_queue_info* %2) #0 {
  %4 = alloca %struct.be_ctrl_info*, align 8
  %5 = alloca %struct.be_dma_mem*, align 8
  %6 = alloca %struct.be_queue_info*, align 8
  %7 = alloca %struct.be_mcc_wrb*, align 8
  %8 = alloca %struct.be_wrbq_create_req*, align 8
  %9 = alloca %struct.be_wrbq_create_resp*, align 8
  %10 = alloca i32, align 4
  store %struct.be_ctrl_info* %0, %struct.be_ctrl_info** %4, align 8
  store %struct.be_dma_mem* %1, %struct.be_dma_mem** %5, align 8
  store %struct.be_queue_info* %2, %struct.be_queue_info** %6, align 8
  %11 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %12 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %11, i32 0, i32 1
  %13 = call %struct.be_mcc_wrb* @wrb_from_mbox(i32* %12)
  store %struct.be_mcc_wrb* %13, %struct.be_mcc_wrb** %7, align 8
  %14 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %15 = call i8* @embedded_payload(%struct.be_mcc_wrb* %14)
  %16 = bitcast i8* %15 to %struct.be_wrbq_create_req*
  store %struct.be_wrbq_create_req* %16, %struct.be_wrbq_create_req** %8, align 8
  %17 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %18 = call i8* @embedded_payload(%struct.be_mcc_wrb* %17)
  %19 = bitcast i8* %18 to %struct.be_wrbq_create_resp*
  store %struct.be_wrbq_create_resp* %19, %struct.be_wrbq_create_resp** %9, align 8
  %20 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %21 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %20, i32 0, i32 0
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %24 = call i32 @memset(%struct.be_mcc_wrb* %23, i32 0, i32 4)
  %25 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %26 = call i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb* %25, i32 12, i32 1, i32 0)
  %27 = load %struct.be_wrbq_create_req*, %struct.be_wrbq_create_req** %8, align 8
  %28 = getelementptr inbounds %struct.be_wrbq_create_req, %struct.be_wrbq_create_req* %27, i32 0, i32 2
  %29 = load i32, i32* @CMD_SUBSYSTEM_ISCSI, align 4
  %30 = load i32, i32* @OPCODE_COMMON_ISCSI_WRBQ_CREATE, align 4
  %31 = call i32 @be_cmd_hdr_prepare(i32* %28, i32 %29, i32 %30, i32 12)
  %32 = load %struct.be_dma_mem*, %struct.be_dma_mem** %5, align 8
  %33 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.be_dma_mem*, %struct.be_dma_mem** %5, align 8
  %36 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @PAGES_4K_SPANNED(i32 %34, i32 %37)
  %39 = load %struct.be_wrbq_create_req*, %struct.be_wrbq_create_req** %8, align 8
  %40 = getelementptr inbounds %struct.be_wrbq_create_req, %struct.be_wrbq_create_req* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.be_wrbq_create_req*, %struct.be_wrbq_create_req** %8, align 8
  %42 = getelementptr inbounds %struct.be_wrbq_create_req, %struct.be_wrbq_create_req* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.be_wrbq_create_req*, %struct.be_wrbq_create_req** %8, align 8
  %45 = getelementptr inbounds %struct.be_wrbq_create_req, %struct.be_wrbq_create_req* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ARRAY_SIZE(i32 %46)
  %48 = load %struct.be_dma_mem*, %struct.be_dma_mem** %5, align 8
  %49 = call i32 @be_cmd_page_addrs_prepare(i32 %43, i32 %47, %struct.be_dma_mem* %48)
  %50 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %51 = call i32 @be_mbox_notify(%struct.be_ctrl_info* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %3
  %55 = load %struct.be_wrbq_create_resp*, %struct.be_wrbq_create_resp** %9, align 8
  %56 = getelementptr inbounds %struct.be_wrbq_create_resp, %struct.be_wrbq_create_resp* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le16_to_cpu(i32 %57)
  %59 = load %struct.be_queue_info*, %struct.be_queue_info** %6, align 8
  %60 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.be_queue_info*, %struct.be_queue_info** %6, align 8
  %62 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %61, i32 0, i32 0
  store i32 1, i32* %62, align 4
  br label %63

63:                                               ; preds = %54, %3
  %64 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %65 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %64, i32 0, i32 0
  %66 = call i32 @spin_unlock(i32* %65)
  %67 = load i32, i32* %10, align 4
  ret i32 %67
}

declare dso_local %struct.be_mcc_wrb* @wrb_from_mbox(i32*) #1

declare dso_local i8* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memset(%struct.be_mcc_wrb*, i32, i32) #1

declare dso_local i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb*, i32, i32, i32) #1

declare dso_local i32 @be_cmd_hdr_prepare(i32*, i32, i32, i32) #1

declare dso_local i32 @PAGES_4K_SPANNED(i32, i32) #1

declare dso_local i32 @be_cmd_page_addrs_prepare(i32, i32, %struct.be_dma_mem*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @be_mbox_notify(%struct.be_ctrl_info*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

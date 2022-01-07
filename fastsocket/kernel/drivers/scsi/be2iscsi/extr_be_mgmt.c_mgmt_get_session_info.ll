; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_get_session_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_get_session_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.be_ctrl_info }
%struct.be_ctrl_info = type { i32 }
%struct.be_dma_mem = type { i32, i32, %struct.be_cmd_get_session_req* }
%struct.be_cmd_get_session_req = type { i32, i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_get_session_resp = type { i32 }
%struct.be_sge = type { i8*, i8*, i8* }

@KERN_INFO = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@BEISCSI_LOG_MBOX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"BG_%d : In beiscsi_get_session_info\0A\00", align 1
@CMD_SUBSYSTEM_ISCSI_INI = common dso_local global i32 0, align 4
@OPCODE_ISCSI_INI_SESSION_GET_A_SESSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmt_get_session_info(%struct.beiscsi_hba* %0, i32 %1, %struct.be_dma_mem* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.beiscsi_hba*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.be_dma_mem*, align 8
  %8 = alloca %struct.be_ctrl_info*, align 8
  %9 = alloca %struct.be_mcc_wrb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.be_cmd_get_session_req*, align 8
  %12 = alloca %struct.be_cmd_get_session_resp*, align 8
  %13 = alloca %struct.be_sge*, align 8
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.be_dma_mem* %2, %struct.be_dma_mem** %7, align 8
  %14 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %15 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %14, i32 0, i32 0
  store %struct.be_ctrl_info* %15, %struct.be_ctrl_info** %8, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %17 = load i32, i32* @KERN_INFO, align 4
  %18 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %19 = load i32, i32* @BEISCSI_LOG_MBOX, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @beiscsi_log(%struct.beiscsi_hba* %16, i32 %17, i32 %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %8, align 8
  %23 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %26 = call i32 @alloc_mcc_tag(%struct.beiscsi_hba* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %3
  %30 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %8, align 8
  %31 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock(i32* %31)
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %4, align 4
  br label %91

34:                                               ; preds = %3
  %35 = load %struct.be_dma_mem*, %struct.be_dma_mem** %7, align 8
  %36 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %35, i32 0, i32 0
  store i32 4, i32* %36, align 8
  %37 = load %struct.be_dma_mem*, %struct.be_dma_mem** %7, align 8
  %38 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %37, i32 0, i32 2
  %39 = load %struct.be_cmd_get_session_req*, %struct.be_cmd_get_session_req** %38, align 8
  store %struct.be_cmd_get_session_req* %39, %struct.be_cmd_get_session_req** %11, align 8
  %40 = load %struct.be_cmd_get_session_req*, %struct.be_cmd_get_session_req** %11, align 8
  %41 = call i32 @memset(%struct.be_cmd_get_session_req* %40, i32 0, i32 8)
  %42 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %43 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.beiscsi_hba* %42)
  store %struct.be_mcc_wrb* %43, %struct.be_mcc_wrb** %9, align 8
  %44 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %9, align 8
  %45 = call %struct.be_sge* @nonembedded_sgl(%struct.be_mcc_wrb* %44)
  store %struct.be_sge* %45, %struct.be_sge** %13, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %9, align 8
  %48 = getelementptr inbounds %struct.be_mcc_wrb, %struct.be_mcc_wrb* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %9, align 8
  %53 = getelementptr inbounds %struct.be_mcc_wrb, %struct.be_mcc_wrb* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %9, align 8
  %57 = call i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb* %56, i32 8, i32 0, i32 1)
  %58 = load %struct.be_cmd_get_session_req*, %struct.be_cmd_get_session_req** %11, align 8
  %59 = getelementptr inbounds %struct.be_cmd_get_session_req, %struct.be_cmd_get_session_req* %58, i32 0, i32 1
  %60 = load i32, i32* @CMD_SUBSYSTEM_ISCSI_INI, align 4
  %61 = load i32, i32* @OPCODE_ISCSI_INI_SESSION_GET_A_SESSION, align 4
  %62 = call i32 @be_cmd_hdr_prepare(i32* %59, i32 %60, i32 %61, i32 4)
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.be_cmd_get_session_req*, %struct.be_cmd_get_session_req** %11, align 8
  %65 = getelementptr inbounds %struct.be_cmd_get_session_req, %struct.be_cmd_get_session_req* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.be_dma_mem*, %struct.be_dma_mem** %7, align 8
  %67 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @upper_32_bits(i32 %68)
  %70 = call i8* @cpu_to_le32(i32 %69)
  %71 = load %struct.be_sge*, %struct.be_sge** %13, align 8
  %72 = getelementptr inbounds %struct.be_sge, %struct.be_sge* %71, i32 0, i32 2
  store i8* %70, i8** %72, align 8
  %73 = load %struct.be_dma_mem*, %struct.be_dma_mem** %7, align 8
  %74 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @cpu_to_le32(i32 %75)
  %77 = load %struct.be_sge*, %struct.be_sge** %13, align 8
  %78 = getelementptr inbounds %struct.be_sge, %struct.be_sge* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load %struct.be_dma_mem*, %struct.be_dma_mem** %7, align 8
  %80 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i8* @cpu_to_le32(i32 %81)
  %83 = load %struct.be_sge*, %struct.be_sge** %13, align 8
  %84 = getelementptr inbounds %struct.be_sge, %struct.be_sge* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  %85 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %86 = call i32 @be_mcc_notify(%struct.beiscsi_hba* %85)
  %87 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %8, align 8
  %88 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %87, i32 0, i32 0
  %89 = call i32 @spin_unlock(i32* %88)
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %34, %29
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @alloc_mcc_tag(%struct.beiscsi_hba*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @memset(%struct.be_cmd_get_session_req*, i32, i32) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.beiscsi_hba*) #1

declare dso_local %struct.be_sge* @nonembedded_sgl(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb*, i32, i32, i32) #1

declare dso_local i32 @be_cmd_hdr_prepare(i32*, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @be_mcc_notify(%struct.beiscsi_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_epfw_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_epfw_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.be_ctrl_info }
%struct.be_ctrl_info = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.iscsi_cleanup_req = type { i16, i8*, i8*, i32 }

@CMD_SUBSYSTEM_ISCSI = common dso_local global i32 0, align 4
@OPCODE_COMMON_ISCSI_CLEANUP = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"BG_%d : mgmt_epfw_cleanup , FAILED\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmt_epfw_cleanup(%struct.beiscsi_hba* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.beiscsi_hba*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.be_ctrl_info*, align 8
  %6 = alloca %struct.be_mcc_wrb*, align 8
  %7 = alloca %struct.iscsi_cleanup_req*, align 8
  %8 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %3, align 8
  store i16 %1, i16* %4, align 2
  %9 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %10 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %9, i32 0, i32 0
  store %struct.be_ctrl_info* %10, %struct.be_ctrl_info** %5, align 8
  %11 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %12 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.beiscsi_hba* %11)
  store %struct.be_mcc_wrb* %12, %struct.be_mcc_wrb** %6, align 8
  %13 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  %14 = call %struct.iscsi_cleanup_req* @embedded_payload(%struct.be_mcc_wrb* %13)
  store %struct.iscsi_cleanup_req* %14, %struct.iscsi_cleanup_req** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %5, align 8
  %16 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  %19 = call i32 @memset(%struct.be_mcc_wrb* %18, i32 0, i32 4)
  %20 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  %21 = call i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb* %20, i32 32, i32 1, i32 0)
  %22 = load %struct.iscsi_cleanup_req*, %struct.iscsi_cleanup_req** %7, align 8
  %23 = getelementptr inbounds %struct.iscsi_cleanup_req, %struct.iscsi_cleanup_req* %22, i32 0, i32 3
  %24 = load i32, i32* @CMD_SUBSYSTEM_ISCSI, align 4
  %25 = load i32, i32* @OPCODE_COMMON_ISCSI_CLEANUP, align 4
  %26 = call i32 @be_cmd_hdr_prepare(i32* %23, i32 %24, i32 %25, i32 32)
  %27 = load i16, i16* %4, align 2
  %28 = load %struct.iscsi_cleanup_req*, %struct.iscsi_cleanup_req** %7, align 8
  %29 = getelementptr inbounds %struct.iscsi_cleanup_req, %struct.iscsi_cleanup_req* %28, i32 0, i32 0
  store i16 %27, i16* %29, align 8
  %30 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %31 = call i32 @HWI_GET_DEF_HDRQ_ID(%struct.beiscsi_hba* %30)
  %32 = call i8* @cpu_to_le16(i32 %31)
  %33 = load %struct.iscsi_cleanup_req*, %struct.iscsi_cleanup_req** %7, align 8
  %34 = getelementptr inbounds %struct.iscsi_cleanup_req, %struct.iscsi_cleanup_req* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %36 = call i32 @HWI_GET_DEF_BUFQ_ID(%struct.beiscsi_hba* %35)
  %37 = call i8* @cpu_to_le16(i32 %36)
  %38 = load %struct.iscsi_cleanup_req*, %struct.iscsi_cleanup_req** %7, align 8
  %39 = getelementptr inbounds %struct.iscsi_cleanup_req, %struct.iscsi_cleanup_req* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %41 = call i32 @be_mcc_notify_wait(%struct.beiscsi_hba* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %2
  %45 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %46 = load i32, i32* @KERN_WARNING, align 4
  %47 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %48 = call i32 @beiscsi_log(%struct.beiscsi_hba* %45, i32 %46, i32 %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %44, %2
  %50 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %5, align 8
  %51 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load i32, i32* %8, align 4
  ret i32 %53
}

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.beiscsi_hba*) #1

declare dso_local %struct.iscsi_cleanup_req* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memset(%struct.be_mcc_wrb*, i32, i32) #1

declare dso_local i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb*, i32, i32, i32) #1

declare dso_local i32 @be_cmd_hdr_prepare(i32*, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @HWI_GET_DEF_HDRQ_ID(%struct.beiscsi_hba*) #1

declare dso_local i32 @HWI_GET_DEF_BUFQ_ID(%struct.beiscsi_hba*) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_get_fw_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_get_fw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_ctrl_info = type { i32, i32 }
%struct.beiscsi_hba = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_fw_cfg = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_QUERY_FIRMWARE_CONFIG = common dso_local global i32 0, align 4
@BE2_MAX_SESSIONS = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"BG_%d : FW reported MAX CXNS as %d\09Max Supported = %d.\0A\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"BG_%d : Failed in mgmt_get_fw_config\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmt_get_fw_config(%struct.be_ctrl_info* %0, %struct.beiscsi_hba* %1) #0 {
  %3 = alloca %struct.be_ctrl_info*, align 8
  %4 = alloca %struct.beiscsi_hba*, align 8
  %5 = alloca %struct.be_mcc_wrb*, align 8
  %6 = alloca %struct.be_fw_cfg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.be_fw_cfg*, align 8
  store %struct.be_ctrl_info* %0, %struct.be_ctrl_info** %3, align 8
  store %struct.beiscsi_hba* %1, %struct.beiscsi_hba** %4, align 8
  %9 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %10 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %9, i32 0, i32 1
  %11 = call %struct.be_mcc_wrb* @wrb_from_mbox(i32* %10)
  store %struct.be_mcc_wrb* %11, %struct.be_mcc_wrb** %5, align 8
  %12 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  %13 = call %struct.be_fw_cfg* @embedded_payload(%struct.be_mcc_wrb* %12)
  store %struct.be_fw_cfg* %13, %struct.be_fw_cfg** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %15 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  %18 = call i32 @memset(%struct.be_mcc_wrb* %17, i32 0, i32 4)
  %19 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  %20 = call i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb* %19, i32 16, i32 1, i32 0)
  %21 = load %struct.be_fw_cfg*, %struct.be_fw_cfg** %6, align 8
  %22 = getelementptr inbounds %struct.be_fw_cfg, %struct.be_fw_cfg* %21, i32 0, i32 2
  %23 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %24 = load i32, i32* @OPCODE_COMMON_QUERY_FIRMWARE_CONFIG, align 4
  %25 = call i32 @be_cmd_hdr_prepare(i32* %22, i32 %23, i32 %24, i32 16)
  %26 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %27 = call i32 @be_mbox_notify(%struct.be_ctrl_info* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %97, label %30

30:                                               ; preds = %2
  %31 = load %struct.be_fw_cfg*, %struct.be_fw_cfg** %6, align 8
  store %struct.be_fw_cfg* %31, %struct.be_fw_cfg** %8, align 8
  %32 = load %struct.be_fw_cfg*, %struct.be_fw_cfg** %8, align 8
  %33 = getelementptr inbounds %struct.be_fw_cfg, %struct.be_fw_cfg* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %36 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 4
  store i32 %34, i32* %37, align 4
  %38 = load %struct.be_fw_cfg*, %struct.be_fw_cfg** %8, align 8
  %39 = getelementptr inbounds %struct.be_fw_cfg, %struct.be_fw_cfg* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %45 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 3
  store i32 %43, i32* %46, align 4
  %47 = load %struct.be_fw_cfg*, %struct.be_fw_cfg** %8, align 8
  %48 = getelementptr inbounds %struct.be_fw_cfg, %struct.be_fw_cfg* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %54 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  store i32 %52, i32* %55, align 4
  %56 = load %struct.be_fw_cfg*, %struct.be_fw_cfg** %8, align 8
  %57 = getelementptr inbounds %struct.be_fw_cfg, %struct.be_fw_cfg* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %63 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 4
  %65 = load %struct.be_fw_cfg*, %struct.be_fw_cfg** %8, align 8
  %66 = getelementptr inbounds %struct.be_fw_cfg, %struct.be_fw_cfg* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %72 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 4
  %74 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %75 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @BE2_MAX_SESSIONS, align 4
  %79 = sdiv i32 %78, 2
  %80 = icmp sgt i32 %77, %79
  br i1 %80, label %81, label %96

81:                                               ; preds = %30
  %82 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %83 = load i32, i32* @KERN_INFO, align 4
  %84 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %85 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %86 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @BE2_MAX_SESSIONS, align 4
  %90 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %82, i32 %83, i32 %84, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %88, i32 %89)
  %91 = load i32, i32* @BE2_MAX_SESSIONS, align 4
  %92 = sdiv i32 %91, 2
  %93 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %94 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 4
  br label %96

96:                                               ; preds = %81, %30
  br label %102

97:                                               ; preds = %2
  %98 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %4, align 8
  %99 = load i32, i32* @KERN_WARNING, align 4
  %100 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %101 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %98, i32 %99, i32 %100, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %102

102:                                              ; preds = %97, %96
  %103 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %3, align 8
  %104 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %103, i32 0, i32 0
  %105 = call i32 @spin_unlock(i32* %104)
  %106 = load i32, i32* %7, align 4
  ret i32 %106
}

declare dso_local %struct.be_mcc_wrb* @wrb_from_mbox(i32*) #1

declare dso_local %struct.be_fw_cfg* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memset(%struct.be_mcc_wrb*, i32, i32) #1

declare dso_local i32 @be_wrb_hdr_prepare(%struct.be_mcc_wrb*, i32, i32, i32) #1

declare dso_local i32 @be_cmd_hdr_prepare(i32*, i32, i32, i32) #1

declare dso_local i32 @be_mbox_notify(%struct.be_ctrl_info*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

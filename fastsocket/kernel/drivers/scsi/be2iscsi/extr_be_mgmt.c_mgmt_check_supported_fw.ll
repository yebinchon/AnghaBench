; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_check_supported_fw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_check_supported_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_ctrl_info = type { i32, i32, i32 }
%struct.beiscsi_hba = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.be_dma_mem = type { i32, i32, %struct.be_mgmt_controller_attributes_resp* }
%struct.be_mgmt_controller_attributes_resp = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.be_mcc_wrb = type { %struct.TYPE_6__, i32 }
%struct.be_mgmt_controller_attributes = type { %struct.TYPE_6__, i32 }
%struct.be_sge = type { i8*, i8*, i8* }

@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"BG_%d : Failed to allocate memory for mgmt_check_supported_fw\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_GET_CNTL_ATTRIBUTES = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [112 x i8] c"BG_%d : Firmware Version of CMD : %s\0AFirmware Version is : %s\0ADeveloper Build, not performing version check...\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"BM_%d : phba->fw_config.iscsi_features = %d\0A\00", align 1
@BEISCSI_VER_STRLEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"BG_%d :  Failed in mgmt_check_supported_fw\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmt_check_supported_fw(%struct.be_ctrl_info* %0, %struct.beiscsi_hba* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.be_ctrl_info*, align 8
  %5 = alloca %struct.beiscsi_hba*, align 8
  %6 = alloca %struct.be_dma_mem, align 8
  %7 = alloca %struct.be_mcc_wrb*, align 8
  %8 = alloca %struct.be_mgmt_controller_attributes*, align 8
  %9 = alloca %struct.be_sge*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.be_mgmt_controller_attributes_resp*, align 8
  store %struct.be_ctrl_info* %0, %struct.be_ctrl_info** %4, align 8
  store %struct.beiscsi_hba* %1, %struct.beiscsi_hba** %5, align 8
  %12 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %13 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %12, i32 0, i32 2
  %14 = call %struct.be_mgmt_controller_attributes_resp* @wrb_from_mbox(i32* %13)
  %15 = bitcast %struct.be_mgmt_controller_attributes_resp* %14 to %struct.be_mcc_wrb*
  store %struct.be_mcc_wrb* %15, %struct.be_mcc_wrb** %7, align 8
  %16 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %17 = bitcast %struct.be_mcc_wrb* %16 to %struct.be_mgmt_controller_attributes_resp*
  %18 = call %struct.be_sge* @nonembedded_sgl(%struct.be_mgmt_controller_attributes_resp* %17)
  store %struct.be_sge* %18, %struct.be_sge** %9, align 8
  store i32 0, i32* %10, align 4
  %19 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %20 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 0
  %23 = call %struct.be_mgmt_controller_attributes_resp* @pci_alloc_consistent(i32 %21, i32 16, i32* %22)
  %24 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 2
  store %struct.be_mgmt_controller_attributes_resp* %23, %struct.be_mgmt_controller_attributes_resp** %24, align 8
  %25 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 2
  %26 = load %struct.be_mgmt_controller_attributes_resp*, %struct.be_mgmt_controller_attributes_resp** %25, align 8
  %27 = icmp eq %struct.be_mgmt_controller_attributes_resp* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %2
  %29 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %30 = load i32, i32* @KERN_ERR, align 4
  %31 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %32 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %29, i32 %30, i32 %31, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %145

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 1
  store i32 16, i32* %36, align 4
  %37 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 2
  %38 = load %struct.be_mgmt_controller_attributes_resp*, %struct.be_mgmt_controller_attributes_resp** %37, align 8
  %39 = bitcast %struct.be_mgmt_controller_attributes_resp* %38 to %struct.be_mgmt_controller_attributes*
  store %struct.be_mgmt_controller_attributes* %39, %struct.be_mgmt_controller_attributes** %8, align 8
  %40 = load %struct.be_mgmt_controller_attributes*, %struct.be_mgmt_controller_attributes** %8, align 8
  %41 = bitcast %struct.be_mgmt_controller_attributes* %40 to %struct.be_mgmt_controller_attributes_resp*
  %42 = call i32 @memset(%struct.be_mgmt_controller_attributes_resp* %41, i32 0, i32 16)
  %43 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %44 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %43, i32 0, i32 1
  %45 = call i32 @spin_lock(i32* %44)
  %46 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %47 = bitcast %struct.be_mcc_wrb* %46 to %struct.be_mgmt_controller_attributes_resp*
  %48 = call i32 @memset(%struct.be_mgmt_controller_attributes_resp* %47, i32 0, i32 16)
  %49 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %7, align 8
  %50 = bitcast %struct.be_mcc_wrb* %49 to %struct.be_mgmt_controller_attributes_resp*
  %51 = call i32 @be_wrb_hdr_prepare(%struct.be_mgmt_controller_attributes_resp* %50, i32 16, i32 0, i32 1)
  %52 = load %struct.be_mgmt_controller_attributes*, %struct.be_mgmt_controller_attributes** %8, align 8
  %53 = getelementptr inbounds %struct.be_mgmt_controller_attributes, %struct.be_mgmt_controller_attributes* %52, i32 0, i32 1
  %54 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %55 = load i32, i32* @OPCODE_COMMON_GET_CNTL_ATTRIBUTES, align 4
  %56 = call i32 @be_cmd_hdr_prepare(i32* %53, i32 %54, i32 %55, i32 16)
  %57 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @upper_32_bits(i32 %58)
  %60 = call i8* @cpu_to_le32(i32 %59)
  %61 = load %struct.be_sge*, %struct.be_sge** %9, align 8
  %62 = getelementptr inbounds %struct.be_sge, %struct.be_sge* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  %63 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i8* @cpu_to_le32(i32 %64)
  %66 = load %struct.be_sge*, %struct.be_sge** %9, align 8
  %67 = getelementptr inbounds %struct.be_sge, %struct.be_sge* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @cpu_to_le32(i32 %69)
  %71 = load %struct.be_sge*, %struct.be_sge** %9, align 8
  %72 = getelementptr inbounds %struct.be_sge, %struct.be_sge* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %74 = call i32 @be_mbox_notify(%struct.be_ctrl_info* %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %120, label %77

77:                                               ; preds = %35
  %78 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 2
  %79 = load %struct.be_mgmt_controller_attributes_resp*, %struct.be_mgmt_controller_attributes_resp** %78, align 8
  store %struct.be_mgmt_controller_attributes_resp* %79, %struct.be_mgmt_controller_attributes_resp** %11, align 8
  %80 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %81 = load i32, i32* @KERN_INFO, align 4
  %82 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %83 = load %struct.be_mgmt_controller_attributes_resp*, %struct.be_mgmt_controller_attributes_resp** %11, align 8
  %84 = getelementptr inbounds %struct.be_mgmt_controller_attributes_resp, %struct.be_mgmt_controller_attributes_resp* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.be_mgmt_controller_attributes_resp*, %struct.be_mgmt_controller_attributes_resp** %11, align 8
  %89 = getelementptr inbounds %struct.be_mgmt_controller_attributes_resp, %struct.be_mgmt_controller_attributes_resp* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %80, i32 %81, i32 %82, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %92)
  %94 = load %struct.be_mgmt_controller_attributes_resp*, %struct.be_mgmt_controller_attributes_resp** %11, align 8
  %95 = getelementptr inbounds %struct.be_mgmt_controller_attributes_resp, %struct.be_mgmt_controller_attributes_resp* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %100 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 4
  %102 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %103 = load i32, i32* @KERN_INFO, align 4
  %104 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %105 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %106 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %102, i32 %103, i32 %104, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  %110 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %111 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.be_mgmt_controller_attributes_resp*, %struct.be_mgmt_controller_attributes_resp** %11, align 8
  %114 = getelementptr inbounds %struct.be_mgmt_controller_attributes_resp, %struct.be_mgmt_controller_attributes_resp* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @BEISCSI_VER_STRLEN, align 4
  %119 = call i32 @memcpy(i32 %112, i32 %117, i32 %118)
  br label %125

120:                                              ; preds = %35
  %121 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %122 = load i32, i32* @KERN_ERR, align 4
  %123 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %124 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %121, i32 %122, i32 %123, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %125

125:                                              ; preds = %120, %77
  %126 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %127 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %126, i32 0, i32 1
  %128 = call i32 @spin_unlock(i32* %127)
  %129 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 2
  %130 = load %struct.be_mgmt_controller_attributes_resp*, %struct.be_mgmt_controller_attributes_resp** %129, align 8
  %131 = icmp ne %struct.be_mgmt_controller_attributes_resp* %130, null
  br i1 %131, label %132, label %143

132:                                              ; preds = %125
  %133 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %134 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 2
  %139 = load %struct.be_mgmt_controller_attributes_resp*, %struct.be_mgmt_controller_attributes_resp** %138, align 8
  %140 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @pci_free_consistent(i32 %135, i32 %137, %struct.be_mgmt_controller_attributes_resp* %139, i32 %141)
  br label %143

143:                                              ; preds = %132, %125
  %144 = load i32, i32* %10, align 4
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %143, %28
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local %struct.be_mgmt_controller_attributes_resp* @wrb_from_mbox(i32*) #1

declare dso_local %struct.be_sge* @nonembedded_sgl(%struct.be_mgmt_controller_attributes_resp*) #1

declare dso_local %struct.be_mgmt_controller_attributes_resp* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.be_mgmt_controller_attributes_resp*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @be_wrb_hdr_prepare(%struct.be_mgmt_controller_attributes_resp*, i32, i32, i32) #1

declare dso_local i32 @be_cmd_hdr_prepare(i32*, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @be_mbox_notify(%struct.be_ctrl_info*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, %struct.be_mgmt_controller_attributes_resp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

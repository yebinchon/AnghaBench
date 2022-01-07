; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_get_if_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_mgmt.c_mgmt_get_if_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32 }
%struct.be_cmd_get_if_info_resp = type { i32 }
%struct.be_cmd_get_if_info_req = type { i32, i32 }
%struct.be_dma_mem = type { %struct.be_cmd_get_if_info_req* }

@EIO = common dso_local global i32 0, align 4
@OPCODE_COMMON_ISCSI_NTWK_GET_IF_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmt_get_if_info(%struct.beiscsi_hba* %0, i32 %1, %struct.be_cmd_get_if_info_resp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.beiscsi_hba*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.be_cmd_get_if_info_resp*, align 8
  %8 = alloca %struct.be_cmd_get_if_info_req*, align 8
  %9 = alloca %struct.be_dma_mem, align 8
  %10 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.be_cmd_get_if_info_resp* %2, %struct.be_cmd_get_if_info_resp** %7, align 8
  %11 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %12 = call i64 @mgmt_get_all_if_id(%struct.beiscsi_hba* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %39

17:                                               ; preds = %3
  %18 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %19 = load i32, i32* @OPCODE_COMMON_ISCSI_NTWK_GET_IF_INFO, align 4
  %20 = call i32 @mgmt_alloc_cmd_data(%struct.beiscsi_hba* %18, %struct.be_dma_mem* %9, i32 %19, i32 4)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %4, align 4
  br label %39

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %9, i32 0, i32 0
  %27 = load %struct.be_cmd_get_if_info_req*, %struct.be_cmd_get_if_info_req** %26, align 8
  store %struct.be_cmd_get_if_info_req* %27, %struct.be_cmd_get_if_info_req** %8, align 8
  %28 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %29 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.be_cmd_get_if_info_req*, %struct.be_cmd_get_if_info_req** %8, align 8
  %32 = getelementptr inbounds %struct.be_cmd_get_if_info_req, %struct.be_cmd_get_if_info_req* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.be_cmd_get_if_info_req*, %struct.be_cmd_get_if_info_req** %8, align 8
  %35 = getelementptr inbounds %struct.be_cmd_get_if_info_req, %struct.be_cmd_get_if_info_req* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %37 = load %struct.be_cmd_get_if_info_resp*, %struct.be_cmd_get_if_info_resp** %7, align 8
  %38 = call i32 @mgmt_exec_nonemb_cmd(%struct.beiscsi_hba* %36, %struct.be_dma_mem* %9, %struct.be_cmd_get_if_info_resp* %37, i32 4)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %25, %23, %14
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i64 @mgmt_get_all_if_id(%struct.beiscsi_hba*) #1

declare dso_local i32 @mgmt_alloc_cmd_data(%struct.beiscsi_hba*, %struct.be_dma_mem*, i32, i32) #1

declare dso_local i32 @mgmt_exec_nonemb_cmd(%struct.beiscsi_hba*, %struct.be_dma_mem*, %struct.be_cmd_get_if_info_resp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_get_seq_num.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_get_seq_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i32 }
%struct.megasas_evt_log_info = type { i32 }
%struct.megasas_cmd = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.megasas_dcmd_frame }
%struct.megasas_dcmd_frame = type { i32, i32, i32, %struct.TYPE_8__, i32, i64, i64, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.megasas_evt_log_info* }

@ENOMEM = common dso_local global i32 0, align 4
@MFI_MBOX_SIZE = common dso_local global i32 0, align 4
@MFI_CMD_DCMD = common dso_local global i32 0, align 4
@MFI_FRAME_DIR_READ = common dso_local global i32 0, align 4
@MR_DCMD_CTRL_EVENT_GET_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.megasas_instance*, %struct.megasas_evt_log_info*)* @megasas_get_seq_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @megasas_get_seq_num(%struct.megasas_instance* %0, %struct.megasas_evt_log_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.megasas_instance*, align 8
  %5 = alloca %struct.megasas_evt_log_info*, align 8
  %6 = alloca %struct.megasas_cmd*, align 8
  %7 = alloca %struct.megasas_dcmd_frame*, align 8
  %8 = alloca %struct.megasas_evt_log_info*, align 8
  %9 = alloca i32, align 4
  store %struct.megasas_instance* %0, %struct.megasas_instance** %4, align 8
  store %struct.megasas_evt_log_info* %1, %struct.megasas_evt_log_info** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %11 = call %struct.megasas_cmd* @megasas_get_cmd(%struct.megasas_instance* %10)
  store %struct.megasas_cmd* %11, %struct.megasas_cmd** %6, align 8
  %12 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %13 = icmp ne %struct.megasas_cmd* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %90

17:                                               ; preds = %2
  %18 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %19 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store %struct.megasas_dcmd_frame* %21, %struct.megasas_dcmd_frame** %7, align 8
  %22 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %23 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.megasas_evt_log_info* @pci_alloc_consistent(i32 %24, i32 4, i32* %9)
  store %struct.megasas_evt_log_info* %25, %struct.megasas_evt_log_info** %8, align 8
  %26 = load %struct.megasas_evt_log_info*, %struct.megasas_evt_log_info** %8, align 8
  %27 = icmp ne %struct.megasas_evt_log_info* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %17
  %29 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %30 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %31 = call i32 @megasas_return_cmd(%struct.megasas_instance* %29, %struct.megasas_cmd* %30)
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %90

34:                                               ; preds = %17
  %35 = load %struct.megasas_evt_log_info*, %struct.megasas_evt_log_info** %8, align 8
  %36 = call i32 @memset(%struct.megasas_evt_log_info* %35, i32 0, i32 4)
  %37 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %38 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %37, i32 0, i32 9
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.megasas_evt_log_info*, %struct.megasas_evt_log_info** %39, align 8
  %41 = load i32, i32* @MFI_MBOX_SIZE, align 4
  %42 = call i32 @memset(%struct.megasas_evt_log_info* %40, i32 0, i32 %41)
  %43 = load i32, i32* @MFI_CMD_DCMD, align 4
  %44 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %45 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 4
  %46 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %47 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %49 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  %50 = load i32, i32* @MFI_FRAME_DIR_READ, align 4
  %51 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %52 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %51, i32 0, i32 7
  store i32 %50, i32* %52, align 8
  %53 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %54 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %53, i32 0, i32 6
  store i64 0, i64* %54, align 8
  %55 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %56 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %55, i32 0, i32 5
  store i64 0, i64* %56, align 8
  %57 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %58 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %57, i32 0, i32 2
  store i32 4, i32* %58, align 8
  %59 = load i32, i32* @MR_DCMD_CTRL_EVENT_GET_INFO, align 4
  %60 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %61 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %64 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  store i32 %62, i32* %68, align 4
  %69 = load %struct.megasas_dcmd_frame*, %struct.megasas_dcmd_frame** %7, align 8
  %70 = getelementptr inbounds %struct.megasas_dcmd_frame, %struct.megasas_dcmd_frame* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  store i32 4, i32* %74, align 4
  %75 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %76 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %77 = call i32 @megasas_issue_blocked_cmd(%struct.megasas_instance* %75, %struct.megasas_cmd* %76)
  %78 = load %struct.megasas_evt_log_info*, %struct.megasas_evt_log_info** %5, align 8
  %79 = load %struct.megasas_evt_log_info*, %struct.megasas_evt_log_info** %8, align 8
  %80 = call i32 @memcpy(%struct.megasas_evt_log_info* %78, %struct.megasas_evt_log_info* %79, i32 4)
  %81 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %82 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.megasas_evt_log_info*, %struct.megasas_evt_log_info** %8, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @pci_free_consistent(i32 %83, i32 4, %struct.megasas_evt_log_info* %84, i32 %85)
  %87 = load %struct.megasas_instance*, %struct.megasas_instance** %4, align 8
  %88 = load %struct.megasas_cmd*, %struct.megasas_cmd** %6, align 8
  %89 = call i32 @megasas_return_cmd(%struct.megasas_instance* %87, %struct.megasas_cmd* %88)
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %34, %28, %14
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.megasas_cmd* @megasas_get_cmd(%struct.megasas_instance*) #1

declare dso_local %struct.megasas_evt_log_info* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @megasas_return_cmd(%struct.megasas_instance*, %struct.megasas_cmd*) #1

declare dso_local i32 @memset(%struct.megasas_evt_log_info*, i32, i32) #1

declare dso_local i32 @megasas_issue_blocked_cmd(%struct.megasas_instance*, %struct.megasas_cmd*) #1

declare dso_local i32 @memcpy(%struct.megasas_evt_log_info*, %struct.megasas_evt_log_info*, i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, %struct.megasas_evt_log_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

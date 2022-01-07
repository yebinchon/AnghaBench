; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_be_mcc_queues_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_be_mcc_queues_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.be_ctrl_info }
%struct.be_ctrl_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.be_queue_info, %struct.be_queue_info }
%struct.be_queue_info = type { i64 }

@QTYPE_MCCQ = common dso_local global i32 0, align 4
@QTYPE_CQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.beiscsi_hba*)* @be_mcc_queues_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_mcc_queues_destroy(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca %struct.beiscsi_hba*, align 8
  %3 = alloca %struct.be_queue_info*, align 8
  %4 = alloca %struct.be_ctrl_info*, align 8
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %2, align 8
  %5 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %6 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %5, i32 0, i32 0
  store %struct.be_ctrl_info* %6, %struct.be_ctrl_info** %4, align 8
  %7 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %8 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store %struct.be_queue_info* %10, %struct.be_queue_info** %3, align 8
  %11 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %12 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %17 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %18 = load i32, i32* @QTYPE_MCCQ, align 4
  %19 = call i32 @beiscsi_cmd_q_destroy(%struct.be_ctrl_info* %16, %struct.be_queue_info* %17, i32 %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %22 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %23 = call i32 @be_queue_free(%struct.beiscsi_hba* %21, %struct.be_queue_info* %22)
  %24 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %25 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.be_ctrl_info, %struct.be_ctrl_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store %struct.be_queue_info* %27, %struct.be_queue_info** %3, align 8
  %28 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %29 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %20
  %33 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %4, align 8
  %34 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %35 = load i32, i32* @QTYPE_CQ, align 4
  %36 = call i32 @beiscsi_cmd_q_destroy(%struct.be_ctrl_info* %33, %struct.be_queue_info* %34, i32 %35)
  br label %37

37:                                               ; preds = %32, %20
  %38 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %39 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %40 = call i32 @be_queue_free(%struct.beiscsi_hba* %38, %struct.be_queue_info* %39)
  ret void
}

declare dso_local i32 @beiscsi_cmd_q_destroy(%struct.be_ctrl_info*, %struct.be_queue_info*, i32) #1

declare dso_local i32 @be_queue_free(%struct.beiscsi_hba*, %struct.be_queue_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

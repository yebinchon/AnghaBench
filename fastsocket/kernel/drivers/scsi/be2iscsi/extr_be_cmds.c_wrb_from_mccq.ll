; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_cmds.c_wrb_from_mccq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_cmds.c_wrb_from_mccq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_mcc_wrb = type { i32 }
%struct.beiscsi_hba = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.be_queue_info }
%struct.be_queue_info = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca %struct.beiscsi_hba*, align 8
  %3 = alloca %struct.be_queue_info*, align 8
  %4 = alloca %struct.be_mcc_wrb*, align 8
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %2, align 8
  %5 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %6 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store %struct.be_queue_info* %8, %struct.be_queue_info** %3, align 8
  %9 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %10 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %9, i32 0, i32 2
  %11 = call i64 @atomic_read(i32* %10)
  %12 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %13 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sge i64 %11, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %19 = call %struct.be_mcc_wrb* @queue_head_node(%struct.be_queue_info* %18)
  store %struct.be_mcc_wrb* %19, %struct.be_mcc_wrb** %4, align 8
  %20 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %4, align 8
  %21 = call i32 @memset(%struct.be_mcc_wrb* %20, i32 0, i32 4)
  %22 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %23 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, 255
  %26 = shl i32 %25, 16
  %27 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %4, align 8
  %28 = getelementptr inbounds %struct.be_mcc_wrb, %struct.be_mcc_wrb* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %30 = call i32 @queue_head_inc(%struct.be_queue_info* %29)
  %31 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %32 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %31, i32 0, i32 2
  %33 = call i32 @atomic_inc(i32* %32)
  %34 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %4, align 8
  ret %struct.be_mcc_wrb* %34
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.be_mcc_wrb* @queue_head_node(%struct.be_queue_info*) #1

declare dso_local i32 @memset(%struct.be_mcc_wrb*, i32, i32) #1

declare dso_local i32 @queue_head_inc(%struct.be_queue_info*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_cmds.c_be_mcc_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_cmds.c_be_mcc_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.be_queue_info }
%struct.be_queue_info = type { i32 }

@DB_MCCQ_RING_ID_MASK = common dso_local global i32 0, align 4
@DB_MCCQ_NUM_POSTED_SHIFT = common dso_local global i32 0, align 4
@DB_MCCQ_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @be_mcc_notify(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca %struct.beiscsi_hba*, align 8
  %3 = alloca %struct.be_queue_info*, align 8
  %4 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %2, align 8
  %5 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %6 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store %struct.be_queue_info* %8, %struct.be_queue_info** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %10 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @DB_MCCQ_RING_ID_MASK, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* %4, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @DB_MCCQ_NUM_POSTED_SHIFT, align 4
  %17 = shl i32 1, %16
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %22 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DB_MCCQ_OFFSET, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @iowrite32(i32 %20, i64 %25)
  ret void
}

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

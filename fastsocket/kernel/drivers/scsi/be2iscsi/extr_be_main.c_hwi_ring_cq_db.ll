; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_hwi_ring_cq_db.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_hwi_ring_cq_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i64 }

@DB_CQ_RING_ID_MASK = common dso_local global i32 0, align 4
@DB_CQ_REARM_SHIFT = common dso_local global i32 0, align 4
@DB_CQ_NUM_POPPED_SHIFT = common dso_local global i32 0, align 4
@DB_CQ_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.beiscsi_hba*, i32, i32, i8, i8)* @hwi_ring_cq_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hwi_ring_cq_db(%struct.beiscsi_hba* %0, i32 %1, i32 %2, i8 zeroext %3, i8 zeroext %4) #0 {
  %6 = alloca %struct.beiscsi_hba*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8 %3, i8* %9, align 1
  store i8 %4, i8* %10, align 1
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @DB_CQ_RING_ID_MASK, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* %11, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %11, align 4
  %17 = load i8, i8* %9, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %5
  %20 = load i32, i32* @DB_CQ_REARM_SHIFT, align 4
  %21 = shl i32 1, %20
  %22 = load i32, i32* %11, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %11, align 4
  br label %24

24:                                               ; preds = %19, %5
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @DB_CQ_NUM_POPPED_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* %11, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %32 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DB_CQ_OFFSET, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @iowrite32(i32 %30, i64 %35)
  ret void
}

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

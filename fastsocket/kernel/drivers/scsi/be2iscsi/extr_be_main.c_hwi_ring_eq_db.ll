; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_hwi_ring_eq_db.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_hwi_ring_eq_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i64 }

@DB_EQ_RING_ID_MASK = common dso_local global i32 0, align 4
@DB_EQ_REARM_SHIFT = common dso_local global i32 0, align 4
@DB_EQ_CLR_SHIFT = common dso_local global i32 0, align 4
@DB_EQ_EVNT_SHIFT = common dso_local global i32 0, align 4
@DB_EQ_NUM_POPPED_SHIFT = common dso_local global i32 0, align 4
@DB_EQ_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.beiscsi_hba*, i32, i32, i32, i8, i8)* @hwi_ring_eq_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hwi_ring_eq_db(%struct.beiscsi_hba* %0, i32 %1, i32 %2, i32 %3, i8 zeroext %4, i8 zeroext %5) #0 {
  %7 = alloca %struct.beiscsi_hba*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8 %4, i8* %11, align 1
  store i8 %5, i8* %12, align 1
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @DB_EQ_RING_ID_MASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* %13, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %13, align 4
  %19 = load i8, i8* %11, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %6
  %22 = load i32, i32* @DB_EQ_REARM_SHIFT, align 4
  %23 = shl i32 1, %22
  %24 = load i32, i32* %13, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %13, align 4
  br label %26

26:                                               ; preds = %21, %6
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32, i32* @DB_EQ_CLR_SHIFT, align 4
  %31 = shl i32 1, %30
  %32 = load i32, i32* %13, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %13, align 4
  br label %34

34:                                               ; preds = %29, %26
  %35 = load i8, i8* %12, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32, i32* @DB_EQ_EVNT_SHIFT, align 4
  %39 = shl i32 1, %38
  %40 = load i32, i32* %13, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %13, align 4
  br label %42

42:                                               ; preds = %37, %34
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @DB_EQ_NUM_POPPED_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* %13, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %7, align 8
  %50 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DB_EQ_OFFSET, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @iowrite32(i32 %48, i64 %53)
  ret void
}

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

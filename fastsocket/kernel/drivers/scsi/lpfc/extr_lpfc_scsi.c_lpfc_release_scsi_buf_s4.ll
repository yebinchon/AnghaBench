; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_release_scsi_buf_s4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_release_scsi_buf_s4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.lpfc_scsi_buf = type { i32, %struct.TYPE_4__, i32*, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i32 }

@LPFC_IO_FCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_scsi_buf*)* @lpfc_release_scsi_buf_s4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_release_scsi_buf_s4(%struct.lpfc_hba* %0, %struct.lpfc_scsi_buf* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_scsi_buf*, align 8
  %5 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.lpfc_scsi_buf* %1, %struct.lpfc_scsi_buf** %4, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %4, align 8
  %7 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %6, i32 0, i32 6
  store i64 0, i64* %7, align 8
  %8 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %4, align 8
  %9 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %8, i32 0, i32 5
  store i64 0, i64* %9, align 8
  %10 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %4, align 8
  %11 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %10, i32 0, i32 4
  store i64 0, i64* %11, align 8
  %12 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %4, align 8
  %13 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %2
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %18 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %4, align 8
  %23 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %22, i32 0, i32 2
  store i32* null, i32** %23, align 8
  %24 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %4, align 8
  %25 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %24, i32 0, i32 0
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %27 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = call i32 @list_add_tail(i32* %25, i32* %28)
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %31 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  br label %55

35:                                               ; preds = %2
  %36 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %4, align 8
  %37 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %36, i32 0, i32 2
  store i32* null, i32** %37, align 8
  %38 = load i32, i32* @LPFC_IO_FCP, align 4
  %39 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %4, align 8
  %40 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %43 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %42, i32 0, i32 0
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %4, align 8
  %47 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %46, i32 0, i32 0
  %48 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %49 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %48, i32 0, i32 1
  %50 = call i32 @list_add_tail(i32* %47, i32* %49)
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %52 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %51, i32 0, i32 0
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  br label %55

55:                                               ; preds = %35, %16
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

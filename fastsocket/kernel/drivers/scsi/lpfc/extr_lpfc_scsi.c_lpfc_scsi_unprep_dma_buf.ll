; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_scsi_unprep_dma_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_scsi_unprep_dma_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.lpfc_scsi_buf = type { i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_scsi_buf*)* @lpfc_scsi_unprep_dma_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_scsi_unprep_dma_buf(%struct.lpfc_hba* %0, %struct.lpfc_scsi_buf* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_scsi_buf*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.lpfc_scsi_buf* %1, %struct.lpfc_scsi_buf** %4, align 8
  %5 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %4, align 8
  %6 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %4, align 8
  %11 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %10, i32 0, i32 2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = call i32 @scsi_dma_unmap(%struct.TYPE_6__* %12)
  br label %14

14:                                               ; preds = %9, %2
  %15 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %4, align 8
  %16 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %14
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %21 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %4, align 8
  %25 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %24, i32 0, i32 2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = call i32 @scsi_prot_sglist(%struct.TYPE_6__* %26)
  %28 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %4, align 8
  %29 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %28, i32 0, i32 2
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = call i32 @scsi_prot_sg_count(%struct.TYPE_6__* %30)
  %32 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %4, align 8
  %33 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %32, i32 0, i32 2
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dma_unmap_sg(i32* %23, i32 %27, i32 %31, i32 %36)
  br label %38

38:                                               ; preds = %19, %14
  ret void
}

declare dso_local i32 @scsi_dma_unmap(%struct.TYPE_6__*) #1

declare dso_local i32 @dma_unmap_sg(i32*, i32, i32, i32) #1

declare dso_local i32 @scsi_prot_sglist(%struct.TYPE_6__*) #1

declare dso_local i32 @scsi_prot_sg_count(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

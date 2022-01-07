; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_free_hbq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_free_hbq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.lpfc_hba*, %struct.hbq_dmabuf*)* }
%struct.hbq_dmabuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_sli_free_hbq(%struct.lpfc_hba* %0, %struct.hbq_dmabuf* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.hbq_dmabuf*, align 8
  %5 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.hbq_dmabuf* %1, %struct.hbq_dmabuf** %4, align 8
  %6 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %4, align 8
  %7 = icmp ne %struct.hbq_dmabuf* %6, null
  br i1 %7, label %8, label %31

8:                                                ; preds = %2
  %9 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %4, align 8
  %10 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = ashr i32 %11, 16
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %5, align 8
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %4, align 8
  %17 = call i64 @lpfc_sli_hbq_to_firmware(%struct.lpfc_hba* %14, i64 %15, %struct.hbq_dmabuf* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %8
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %21 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.lpfc_hba*, %struct.hbq_dmabuf*)*, i32 (%struct.lpfc_hba*, %struct.hbq_dmabuf*)** %25, align 8
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %28 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %4, align 8
  %29 = call i32 %26(%struct.lpfc_hba* %27, %struct.hbq_dmabuf* %28)
  br label %30

30:                                               ; preds = %19, %8
  br label %31

31:                                               ; preds = %30, %2
  ret void
}

declare dso_local i64 @lpfc_sli_hbq_to_firmware(%struct.lpfc_hba*, i64, %struct.hbq_dmabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

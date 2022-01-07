; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_mem.c_lpfc_sli4_rb_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_mem.c_lpfc_sli4_rb_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32 }
%struct.hbq_dmabuf = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_sli4_rb_free(%struct.lpfc_hba* %0, %struct.hbq_dmabuf* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.hbq_dmabuf*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.hbq_dmabuf* %1, %struct.hbq_dmabuf** %4, align 8
  %5 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %6 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %4, align 8
  %9 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %4, align 8
  %13 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pci_pool_free(i32 %7, i32 %11, i32 %15)
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %18 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %4, align 8
  %21 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %4, align 8
  %25 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pci_pool_free(i32 %19, i32 %23, i32 %27)
  %29 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %4, align 8
  %30 = call i32 @kfree(%struct.hbq_dmabuf* %29)
  ret void
}

declare dso_local i32 @pci_pool_free(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.hbq_dmabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

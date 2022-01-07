; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_mem.c_lpfc_els_hbq_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_mem.c_lpfc_els_hbq_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hbq_dmabuf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.lpfc_hba = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@LPFC_BPL_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hbq_dmabuf* @lpfc_els_hbq_alloc(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.hbq_dmabuf*, align 8
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.hbq_dmabuf*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.hbq_dmabuf* @kzalloc(i32 12, i32 %5)
  store %struct.hbq_dmabuf* %6, %struct.hbq_dmabuf** %4, align 8
  %7 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %4, align 8
  %8 = icmp ne %struct.hbq_dmabuf* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.hbq_dmabuf* null, %struct.hbq_dmabuf** %2, align 8
  br label %35

10:                                               ; preds = %1
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %12 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %4, align 8
  %16 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = call i32 @pci_pool_alloc(i32 %13, i32 %14, i32* %17)
  %19 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %4, align 8
  %20 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %4, align 8
  %23 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %10
  %28 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %4, align 8
  %29 = call i32 @kfree(%struct.hbq_dmabuf* %28)
  store %struct.hbq_dmabuf* null, %struct.hbq_dmabuf** %2, align 8
  br label %35

30:                                               ; preds = %10
  %31 = load i32, i32* @LPFC_BPL_SIZE, align 4
  %32 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %4, align 8
  %33 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %4, align 8
  store %struct.hbq_dmabuf* %34, %struct.hbq_dmabuf** %2, align 8
  br label %35

35:                                               ; preds = %30, %27, %9
  %36 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %2, align 8
  ret %struct.hbq_dmabuf* %36
}

declare dso_local %struct.hbq_dmabuf* @kzalloc(i32, i32) #1

declare dso_local i32 @pci_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @kfree(%struct.hbq_dmabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

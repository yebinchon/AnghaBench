; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_flush_fcp_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_flush_fcp_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, %struct.lpfc_sli }
%struct.lpfc_sli = type { i64, %struct.lpfc_sli_ring* }
%struct.lpfc_sli_ring = type { i32, i32 }

@txq = common dso_local global i32 0, align 4
@txcmplq = common dso_local global i32 0, align 4
@HBA_FCP_IOQ_FLUSH = common dso_local global i32 0, align 4
@IOSTAT_LOCAL_REJECT = common dso_local global i32 0, align 4
@IOERR_SLI_DOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_sli_flush_fcp_rings(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.lpfc_sli*, align 8
  %4 = alloca %struct.lpfc_sli_ring*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %5 = load i32, i32* @txq, align 4
  %6 = call i32 @LIST_HEAD(i32 %5)
  %7 = load i32, i32* @txcmplq, align 4
  %8 = call i32 @LIST_HEAD(i32 %7)
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %10 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %9, i32 0, i32 2
  store %struct.lpfc_sli* %10, %struct.lpfc_sli** %3, align 8
  %11 = load %struct.lpfc_sli*, %struct.lpfc_sli** %3, align 8
  %12 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %11, i32 0, i32 1
  %13 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %12, align 8
  %14 = load %struct.lpfc_sli*, %struct.lpfc_sli** %3, align 8
  %15 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %13, i64 %16
  store %struct.lpfc_sli_ring* %17, %struct.lpfc_sli_ring** %4, align 8
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %19 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %18, i32 0, i32 0
  %20 = call i32 @spin_lock_irq(i32* %19)
  %21 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %22 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %21, i32 0, i32 1
  %23 = call i32 @list_splice_init(i32* %22, i32* @txq)
  %24 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %25 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %24, i32 0, i32 0
  %26 = call i32 @list_splice_init(i32* %25, i32* @txcmplq)
  %27 = load i32, i32* @HBA_FCP_IOQ_FLUSH, align 4
  %28 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %29 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %33 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock_irq(i32* %33)
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %36 = load i32, i32* @IOSTAT_LOCAL_REJECT, align 4
  %37 = load i32, i32* @IOERR_SLI_DOWN, align 4
  %38 = call i32 @lpfc_sli_cancel_iocbs(%struct.lpfc_hba* %35, i32* @txq, i32 %36, i32 %37)
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %40 = load i32, i32* @IOSTAT_LOCAL_REJECT, align 4
  %41 = load i32, i32* @IOERR_SLI_DOWN, align 4
  %42 = call i32 @lpfc_sli_cancel_iocbs(%struct.lpfc_hba* %39, i32* @txcmplq, i32 %40, i32 %41)
  ret void
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_splice_init(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lpfc_sli_cancel_iocbs(%struct.lpfc_hba*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

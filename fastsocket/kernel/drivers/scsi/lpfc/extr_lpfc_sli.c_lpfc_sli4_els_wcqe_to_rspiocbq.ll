; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_els_wcqe_to_rspiocbq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_els_wcqe_to_rspiocbq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.lpfc_sli_ring* }
%struct.lpfc_sli_ring = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.lpfc_iocbq = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.lpfc_wcqe_complete }
%struct.lpfc_wcqe_complete = type { i32 }

@LPFC_ELS_RING = common dso_local global i64 0, align 8
@lpfc_wcqe_c_request_tag = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"0386 ELS complete with no corresponding cmdiocb: iotag (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lpfc_iocbq* (%struct.lpfc_hba*, %struct.lpfc_iocbq*)* @lpfc_sli4_els_wcqe_to_rspiocbq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lpfc_iocbq* @lpfc_sli4_els_wcqe_to_rspiocbq(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1) #0 {
  %3 = alloca %struct.lpfc_iocbq*, align 8
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_sli_ring*, align 8
  %7 = alloca %struct.lpfc_iocbq*, align 8
  %8 = alloca %struct.lpfc_wcqe_complete*, align 8
  %9 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %11 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %12, align 8
  %14 = load i64, i64* @LPFC_ELS_RING, align 8
  %15 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %13, i64 %14
  store %struct.lpfc_sli_ring* %15, %struct.lpfc_sli_ring** %6, align 8
  %16 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %17 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store %struct.lpfc_wcqe_complete* %19, %struct.lpfc_wcqe_complete** %8, align 8
  %20 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %21 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %20, i32 0, i32 0
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %25 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %30 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %31 = load i32, i32* @lpfc_wcqe_c_request_tag, align 4
  %32 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %8, align 8
  %33 = call i32 @bf_get(i32 %31, %struct.lpfc_wcqe_complete* %32)
  %34 = call %struct.lpfc_iocbq* @lpfc_sli_iocbq_lookup_by_tag(%struct.lpfc_hba* %29, %struct.lpfc_sli_ring* %30, i32 %33)
  store %struct.lpfc_iocbq* %34, %struct.lpfc_iocbq** %7, align 8
  %35 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %36 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %35, i32 0, i32 0
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %40 = icmp ne %struct.lpfc_iocbq* %39, null
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %2
  %46 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %47 = load i32, i32* @KERN_WARNING, align 4
  %48 = load i32, i32* @LOG_SLI, align 4
  %49 = load i32, i32* @lpfc_wcqe_c_request_tag, align 4
  %50 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %8, align 8
  %51 = call i32 @bf_get(i32 %49, %struct.lpfc_wcqe_complete* %50)
  %52 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %46, i32 %47, i32 %48, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %54 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %55 = call i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba* %53, %struct.lpfc_iocbq* %54)
  store %struct.lpfc_iocbq* null, %struct.lpfc_iocbq** %3, align 8
  br label %63

56:                                               ; preds = %2
  %57 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %58 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %59 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %60 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %8, align 8
  %61 = call i32 @lpfc_sli4_iocb_param_transfer(%struct.lpfc_hba* %57, %struct.lpfc_iocbq* %58, %struct.lpfc_iocbq* %59, %struct.lpfc_wcqe_complete* %60)
  %62 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  store %struct.lpfc_iocbq* %62, %struct.lpfc_iocbq** %3, align 8
  br label %63

63:                                               ; preds = %56, %45
  %64 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %3, align 8
  ret %struct.lpfc_iocbq* %64
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_sli_iocbq_lookup_by_tag(%struct.lpfc_hba*, %struct.lpfc_sli_ring*, i32) #1

declare dso_local i32 @bf_get(i32, %struct.lpfc_wcqe_complete*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32) #1

declare dso_local i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @lpfc_sli4_iocb_param_transfer(%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*, %struct.lpfc_wcqe_complete*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

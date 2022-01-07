; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_sp_handle_els_wcqe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_sp_handle_els_wcqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, %struct.TYPE_10__, i32, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.lpfc_queue = type { %struct.lpfc_sli_ring* }
%struct.lpfc_sli_ring = type { i32, i32 }
%struct.lpfc_wcqe_complete = type { i32 }
%struct.lpfc_iocbq = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@LPFC_FCP_RING = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"0387 NO IOCBQ data: txq_cnt=%d iocb_cnt=%d fcp_txcmplq_cnt=%d, els_txcmplq_cnt=%d\0A\00", align 1
@HBA_SP_QUEUE_EVT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_queue*, %struct.lpfc_wcqe_complete*)* @lpfc_sli4_sp_handle_els_wcqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_sp_handle_els_wcqe(%struct.lpfc_hba* %0, %struct.lpfc_queue* %1, %struct.lpfc_wcqe_complete* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_queue*, align 8
  %7 = alloca %struct.lpfc_wcqe_complete*, align 8
  %8 = alloca %struct.lpfc_iocbq*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.lpfc_sli_ring*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.lpfc_queue* %1, %struct.lpfc_queue** %6, align 8
  store %struct.lpfc_wcqe_complete* %2, %struct.lpfc_wcqe_complete** %7, align 8
  %14 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %15 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %14, i32 0, i32 0
  %16 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %15, align 8
  store %struct.lpfc_sli_ring* %16, %struct.lpfc_sli_ring** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %18 = call %struct.lpfc_iocbq* @lpfc_sli_get_iocbq(%struct.lpfc_hba* %17)
  store %struct.lpfc_iocbq* %18, %struct.lpfc_iocbq** %8, align 8
  %19 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %20 = icmp ne %struct.lpfc_iocbq* %19, null
  br i1 %20, label %61, label %21

21:                                               ; preds = %3
  %22 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %10, align 8
  %23 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %22, i32 0, i32 1
  %24 = call i32 @list_empty(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %11, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %26, %21
  %30 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %10, align 8
  %31 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %30, i32 0, i32 0
  %32 = call i32 @list_empty(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %12, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %12, align 4
  br label %37

37:                                               ; preds = %34, %29
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %39 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load i64, i64* @LPFC_FCP_RING, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = call i32 @list_empty(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %37
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %47, %37
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %52 = load i32, i32* @KERN_ERR, align 4
  %53 = load i32, i32* @LOG_SLI, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %56 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %51, i32 %52, i32 %53, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %57, i32 %58, i32 %59)
  store i32 0, i32* %4, align 4
  br label %88

61:                                               ; preds = %3
  %62 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %63 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %7, align 8
  %67 = call i32 @memcpy(i32* %65, %struct.lpfc_wcqe_complete* %66, i32 4)
  %68 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %69 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %68, i32 0, i32 0
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @spin_lock_irqsave(i32* %69, i64 %70)
  %72 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %73 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %76 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = call i32 @list_add_tail(i32* %74, i32* %77)
  %79 = load i32, i32* @HBA_SP_QUEUE_EVT, align 4
  %80 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %81 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %85 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %84, i32 0, i32 0
  %86 = load i64, i64* %9, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  store i32 1, i32* %4, align 4
  br label %88

88:                                               ; preds = %61, %50
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.lpfc_iocbq* @lpfc_sli_get_iocbq(%struct.lpfc_hba*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.lpfc_wcqe_complete*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

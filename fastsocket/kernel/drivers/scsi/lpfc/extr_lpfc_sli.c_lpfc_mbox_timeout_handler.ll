; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_mbox_timeout_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_mbox_timeout_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, %struct.TYPE_6__*, %struct.lpfc_sli }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.lpfc_sli = type { i64, %struct.lpfc_sli_ring*, i32, %struct.TYPE_8__* }
%struct.lpfc_sli_ring = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_MBOX = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"0353 Active Mailbox cleared - mailbox timeout exiting\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"0310 Mailbox command x%x timeout Data: x%x x%x x%p\0A\00", align 1
@WORKER_MBOX_TMO = common dso_local global i32 0, align 4
@LPFC_LINK_UNKNOWN = common dso_local global i32 0, align 4
@LPFC_SLI_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"0345 Resetting board due to mailbox timeout\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_mbox_timeout_handler(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.lpfc_sli*, align 8
  %6 = alloca %struct.lpfc_sli_ring*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %7 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %8 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %8, i32 0, i32 3
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %3, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %4, align 8
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %15 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %14, i32 0, i32 3
  store %struct.lpfc_sli* %15, %struct.lpfc_sli** %5, align 8
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %17 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %16, i32 0, i32 0
  %18 = call i32 @spin_lock_irq(i32* %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = icmp eq %struct.TYPE_8__* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %1
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %23 = load i32, i32* @KERN_WARNING, align 4
  %24 = load i32, i32* @LOG_MBOX, align 4
  %25 = load i32, i32* @LOG_SLI, align 4
  %26 = or i32 %24, %25
  %27 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %22, i32 %23, i32 %26, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %29 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock_irq(i32* %29)
  br label %108

31:                                               ; preds = %1
  %32 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %33 = load i32, i32* @KERN_ERR, align 4
  %34 = load i32, i32* @LOG_MBOX, align 4
  %35 = load i32, i32* @LOG_SLI, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %41 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %40, i32 0, i32 2
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %46 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %50 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %50, i32 0, i32 3
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %32, i32 %33, i32 %36, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %44, i32 %48, %struct.TYPE_8__* %52)
  %54 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %55 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock_irq(i32* %55)
  %57 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %58 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %57, i32 0, i32 2
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = call i32 @spin_lock_irq(i32* %60)
  %62 = load i32, i32* @WORKER_MBOX_TMO, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %65 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %64, i32 0, i32 2
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %63
  store i32 %69, i32* %67, align 4
  %70 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %71 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %70, i32 0, i32 2
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = call i32 @spin_unlock_irq(i32* %73)
  %75 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %76 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %75, i32 0, i32 0
  %77 = call i32 @spin_lock_irq(i32* %76)
  %78 = load i32, i32* @LPFC_LINK_UNKNOWN, align 4
  %79 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %80 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @LPFC_SLI_ACTIVE, align 4
  %82 = xor i32 %81, -1
  %83 = load %struct.lpfc_sli*, %struct.lpfc_sli** %5, align 8
  %84 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = and i32 %85, %82
  store i32 %86, i32* %84, align 8
  %87 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %88 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %87, i32 0, i32 0
  %89 = call i32 @spin_unlock_irq(i32* %88)
  %90 = load %struct.lpfc_sli*, %struct.lpfc_sli** %5, align 8
  %91 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %90, i32 0, i32 1
  %92 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %91, align 8
  %93 = load %struct.lpfc_sli*, %struct.lpfc_sli** %5, align 8
  %94 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %92, i64 %95
  store %struct.lpfc_sli_ring* %96, %struct.lpfc_sli_ring** %6, align 8
  %97 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %98 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %99 = call i32 @lpfc_sli_abort_iocb_ring(%struct.lpfc_hba* %97, %struct.lpfc_sli_ring* %98)
  %100 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %101 = load i32, i32* @KERN_ERR, align 4
  %102 = load i32, i32* @LOG_MBOX, align 4
  %103 = load i32, i32* @LOG_SLI, align 4
  %104 = or i32 %102, %103
  %105 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %100, i32 %101, i32 %104, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %106 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %107 = call i32 @lpfc_reset_hba(%struct.lpfc_hba* %106)
  br label %108

108:                                              ; preds = %31, %21
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lpfc_sli_abort_iocb_ring(%struct.lpfc_hba*, %struct.lpfc_sli_ring*) #1

declare dso_local i32 @lpfc_reset_hba(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

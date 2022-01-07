; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_nlp_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_nlp_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_nodelist = type { %struct.TYPE_2__, i32, i32, %struct.lpfc_hba*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.lpfc_hba = type { i32 }

@LPFC_DISC_TRC_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"node get:        did:x%x flg:x%x refcnt:x%x\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_NODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"0276 lpfc_nlp_get: ndlp:x%p usgmap:x%x refcnt:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lpfc_nodelist* @lpfc_nlp_get(%struct.lpfc_nodelist* %0) #0 {
  %2 = alloca %struct.lpfc_nodelist*, align 8
  %3 = alloca %struct.lpfc_nodelist*, align 8
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i64, align 8
  store %struct.lpfc_nodelist* %0, %struct.lpfc_nodelist** %3, align 8
  %6 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %7 = icmp ne %struct.lpfc_nodelist* %6, null
  br i1 %7, label %8, label %67

8:                                                ; preds = %1
  %9 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %10 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @LPFC_DISC_TRC_NODE, align 4
  %13 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %14 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %17 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %20 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @atomic_read(i32* %21)
  %23 = call i32 @lpfc_debugfs_disc_trc(i32 %11, i32 %12, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %22)
  %24 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %25 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %24, i32 0, i32 3
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %25, align 8
  store %struct.lpfc_hba* %26, %struct.lpfc_hba** %4, align 8
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %28 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %27, i32 0, i32 0
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %32 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %8
  %35 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %36 = call i64 @NLP_CHK_FREE_ACK(%struct.lpfc_nodelist* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %34, %8
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %40 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %39, i32 0, i32 0
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %44 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @KERN_WARNING, align 4
  %47 = load i32, i32* @LOG_NODE, align 4
  %48 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %49 = bitcast %struct.lpfc_nodelist* %48 to i8*
  %50 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %51 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %54 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = call i32 @atomic_read(i32* %55)
  %57 = call i32 @lpfc_printf_vlog(i32 %45, i32 %46, i32 %47, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %49, i32 %52, i32 %56)
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %2, align 8
  br label %69

58:                                               ; preds = %34
  %59 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %60 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %59, i32 0, i32 0
  %61 = call i32 @kref_get(%struct.TYPE_2__* %60)
  br label %62

62:                                               ; preds = %58
  %63 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %64 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %63, i32 0, i32 0
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  br label %67

67:                                               ; preds = %62, %1
  %68 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  store %struct.lpfc_nodelist* %68, %struct.lpfc_nodelist** %2, align 8
  br label %69

69:                                               ; preds = %67, %38
  %70 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  ret %struct.lpfc_nodelist* %70
}

declare dso_local i32 @lpfc_debugfs_disc_trc(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local i64 @NLP_CHK_FREE_ACK(%struct.lpfc_nodelist*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lpfc_printf_vlog(i32, i32, i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @kref_get(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

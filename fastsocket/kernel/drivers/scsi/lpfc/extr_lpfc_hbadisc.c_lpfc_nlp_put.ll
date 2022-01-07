; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_nlp_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_nlp_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_nodelist = type { %struct.TYPE_2__, i32, i32, %struct.lpfc_hba*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.lpfc_hba = type { i32 }

@LPFC_DISC_TRC_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"node put:        did:x%x flg:x%x refcnt:x%x\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_NODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"0274 lpfc_nlp_put: ndlp:x%p usgmap:x%x refcnt:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"0275 lpfc_nlp_put: ndlp:x%p usgmap:x%x refcnt:%d\0A\00", align 1
@lpfc_nlp_release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_nodelist*, align 8
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i64, align 8
  store %struct.lpfc_nodelist* %0, %struct.lpfc_nodelist** %3, align 8
  %6 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %7 = icmp ne %struct.lpfc_nodelist* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %104

9:                                                ; preds = %1
  %10 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %11 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @LPFC_DISC_TRC_NODE, align 4
  %14 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %15 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %18 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %21 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @atomic_read(i32* %22)
  %24 = call i32 @lpfc_debugfs_disc_trc(i32 %12, i32 %13, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19, i32 %23)
  %25 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %26 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %25, i32 0, i32 3
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %26, align 8
  store %struct.lpfc_hba* %27, %struct.lpfc_hba** %4, align 8
  %28 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %29 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %28, i32 0, i32 0
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %33 = call i64 @NLP_CHK_FREE_ACK(%struct.lpfc_nodelist* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %9
  %36 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %37 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %36, i32 0, i32 0
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %41 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @KERN_WARNING, align 4
  %44 = load i32, i32* @LOG_NODE, align 4
  %45 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %46 = bitcast %struct.lpfc_nodelist* %45 to i8*
  %47 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %48 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %51 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 @atomic_read(i32* %52)
  %54 = call i32 @lpfc_printf_vlog(i32 %42, i32 %43, i32 %44, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %46, i32 %49, i32 %53)
  store i32 1, i32* %2, align 4
  br label %104

55:                                               ; preds = %9
  %56 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %57 = call i64 @NLP_CHK_IACT_REQ(%struct.lpfc_nodelist* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %79

59:                                               ; preds = %55
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %61 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %60, i32 0, i32 0
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %65 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @KERN_WARNING, align 4
  %68 = load i32, i32* @LOG_NODE, align 4
  %69 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %70 = bitcast %struct.lpfc_nodelist* %69 to i8*
  %71 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %72 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %75 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = call i32 @atomic_read(i32* %76)
  %78 = call i32 @lpfc_printf_vlog(i32 %66, i32 %67, i32 %68, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* %70, i32 %73, i32 %77)
  store i32 1, i32* %2, align 4
  br label %104

79:                                               ; preds = %55
  %80 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %81 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = call i32 @atomic_read(i32* %82)
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %95

85:                                               ; preds = %79
  %86 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %87 = call i32 @NLP_SET_IACT_REQ(%struct.lpfc_nodelist* %86)
  %88 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %89 = call i64 @NLP_CHK_FREE_REQ(%struct.lpfc_nodelist* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %93 = call i32 @NLP_SET_FREE_ACK(%struct.lpfc_nodelist* %92)
  br label %94

94:                                               ; preds = %91, %85
  br label %95

95:                                               ; preds = %94, %79
  %96 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %97 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %96, i32 0, i32 0
  %98 = load i64, i64* %5, align 8
  %99 = call i32 @spin_unlock_irqrestore(i32* %97, i64 %98)
  %100 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %101 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %100, i32 0, i32 0
  %102 = load i32, i32* @lpfc_nlp_release, align 4
  %103 = call i32 @kref_put(%struct.TYPE_2__* %101, i32 %102)
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %95, %59, %35, %8
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @lpfc_debugfs_disc_trc(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @NLP_CHK_FREE_ACK(%struct.lpfc_nodelist*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lpfc_printf_vlog(i32, i32, i32, i8*, i8*, i32, i32) #1

declare dso_local i64 @NLP_CHK_IACT_REQ(%struct.lpfc_nodelist*) #1

declare dso_local i32 @NLP_SET_IACT_REQ(%struct.lpfc_nodelist*) #1

declare dso_local i64 @NLP_CHK_FREE_REQ(%struct.lpfc_nodelist*) #1

declare dso_local i32 @NLP_SET_FREE_ACK(%struct.lpfc_nodelist*) #1

declare dso_local i32 @kref_put(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

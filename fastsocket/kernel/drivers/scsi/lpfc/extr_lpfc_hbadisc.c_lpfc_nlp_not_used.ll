; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_nlp_not_used.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_nlp_not_used.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_nodelist = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@LPFC_DISC_TRC_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"node not used:   did:x%x flg:x%x refcnt:x%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_nlp_not_used(%struct.lpfc_nodelist* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_nodelist*, align 8
  store %struct.lpfc_nodelist* %0, %struct.lpfc_nodelist** %3, align 8
  %4 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %5 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @LPFC_DISC_TRC_NODE, align 4
  %8 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %9 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %12 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %15 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @atomic_read(i32* %16)
  %18 = call i32 @lpfc_debugfs_disc_trc(i32 %6, i32 %7, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13, i32 %17)
  %19 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %20 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @atomic_read(i32* %21)
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %26 = call i64 @lpfc_nlp_put(%struct.lpfc_nodelist* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %31

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %29, %1
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %28
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @lpfc_debugfs_disc_trc(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

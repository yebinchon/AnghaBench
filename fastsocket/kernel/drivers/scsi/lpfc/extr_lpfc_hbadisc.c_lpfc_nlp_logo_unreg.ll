; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_nlp_logo_unreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_nlp_logo_unreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.TYPE_3__ = type { i64, %struct.lpfc_vport* }
%struct.lpfc_vport = type { i32 }
%struct.lpfc_nodelist = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_nlp_logo_unreg(%struct.lpfc_hba* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  store %struct.lpfc_vport* %9, %struct.lpfc_vport** %5, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.lpfc_nodelist*
  store %struct.lpfc_nodelist* %13, %struct.lpfc_nodelist** %6, align 8
  %14 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %15 = icmp ne %struct.lpfc_nodelist* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %19 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %20 = call i32 @lpfc_issue_els_logo(%struct.lpfc_vport* %18, %struct.lpfc_nodelist* %19, i32 0)
  br label %21

21:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @lpfc_issue_els_logo(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

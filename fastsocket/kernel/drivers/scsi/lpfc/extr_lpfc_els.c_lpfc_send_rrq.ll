; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_send_rrq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_send_rrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_node_rrq = type { i32, i32, i32 }
%struct.lpfc_nodelist = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_send_rrq(%struct.lpfc_hba* %0, %struct.lpfc_node_rrq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_node_rrq*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_node_rrq* %1, %struct.lpfc_node_rrq** %5, align 8
  %7 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %5, align 8
  %8 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %5, align 8
  %11 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.lpfc_nodelist* @lpfc_findnode_did(i32 %9, i32 %12)
  store %struct.lpfc_nodelist* %13, %struct.lpfc_nodelist** %6, align 8
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %15 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %16 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %5, align 8
  %17 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @lpfc_test_rrq_active(%struct.lpfc_hba* %14, %struct.lpfc_nodelist* %15, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %2
  %22 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %5, align 8
  %23 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %26 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %5, align 8
  %27 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %5, align 8
  %30 = call i32 @lpfc_issue_els_rrq(i32 %24, %struct.lpfc_nodelist* %25, i32 %28, %struct.lpfc_node_rrq* %29)
  store i32 %30, i32* %3, align 4
  br label %32

31:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %21
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(i32, i32) #1

declare dso_local i64 @lpfc_test_rrq_active(%struct.lpfc_hba*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_issue_els_rrq(i32, %struct.lpfc_nodelist*, i32, %struct.lpfc_node_rrq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

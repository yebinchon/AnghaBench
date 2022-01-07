; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_drop_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_drop_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.lpfc_nodelist = type { i64 }

@NLP_STE_UNUSED_NODE = common dso_local global i64 0, align 8
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_drop_node(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1) #0 {
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.lpfc_nodelist*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %3, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %4, align 8
  %5 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %6 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @NLP_STE_UNUSED_NODE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %30

11:                                               ; preds = %2
  %12 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %13 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %14 = load i64, i64* @NLP_STE_UNUSED_NODE, align 8
  %15 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %12, %struct.lpfc_nodelist* %13, i64 %14)
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %17 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @LPFC_SLI_REV4, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %11
  %24 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %25 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %26 = call i32 @lpfc_cleanup_vports_rrqs(%struct.lpfc_vport* %24, %struct.lpfc_nodelist* %25)
  br label %27

27:                                               ; preds = %23, %11
  %28 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %29 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %28)
  br label %30

30:                                               ; preds = %27, %10
  ret void
}

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i64) #1

declare dso_local i32 @lpfc_cleanup_vports_rrqs(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

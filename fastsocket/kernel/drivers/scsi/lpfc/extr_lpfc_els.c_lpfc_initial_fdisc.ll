; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_initial_fdisc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_initial_fdisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32 }
%struct.lpfc_nodelist = type { i32 }

@Fabric_DID = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@NLP_STE_UNUSED_NODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_initial_fdisc(%struct.lpfc_vport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_nodelist*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %3, align 8
  %6 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %7 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %6, i32 0, i32 0
  %8 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  store %struct.lpfc_hba* %8, %struct.lpfc_hba** %4, align 8
  %9 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %10 = load i32, i32* @Fabric_DID, align 4
  %11 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %9, i32 %10)
  store %struct.lpfc_nodelist* %11, %struct.lpfc_nodelist** %5, align 8
  %12 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %13 = icmp ne %struct.lpfc_nodelist* %12, null
  br i1 %13, label %31, label %14

14:                                               ; preds = %1
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %16 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.lpfc_nodelist* @mempool_alloc(i32 %17, i32 %18)
  store %struct.lpfc_nodelist* %19, %struct.lpfc_nodelist** %5, align 8
  %20 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %21 = icmp ne %struct.lpfc_nodelist* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %54

23:                                               ; preds = %14
  %24 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %25 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %26 = load i32, i32* @Fabric_DID, align 4
  %27 = call i32 @lpfc_nlp_init(%struct.lpfc_vport* %24, %struct.lpfc_nodelist* %25, i32 %26)
  %28 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %29 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %30 = call i32 @lpfc_enqueue_node(%struct.lpfc_vport* %28, %struct.lpfc_nodelist* %29)
  br label %45

31:                                               ; preds = %1
  %32 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %33 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %31
  %36 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %37 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %38 = load i32, i32* @NLP_STE_UNUSED_NODE, align 4
  %39 = call %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport* %36, %struct.lpfc_nodelist* %37, i32 %38)
  store %struct.lpfc_nodelist* %39, %struct.lpfc_nodelist** %5, align 8
  %40 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %41 = icmp ne %struct.lpfc_nodelist* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %54

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %31
  br label %45

45:                                               ; preds = %44, %23
  %46 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %47 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %48 = call i64 @lpfc_issue_els_fdisc(%struct.lpfc_vport* %46, %struct.lpfc_nodelist* %47, i32 0)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %52 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %51)
  store i32 0, i32* %2, align 4
  br label %54

53:                                               ; preds = %45
  store i32 1, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %50, %42, %22
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport*, i32) #1

declare dso_local %struct.lpfc_nodelist* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_nlp_init(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_enqueue_node(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i64 @lpfc_issue_els_fdisc(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_initial_flogi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_initial_flogi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32 }
%struct.lpfc_nodelist = type { i32 }

@LPFC_FLOGI = common dso_local global i32 0, align 4
@Fabric_DID = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@NLP_FABRIC = common dso_local global i32 0, align 4
@NLP_STE_UNUSED_NODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_initial_flogi(%struct.lpfc_vport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_nodelist*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %3, align 8
  %6 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %7 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %6, i32 0, i32 1
  %8 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  store %struct.lpfc_hba* %8, %struct.lpfc_hba** %4, align 8
  %9 = load i32, i32* @LPFC_FLOGI, align 4
  %10 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %11 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %13 = call i32 @lpfc_set_disctmo(%struct.lpfc_vport* %12)
  %14 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %15 = load i32, i32* @Fabric_DID, align 4
  %16 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %14, i32 %15)
  store %struct.lpfc_nodelist* %16, %struct.lpfc_nodelist** %5, align 8
  %17 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %18 = icmp ne %struct.lpfc_nodelist* %17, null
  br i1 %18, label %41, label %19

19:                                               ; preds = %1
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %21 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.lpfc_nodelist* @mempool_alloc(i32 %22, i32 %23)
  store %struct.lpfc_nodelist* %24, %struct.lpfc_nodelist** %5, align 8
  %25 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %26 = icmp ne %struct.lpfc_nodelist* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %64

28:                                               ; preds = %19
  %29 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %30 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %31 = load i32, i32* @Fabric_DID, align 4
  %32 = call i32 @lpfc_nlp_init(%struct.lpfc_vport* %29, %struct.lpfc_nodelist* %30, i32 %31)
  %33 = load i32, i32* @NLP_FABRIC, align 4
  %34 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %35 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %39 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %40 = call i32 @lpfc_enqueue_node(%struct.lpfc_vport* %38, %struct.lpfc_nodelist* %39)
  br label %55

41:                                               ; preds = %1
  %42 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %43 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %41
  %46 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %47 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %48 = load i32, i32* @NLP_STE_UNUSED_NODE, align 4
  %49 = call %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport* %46, %struct.lpfc_nodelist* %47, i32 %48)
  store %struct.lpfc_nodelist* %49, %struct.lpfc_nodelist** %5, align 8
  %50 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %51 = icmp ne %struct.lpfc_nodelist* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %64

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %41
  br label %55

55:                                               ; preds = %54, %28
  %56 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %57 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %58 = call i64 @lpfc_issue_els_flogi(%struct.lpfc_vport* %56, %struct.lpfc_nodelist* %57, i32 0)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %62 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %61)
  store i32 0, i32* %2, align 4
  br label %64

63:                                               ; preds = %55
  store i32 1, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %60, %52, %27
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @lpfc_set_disctmo(%struct.lpfc_vport*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport*, i32) #1

declare dso_local %struct.lpfc_nodelist* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_nlp_init(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_enqueue_node(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i64 @lpfc_issue_els_flogi(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

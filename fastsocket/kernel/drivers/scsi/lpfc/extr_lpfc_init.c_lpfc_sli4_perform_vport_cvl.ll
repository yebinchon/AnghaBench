; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_perform_vport_cvl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_perform_vport_cvl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_nodelist = type { i32 }
%struct.lpfc_vport = type { i64, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { %struct.lpfc_vport*, i32 }
%struct.Scsi_Host = type { i32 }

@Fabric_DID = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@NLP_FABRIC = common dso_local global i32 0, align 4
@NLP_STE_UNUSED_NODE = common dso_local global i32 0, align 4
@LPFC_FLOGI = common dso_local global i64 0, align 8
@LPFC_VPORT_FAILED = common dso_local global i64 0, align 8
@LPFC_FDISC = common dso_local global i64 0, align 8
@FC_VPORT_CVL_RCVD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lpfc_nodelist* (%struct.lpfc_vport*)* @lpfc_sli4_perform_vport_cvl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lpfc_nodelist* @lpfc_sli4_perform_vport_cvl(%struct.lpfc_vport* %0) #0 {
  %2 = alloca %struct.lpfc_nodelist*, align 8
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.lpfc_nodelist*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.lpfc_hba*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %3, align 8
  %7 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %8 = icmp ne %struct.lpfc_vport* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %2, align 8
  br label %120

10:                                               ; preds = %1
  %11 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %12 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %11, i32 0, i32 2
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  store %struct.lpfc_hba* %13, %struct.lpfc_hba** %6, align 8
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %15 = icmp ne %struct.lpfc_hba* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %2, align 8
  br label %120

17:                                               ; preds = %10
  %18 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %19 = load i32, i32* @Fabric_DID, align 4
  %20 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %18, i32 %19)
  store %struct.lpfc_nodelist* %20, %struct.lpfc_nodelist** %4, align 8
  %21 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %22 = icmp ne %struct.lpfc_nodelist* %21, null
  br i1 %22, label %45, label %23

23:                                               ; preds = %17
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %25 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.lpfc_nodelist* @mempool_alloc(i32 %26, i32 %27)
  store %struct.lpfc_nodelist* %28, %struct.lpfc_nodelist** %4, align 8
  %29 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %30 = icmp ne %struct.lpfc_nodelist* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %2, align 8
  br label %120

32:                                               ; preds = %23
  %33 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %34 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %35 = load i32, i32* @Fabric_DID, align 4
  %36 = call i32 @lpfc_nlp_init(%struct.lpfc_vport* %33, %struct.lpfc_nodelist* %34, i32 %35)
  %37 = load i32, i32* @NLP_FABRIC, align 4
  %38 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %39 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %43 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %44 = call i32 @lpfc_enqueue_node(%struct.lpfc_vport* %42, %struct.lpfc_nodelist* %43)
  br label %59

45:                                               ; preds = %17
  %46 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %47 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %45
  %50 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %51 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %52 = load i32, i32* @NLP_STE_UNUSED_NODE, align 4
  %53 = call %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport* %50, %struct.lpfc_nodelist* %51, i32 %52)
  store %struct.lpfc_nodelist* %53, %struct.lpfc_nodelist** %4, align 8
  %54 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %55 = icmp ne %struct.lpfc_nodelist* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %2, align 8
  br label %120

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57, %45
  br label %59

59:                                               ; preds = %58, %32
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %61 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %60, i32 0, i32 0
  %62 = load %struct.lpfc_vport*, %struct.lpfc_vport** %61, align 8
  %63 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @LPFC_FLOGI, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %59
  %68 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %69 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %68, i32 0, i32 0
  %70 = load %struct.lpfc_vport*, %struct.lpfc_vport** %69, align 8
  %71 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @LPFC_VPORT_FAILED, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %2, align 8
  br label %120

76:                                               ; preds = %67, %59
  %77 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %78 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %79 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %78, i32 0, i32 0
  %80 = load %struct.lpfc_vport*, %struct.lpfc_vport** %79, align 8
  %81 = icmp ne %struct.lpfc_vport* %77, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %76
  %83 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %84 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @LPFC_FDISC, align 8
  %87 = icmp slt i64 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %90 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @LPFC_VPORT_FAILED, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %2, align 8
  br label %120

95:                                               ; preds = %88, %82, %76
  %96 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %97 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %96)
  store %struct.Scsi_Host* %97, %struct.Scsi_Host** %5, align 8
  %98 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %99 = icmp ne %struct.Scsi_Host* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %95
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %2, align 8
  br label %120

101:                                              ; preds = %95
  %102 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %103 = call i32 @lpfc_linkdown_port(%struct.lpfc_vport* %102)
  %104 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %105 = call i32 @lpfc_cleanup_pending_mbox(%struct.lpfc_vport* %104)
  %106 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %107 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @spin_lock_irq(i32 %108)
  %110 = load i32, i32* @FC_VPORT_CVL_RCVD, align 4
  %111 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %112 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  %115 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %116 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @spin_unlock_irq(i32 %117)
  %119 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  store %struct.lpfc_nodelist* %119, %struct.lpfc_nodelist** %2, align 8
  br label %120

120:                                              ; preds = %101, %100, %94, %75, %56, %31, %16, %9
  %121 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %2, align 8
  ret %struct.lpfc_nodelist* %121
}

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport*, i32) #1

declare dso_local %struct.lpfc_nodelist* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_nlp_init(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_enqueue_node(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_linkdown_port(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_cleanup_pending_mbox(%struct.lpfc_vport*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

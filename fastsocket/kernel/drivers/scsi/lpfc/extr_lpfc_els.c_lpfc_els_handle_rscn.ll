; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_handle_rscn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_handle_rscn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i64, i64, i32, i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32 }
%struct.lpfc_nodelist = type { i64, i64, i32 }

@FC_UNLOADING = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"0215 RSCN processed Data: x%x x%x x%x x%x\0A\00", align 1
@NameServer_DID = common dso_local global i32 0, align 4
@NLP_STE_UNMAPPED_NODE = common dso_local global i64 0, align 8
@SLI_CTNS_GID_FT = common dso_local global i32 0, align 4
@NLP_STE_PLOGI_ISSUE = common dso_local global i32 0, align 4
@NLP_STE_UNUSED_NODE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@NLP_FABRIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_els_handle_rscn(%struct.lpfc_vport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.lpfc_nodelist*, align 8
  %5 = alloca %struct.lpfc_hba*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %3, align 8
  %6 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %7 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %6, i32 0, i32 6
  %8 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  store %struct.lpfc_hba* %8, %struct.lpfc_hba** %5, align 8
  %9 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %10 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @FC_UNLOADING, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %17 = call i32 @lpfc_els_flush_rscn(%struct.lpfc_vport* %16)
  store i32 0, i32* %2, align 4
  br label %125

18:                                               ; preds = %1
  %19 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %20 = call i32 @lpfc_set_disctmo(%struct.lpfc_vport* %19)
  %21 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %22 = load i32, i32* @KERN_INFO, align 4
  %23 = load i32, i32* @LOG_DISCOVERY, align 4
  %24 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %25 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %28 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %31 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %21, i32 %22, i32 %23, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %26, i32 0, i32 %29, i32 %32)
  %34 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %35 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %37 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %39 = load i32, i32* @NameServer_DID, align 4
  %40 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %38, i32 %39)
  store %struct.lpfc_nodelist* %40, %struct.lpfc_nodelist** %4, align 8
  %41 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %42 = icmp ne %struct.lpfc_nodelist* %41, null
  br i1 %42, label %43, label %60

43:                                               ; preds = %18
  %44 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %45 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %49 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @NLP_STE_UNMAPPED_NODE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %55 = load i32, i32* @SLI_CTNS_GID_FT, align 4
  %56 = call i64 @lpfc_ns_cmd(%struct.lpfc_vport* %54, i32 %55, i32 0, i32 0)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 1, i32* %2, align 4
  br label %125

59:                                               ; preds = %53
  br label %122

60:                                               ; preds = %47, %43, %18
  %61 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %62 = load i32, i32* @NameServer_DID, align 4
  %63 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %61, i32 %62)
  store %struct.lpfc_nodelist* %63, %struct.lpfc_nodelist** %4, align 8
  %64 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %65 = icmp ne %struct.lpfc_nodelist* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %68 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 1, i32* %2, align 4
  br label %125

71:                                               ; preds = %66, %60
  %72 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %73 = icmp ne %struct.lpfc_nodelist* %72, null
  br i1 %73, label %74, label %88

74:                                               ; preds = %71
  %75 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %76 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %77 = load i32, i32* @NLP_STE_PLOGI_ISSUE, align 4
  %78 = call %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport* %75, %struct.lpfc_nodelist* %76, i32 %77)
  store %struct.lpfc_nodelist* %78, %struct.lpfc_nodelist** %4, align 8
  %79 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %80 = icmp ne %struct.lpfc_nodelist* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %74
  %82 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %83 = call i32 @lpfc_els_flush_rscn(%struct.lpfc_vport* %82)
  store i32 0, i32* %2, align 4
  br label %125

84:                                               ; preds = %74
  %85 = load i64, i64* @NLP_STE_UNUSED_NODE, align 8
  %86 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %87 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  br label %113

88:                                               ; preds = %71
  %89 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %90 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call %struct.lpfc_nodelist* @mempool_alloc(i32 %91, i32 %92)
  store %struct.lpfc_nodelist* %93, %struct.lpfc_nodelist** %4, align 8
  %94 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %95 = icmp ne %struct.lpfc_nodelist* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %88
  %97 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %98 = call i32 @lpfc_els_flush_rscn(%struct.lpfc_vport* %97)
  store i32 0, i32* %2, align 4
  br label %125

99:                                               ; preds = %88
  %100 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %101 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %102 = load i32, i32* @NameServer_DID, align 4
  %103 = call i32 @lpfc_nlp_init(%struct.lpfc_vport* %100, %struct.lpfc_nodelist* %101, i32 %102)
  %104 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %105 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %108 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  %109 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %110 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %111 = load i32, i32* @NLP_STE_PLOGI_ISSUE, align 4
  %112 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %109, %struct.lpfc_nodelist* %110, i32 %111)
  br label %113

113:                                              ; preds = %99, %84
  %114 = load i32, i32* @NLP_FABRIC, align 4
  %115 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %116 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  %119 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %120 = load i32, i32* @NameServer_DID, align 4
  %121 = call i32 @lpfc_issue_els_plogi(%struct.lpfc_vport* %119, i32 %120, i32 0)
  store i32 1, i32* %2, align 4
  br label %125

122:                                              ; preds = %59
  %123 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %124 = call i32 @lpfc_els_flush_rscn(%struct.lpfc_vport* %123)
  store i32 0, i32* %2, align 4
  br label %125

125:                                              ; preds = %122, %113, %96, %81, %70, %58, %15
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i32 @lpfc_els_flush_rscn(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_set_disctmo(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport*, i32) #1

declare dso_local i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local i64 @lpfc_ns_cmd(%struct.lpfc_vport*, i32, i32, i32) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local %struct.lpfc_nodelist* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_nlp_init(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_issue_els_plogi(%struct.lpfc_vport*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

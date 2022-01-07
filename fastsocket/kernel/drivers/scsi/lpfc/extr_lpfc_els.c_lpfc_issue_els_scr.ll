; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_els_scr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_els_scr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { %struct.TYPE_3__, i32, %struct.lpfc_sli }
%struct.TYPE_3__ = type { i32 }
%struct.lpfc_sli = type { i32 }
%struct.lpfc_iocbq = type { i32, i64, i32 }
%struct.lpfc_nodelist = type { i32 }
%struct.lpfc_dmabuf = type { i64 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@NLP_STE_UNUSED_NODE = common dso_local global i32 0, align 4
@ELS_CMD_SCR = common dso_local global i32 0, align 4
@SCR_FUNC_FULL = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_ELS_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Issue SCR:       did:x%x\00", align 1
@lpfc_cmpl_els_cmd = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@IOCB_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_issue_els_scr(%struct.lpfc_vport* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lpfc_hba*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.lpfc_iocbq*, align 8
  %11 = alloca %struct.lpfc_sli*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.lpfc_nodelist*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %16 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %15, i32 0, i32 0
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %16, align 8
  store %struct.lpfc_hba* %17, %struct.lpfc_hba** %8, align 8
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %19 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %18, i32 0, i32 2
  store %struct.lpfc_sli* %19, %struct.lpfc_sli** %11, align 8
  store i32 8, i32* %13, align 4
  %20 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %20, i32 %21)
  store %struct.lpfc_nodelist* %22, %struct.lpfc_nodelist** %14, align 8
  %23 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %14, align 8
  %24 = icmp ne %struct.lpfc_nodelist* %23, null
  br i1 %24, label %42, label %25

25:                                               ; preds = %3
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %27 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.lpfc_nodelist* @mempool_alloc(i32 %28, i32 %29)
  store %struct.lpfc_nodelist* %30, %struct.lpfc_nodelist** %14, align 8
  %31 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %14, align 8
  %32 = icmp ne %struct.lpfc_nodelist* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  store i32 1, i32* %4, align 4
  br label %120

34:                                               ; preds = %25
  %35 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %36 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %14, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @lpfc_nlp_init(%struct.lpfc_vport* %35, %struct.lpfc_nodelist* %36, i32 %37)
  %39 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %40 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %14, align 8
  %41 = call i32 @lpfc_enqueue_node(%struct.lpfc_vport* %39, %struct.lpfc_nodelist* %40)
  br label %56

42:                                               ; preds = %3
  %43 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %14, align 8
  %44 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %42
  %47 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %48 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %14, align 8
  %49 = load i32, i32* @NLP_STE_UNUSED_NODE, align 4
  %50 = call %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport* %47, %struct.lpfc_nodelist* %48, i32 %49)
  store %struct.lpfc_nodelist* %50, %struct.lpfc_nodelist** %14, align 8
  %51 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %14, align 8
  %52 = icmp ne %struct.lpfc_nodelist* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  store i32 1, i32* %4, align 4
  br label %120

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %42
  br label %56

56:                                               ; preds = %55, %34
  %57 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %14, align 8
  %61 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %14, align 8
  %62 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @ELS_CMD_SCR, align 4
  %65 = call %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport* %57, i32 1, i32 %58, i32 %59, %struct.lpfc_nodelist* %60, i32 %63, i32 %64)
  store %struct.lpfc_iocbq* %65, %struct.lpfc_iocbq** %10, align 8
  %66 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %67 = icmp ne %struct.lpfc_iocbq* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %56
  %69 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %14, align 8
  %70 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %69)
  store i32 1, i32* %4, align 4
  br label %120

71:                                               ; preds = %56
  %72 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %73 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %72, i32 0, i32 2
  store i32* %73, i32** %9, align 8
  %74 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %75 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to %struct.lpfc_dmabuf*
  %78 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i32*
  store i32* %80, i32** %12, align 8
  %81 = load i32, i32* @ELS_CMD_SCR, align 4
  %82 = load i32*, i32** %12, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32*, i32** %12, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 4
  store i32* %84, i32** %12, align 8
  %85 = load i32*, i32** %12, align 8
  %86 = call i32 @memset(i32* %85, i32 0, i32 4)
  %87 = load i32, i32* @SCR_FUNC_FULL, align 4
  %88 = load i32*, i32** %12, align 8
  %89 = bitcast i32* %88 to %struct.TYPE_4__*
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 4
  %91 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %92 = load i32, i32* @LPFC_DISC_TRC_ELS_CMD, align 4
  %93 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %14, align 8
  %94 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %91, i32 %92, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %95, i32 0, i32 0)
  %97 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %98 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* @lpfc_cmpl_els_cmd, align 4
  %103 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %104 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %106 = load i32, i32* @LPFC_ELS_RING, align 4
  %107 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %108 = call i64 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %105, i32 %106, %struct.lpfc_iocbq* %107, i32 0)
  %109 = load i64, i64* @IOCB_ERROR, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %71
  %112 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %14, align 8
  %113 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %112)
  %114 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %115 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %10, align 8
  %116 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %114, %struct.lpfc_iocbq* %115)
  store i32 1, i32* %4, align 4
  br label %120

117:                                              ; preds = %71
  %118 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %14, align 8
  %119 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %118)
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %117, %111, %68, %53, %33
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport*, i32) #1

declare dso_local %struct.lpfc_nodelist* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_nlp_init(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_enqueue_node(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport*, i32, i32, i32, %struct.lpfc_nodelist*, i32, i32) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local i64 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rsp_reject.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rsp_reject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { %struct.TYPE_9__, %struct.lpfc_sli }
%struct.TYPE_9__ = type { i32 }
%struct.lpfc_sli = type { i32 }
%struct.lpfc_iocbq = type { i32, %struct.TYPE_10__, i32, %struct.TYPE_8__, i64, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32* }
%struct.lpfc_nodelist = type { i32, i32, i32, i32 }
%struct.lpfc_dmabuf = type { i64 }

@ELS_CMD_LS_RJT = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [95 x i8] c"0129 Xmit ELS RJT x%x response tag x%x xri x%x, did x%x, nlp_flag x%x, nlp_state x%x, rpi x%x\0A\00", align 1
@LPFC_DISC_TRC_ELS_RSP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Issue LS_RJT:    did:x%x flg:x%x err:x%x\00", align 1
@lpfc_cmpl_els_rsp = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@IOCB_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_els_rsp_reject(%struct.lpfc_vport* %0, i32 %1, %struct.lpfc_iocbq* %2, %struct.lpfc_nodelist* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.lpfc_vport*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.lpfc_iocbq*, align 8
  %10 = alloca %struct.lpfc_nodelist*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.lpfc_hba*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca %struct.lpfc_iocbq*, align 8
  %16 = alloca %struct.lpfc_sli*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %9, align 8
  store %struct.lpfc_nodelist* %3, %struct.lpfc_nodelist** %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %21 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %20, i32 0, i32 0
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %21, align 8
  store %struct.lpfc_hba* %22, %struct.lpfc_hba** %12, align 8
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %24 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %23, i32 0, i32 1
  store %struct.lpfc_sli* %24, %struct.lpfc_sli** %16, align 8
  store i32 8, i32* %18, align 4
  %25 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %26 = load i32, i32* %18, align 4
  %27 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %28 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %31 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %32 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ELS_CMD_LS_RJT, align 4
  %35 = call %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport* %25, i32 0, i32 %26, i32 %29, %struct.lpfc_nodelist* %30, i32 %33, i32 %34)
  store %struct.lpfc_iocbq* %35, %struct.lpfc_iocbq** %15, align 8
  %36 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %15, align 8
  %37 = icmp ne %struct.lpfc_iocbq* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %133

39:                                               ; preds = %5
  %40 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %15, align 8
  %41 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %40, i32 0, i32 1
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %13, align 8
  %42 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %43 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %42, i32 0, i32 1
  store %struct.TYPE_10__* %43, %struct.TYPE_10__** %14, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32 %53, i32* %57, align 4
  %58 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %15, align 8
  %59 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.lpfc_dmabuf*
  %62 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i32*
  store i32* %64, i32** %17, align 8
  %65 = load i32, i32* @ELS_CMD_LS_RJT, align 4
  %66 = load i32*, i32** %17, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32*, i32** %17, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  store i32* %68, i32** %17, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i32*, i32** %17, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32*, i32** %11, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %39
  %74 = load i32*, i32** %11, align 8
  %75 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %15, align 8
  %76 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  store i32* %74, i32** %77, align 8
  br label %78

78:                                               ; preds = %73, %39
  %79 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %80 = load i32, i32* @KERN_INFO, align 4
  %81 = load i32, i32* @LOG_ELS, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %15, align 8
  %84 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %15, align 8
  %87 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %91 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %94 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %97 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %100 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %79, i32 %80, i32 %81, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %85, i32 %89, i32 %92, i32 %95, i32 %98, i32 %101)
  %103 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %104 = load i32, i32* @LPFC_DISC_TRC_ELS_RSP, align 4
  %105 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %106 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %109 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %103, i32 %104, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %107, i32 %110, i32 %111)
  %113 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %114 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  %118 = load i32, i32* @lpfc_cmpl_els_rsp, align 4
  %119 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %15, align 8
  %120 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %122 = load i32, i32* @LPFC_ELS_RING, align 4
  %123 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %15, align 8
  %124 = call i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %121, i32 %122, %struct.lpfc_iocbq* %123, i32 0)
  store i32 %124, i32* %19, align 4
  %125 = load i32, i32* %19, align 4
  %126 = load i32, i32* @IOCB_ERROR, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %78
  %129 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %130 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %15, align 8
  %131 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %129, %struct.lpfc_iocbq* %130)
  store i32 1, i32* %6, align 4
  br label %133

132:                                              ; preds = %78
  store i32 0, i32* %6, align 4
  br label %133

133:                                              ; preds = %132, %128, %38
  %134 = load i32, i32* %6, align 4
  ret i32 %134
}

declare dso_local %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport*, i32, i32, i32, %struct.lpfc_nodelist*, i32, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

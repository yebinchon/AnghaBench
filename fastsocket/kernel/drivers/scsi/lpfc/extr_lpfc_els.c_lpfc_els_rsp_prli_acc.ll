; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rsp_prli_acc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rsp_prli_acc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { %struct.TYPE_11__, %struct.TYPE_12__, %struct.lpfc_sli }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.lpfc_sli = type { i32 }
%struct.lpfc_iocbq = type { i32, i64, %struct.TYPE_14__, i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.lpfc_nodelist = type { i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lpfc_dmabuf = type { i64 }

@ELS_CMD_ACC = common dso_local global i32 0, align 4
@ELS_CMD_PRLI = common dso_local global i32 0, align 4
@ELS_RSP_MASK = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [92 x i8] c"0131 Xmit PRLI ACC response tag x%x xri x%x, did x%x, nlp_flag x%x, nlp_state x%x, rpi x%x\0A\00", align 1
@NLP_FCP_TARGET = common dso_local global i32 0, align 4
@PRLI_REQ_EXECUTED = common dso_local global i32 0, align 4
@PRLI_FCP_TYPE = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_ELS_RSP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Issue ACC PRLI:  did:x%x flg:x%x\00", align 1
@lpfc_cmpl_els_rsp = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@IOCB_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_els_rsp_prli_acc(%struct.lpfc_vport* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_nodelist* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca %struct.lpfc_hba*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.lpfc_iocbq*, align 8
  %14 = alloca %struct.lpfc_sli*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %6, align 8
  store %struct.lpfc_nodelist* %2, %struct.lpfc_nodelist** %7, align 8
  %18 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %19 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %18, i32 0, i32 0
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %19, align 8
  store %struct.lpfc_hba* %20, %struct.lpfc_hba** %8, align 8
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %22 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %21, i32 0, i32 2
  store %struct.lpfc_sli* %22, %struct.lpfc_sli** %14, align 8
  store i32 36, i32* %16, align 4
  %23 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %24 = load i32, i32* %16, align 4
  %25 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %26 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %29 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %30 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ELS_CMD_ACC, align 4
  %33 = load i32, i32* @ELS_CMD_PRLI, align 4
  %34 = load i32, i32* @ELS_RSP_MASK, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = or i32 %32, %36
  %38 = call %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport* %23, i32 0, i32 %24, i32 %27, %struct.lpfc_nodelist* %28, i32 %31, i32 %37)
  store %struct.lpfc_iocbq* %38, %struct.lpfc_iocbq** %13, align 8
  %39 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %13, align 8
  %40 = icmp ne %struct.lpfc_iocbq* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %169

42:                                               ; preds = %3
  %43 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %13, align 8
  %44 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %43, i32 0, i32 2
  store %struct.TYPE_14__* %44, %struct.TYPE_14__** %11, align 8
  %45 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %46 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %45, i32 0, i32 2
  store %struct.TYPE_14__* %46, %struct.TYPE_14__** %12, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i32 %56, i32* %60, align 4
  %61 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %62 = load i32, i32* @KERN_INFO, align 4
  %63 = load i32, i32* @LOG_ELS, align 4
  %64 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %13, align 8
  %65 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %13, align 8
  %68 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %72 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %75 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %78 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %81 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %61, i32 %62, i32 %63, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %70, i32 %73, i32 %76, i32 %79, i32 %82)
  %84 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %13, align 8
  %85 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to %struct.lpfc_dmabuf*
  %88 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i32*
  store i32* %90, i32** %15, align 8
  %91 = load i32, i32* @ELS_CMD_ACC, align 4
  %92 = load i32, i32* @ELS_CMD_PRLI, align 4
  %93 = load i32, i32* @ELS_RSP_MASK, align 4
  %94 = xor i32 %93, -1
  %95 = and i32 %92, %94
  %96 = or i32 %91, %95
  %97 = load i32*, i32** %15, align 8
  store i32 %96, i32* %97, align 4
  %98 = load i32*, i32** %15, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 4
  store i32* %99, i32** %15, align 8
  %100 = load i32*, i32** %15, align 8
  %101 = call i32 @memset(i32* %100, i32 0, i32 32)
  %102 = load i32*, i32** %15, align 8
  %103 = bitcast i32* %102 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %103, %struct.TYPE_13__** %9, align 8
  %104 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %105 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %104, i32 0, i32 1
  store %struct.TYPE_12__* %105, %struct.TYPE_12__** %10, align 8
  %106 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %107 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @NLP_FCP_TARGET, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %42
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp sge i32 %116, 2
  br i1 %117, label %118, label %125

118:                                              ; preds = %112
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  store i32 1, i32* %120, align 4
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 1
  store i32 1, i32* %122, align 4
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 2
  store i32 1, i32* %124, align 4
  br label %125

125:                                              ; preds = %118, %112, %42
  %126 = load i32, i32* @PRLI_REQ_EXECUTED, align 4
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 7
  store i32 %126, i32* %128, align 4
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 3
  store i32 1, i32* %130, align 4
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 4
  store i32 1, i32* %132, align 4
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  store i32 1, i32* %134, align 4
  %135 = load i32, i32* @PRLI_FCP_TYPE, align 4
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 6
  store i32 %135, i32* %137, align 4
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 5
  store i32 1, i32* %139, align 4
  %140 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %141 = load i32, i32* @LPFC_DISC_TRC_ELS_RSP, align 4
  %142 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %143 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %146 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %140, i32 %141, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %144, i32 %147, i32 0)
  %149 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %150 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  %154 = load i32, i32* @lpfc_cmpl_els_rsp, align 4
  %155 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %13, align 8
  %156 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  %157 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %158 = load i32, i32* @LPFC_ELS_RING, align 4
  %159 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %13, align 8
  %160 = call i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %157, i32 %158, %struct.lpfc_iocbq* %159, i32 0)
  store i32 %160, i32* %17, align 4
  %161 = load i32, i32* %17, align 4
  %162 = load i32, i32* @IOCB_ERROR, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %125
  %165 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %166 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %13, align 8
  %167 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %165, %struct.lpfc_iocbq* %166)
  store i32 1, i32* %4, align 4
  br label %169

168:                                              ; preds = %125
  store i32 0, i32* %4, align 4
  br label %169

169:                                              ; preds = %168, %164, %41
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

declare dso_local %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport*, i32, i32, i32, %struct.lpfc_nodelist*, i32, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

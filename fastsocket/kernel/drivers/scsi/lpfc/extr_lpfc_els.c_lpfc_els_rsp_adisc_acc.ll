; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rsp_adisc_acc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rsp_adisc_acc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.lpfc_iocbq = type { i32, i64, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.lpfc_nodelist = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.lpfc_dmabuf = type { i64 }

@ELS_CMD_ACC = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [95 x i8] c"0130 Xmit ADISC ACC response iotag x%x xri: x%x, did x%x, nlp_flag x%x, nlp_state x%x rpi x%x\0A\00", align 1
@LPFC_DISC_TRC_ELS_RSP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Issue ACC ADISC: did:x%x flg:x%x\00", align 1
@lpfc_cmpl_els_rsp = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@IOCB_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_els_rsp_adisc_acc(%struct.lpfc_vport* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_nodelist* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca %struct.lpfc_hba*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.lpfc_iocbq*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %6, align 8
  store %struct.lpfc_nodelist* %2, %struct.lpfc_nodelist** %7, align 8
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %17 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %16, i32 0, i32 3
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %17, align 8
  store %struct.lpfc_hba* %18, %struct.lpfc_hba** %8, align 8
  store i32 20, i32* %14, align 4
  %19 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %20 = load i32, i32* %14, align 4
  %21 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %22 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %25 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %26 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ELS_CMD_ACC, align 4
  %29 = call %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport* %19, i32 0, i32 %20, i32 %23, %struct.lpfc_nodelist* %24, i32 %27, i32 %28)
  store %struct.lpfc_iocbq* %29, %struct.lpfc_iocbq** %12, align 8
  %30 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %31 = icmp ne %struct.lpfc_iocbq* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %138

33:                                               ; preds = %3
  %34 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %35 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %34, i32 0, i32 2
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %10, align 8
  %36 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %37 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %36, i32 0, i32 2
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %11, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 4
  %52 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %53 = load i32, i32* @KERN_INFO, align 4
  %54 = load i32, i32* @LOG_ELS, align 4
  %55 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %56 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %59 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %63 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %66 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %69 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %72 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %52, i32 %53, i32 %54, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %61, i32 %64, i32 %67, i32 %70, i32 %73)
  %75 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %76 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to %struct.lpfc_dmabuf*
  %79 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i32*
  store i32* %81, i32** %13, align 8
  %82 = load i32, i32* @ELS_CMD_ACC, align 4
  %83 = load i32*, i32** %13, align 8
  store i32 %82, i32* %83, align 4
  %84 = load i32*, i32** %13, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 4
  store i32* %85, i32** %13, align 8
  %86 = load i32*, i32** %13, align 8
  %87 = bitcast i32* %86 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %87, %struct.TYPE_10__** %9, align 8
  %88 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %89 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 2
  %95 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %96 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %95, i32 0, i32 2
  %97 = call i32 @memcpy(i32* %94, i32* %96, i32 4)
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %101 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %100, i32 0, i32 1
  %102 = call i32 @memcpy(i32* %99, i32* %101, i32 4)
  %103 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %104 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @be32_to_cpu(i32 %105)
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  %109 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %110 = load i32, i32* @LPFC_DISC_TRC_ELS_RSP, align 4
  %111 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %112 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %115 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %109, i32 %110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %113, i32 %116, i32 0)
  %118 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %119 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  %123 = load i32, i32* @lpfc_cmpl_els_rsp, align 4
  %124 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %125 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %127 = load i32, i32* @LPFC_ELS_RING, align 4
  %128 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %129 = call i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %126, i32 %127, %struct.lpfc_iocbq* %128, i32 0)
  store i32 %129, i32* %15, align 4
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* @IOCB_ERROR, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %33
  %134 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %135 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %136 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %134, %struct.lpfc_iocbq* %135)
  store i32 1, i32* %4, align 4
  br label %138

137:                                              ; preds = %33
  store i32 0, i32* %4, align 4
  br label %138

138:                                              ; preds = %137, %133, %32
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport*, i32, i32, i32, %struct.lpfc_nodelist*, i32, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

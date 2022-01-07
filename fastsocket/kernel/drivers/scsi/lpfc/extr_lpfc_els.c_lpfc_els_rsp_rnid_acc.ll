; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rsp_rnid_acc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rsp_rnid_acc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { %struct.TYPE_12__, %struct.lpfc_sli }
%struct.TYPE_12__ = type { i32 }
%struct.lpfc_sli = type { i32 }
%struct.lpfc_iocbq = type { i32, i64, %struct.TYPE_14__, i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.lpfc_nodelist = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.lpfc_dmabuf = type { i64 }

@ELS_CMD_ACC = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"0132 Xmit RNID ACC response tag x%x xri x%x\0A\00", align 1
@RNID_HBA = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_ELS_RSP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Issue ACC RNID:  did:x%x flg:x%x\00", align 1
@lpfc_cmpl_els_rsp = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@IOCB_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, i32, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*)* @lpfc_els_rsp_rnid_acc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_els_rsp_rnid_acc(%struct.lpfc_vport* %0, i32 %1, %struct.lpfc_iocbq* %2, %struct.lpfc_nodelist* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_vport*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lpfc_iocbq*, align 8
  %9 = alloca %struct.lpfc_nodelist*, align 8
  %10 = alloca %struct.lpfc_hba*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.lpfc_iocbq*, align 8
  %15 = alloca %struct.lpfc_sli*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %8, align 8
  store %struct.lpfc_nodelist* %3, %struct.lpfc_nodelist** %9, align 8
  %19 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %20 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %19, i32 0, i32 2
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %20, align 8
  store %struct.lpfc_hba* %21, %struct.lpfc_hba** %10, align 8
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %23 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %22, i32 0, i32 1
  store %struct.lpfc_sli* %23, %struct.lpfc_sli** %15, align 8
  store i32 16, i32* %17, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %4
  %27 = load i32, i32* %17, align 4
  %28 = sext i32 %27 to i64
  %29 = add i64 %28, 4
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %17, align 4
  br label %31

31:                                               ; preds = %26, %4
  %32 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %33 = load i32, i32* %17, align 4
  %34 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %35 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %38 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %39 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ELS_CMD_ACC, align 4
  %42 = call %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport* %32, i32 0, i32 %33, i32 %36, %struct.lpfc_nodelist* %37, i32 %40, i32 %41)
  store %struct.lpfc_iocbq* %42, %struct.lpfc_iocbq** %14, align 8
  %43 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %44 = icmp ne %struct.lpfc_iocbq* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %31
  store i32 1, i32* %5, align 4
  br label %168

46:                                               ; preds = %31
  %47 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %48 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %47, i32 0, i32 2
  store %struct.TYPE_14__* %48, %struct.TYPE_14__** %12, align 8
  %49 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %50 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %49, i32 0, i32 2
  store %struct.TYPE_14__* %50, %struct.TYPE_14__** %13, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store i32 %60, i32* %64, align 4
  %65 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %66 = load i32, i32* @KERN_INFO, align 4
  %67 = load i32, i32* @LOG_ELS, align 4
  %68 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %69 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %72 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %65, i32 %66, i32 %67, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %74)
  %76 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %77 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to %struct.lpfc_dmabuf*
  %80 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to i32*
  store i32* %82, i32** %16, align 8
  %83 = load i32, i32* @ELS_CMD_ACC, align 4
  %84 = load i32*, i32** %16, align 8
  store i32 %83, i32* %84, align 4
  %85 = load i32*, i32** %16, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 4
  store i32* %86, i32** %16, align 8
  %87 = load i32*, i32** %16, align 8
  %88 = call i32 @memset(i32* %87, i32 0, i32 36)
  %89 = load i32*, i32** %16, align 8
  %90 = bitcast i32* %89 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %90, %struct.TYPE_13__** %11, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  store i32 8, i32* %95, align 4
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 5
  %98 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %99 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %98, i32 0, i32 0
  %100 = call i32 @memcpy(i32* %97, i32* %99, i32 4)
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 4
  %103 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %104 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %103, i32 0, i32 1
  %105 = call i32 @memcpy(i32* %102, i32* %104, i32 4)
  %106 = load i32, i32* %7, align 4
  switch i32 %106, label %133 [
    i32 0, label %107
    i32 128, label %110
  ]

107:                                              ; preds = %46
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 2
  store i32 0, i32* %109, align 4
  br label %138

110:                                              ; preds = %46
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 2
  store i32 4, i32* %112, align 4
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 3
  %117 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %118 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %117, i32 0, i32 0
  %119 = call i32 @memcpy(i32* %116, i32* %118, i32 4)
  %120 = load i32, i32* @RNID_HBA, align 4
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 2
  store i32 %120, i32* %124, align 4
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  store i32 0, i32* %128, align 4
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  store i32 0, i32* %132, align 4
  br label %138

133:                                              ; preds = %46
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 1
  store i32 0, i32* %135, align 4
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 2
  store i32 0, i32* %137, align 4
  br label %138

138:                                              ; preds = %133, %110, %107
  %139 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %140 = load i32, i32* @LPFC_DISC_TRC_ELS_RSP, align 4
  %141 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %142 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %145 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %139, i32 %140, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %143, i32 %146, i32 0)
  %148 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %149 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 4
  %153 = load i32, i32* @lpfc_cmpl_els_rsp, align 4
  %154 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %155 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  %156 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %157 = load i32, i32* @LPFC_ELS_RING, align 4
  %158 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %159 = call i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %156, i32 %157, %struct.lpfc_iocbq* %158, i32 0)
  store i32 %159, i32* %18, align 4
  %160 = load i32, i32* %18, align 4
  %161 = load i32, i32* @IOCB_ERROR, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %138
  %164 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %165 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %166 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %164, %struct.lpfc_iocbq* %165)
  store i32 1, i32* %5, align 4
  br label %168

167:                                              ; preds = %138
  store i32 0, i32* %5, align 4
  br label %168

168:                                              ; preds = %167, %163, %45
  %169 = load i32, i32* %5, align 4
  ret i32 %169
}

declare dso_local %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport*, i32, i32, i32, %struct.lpfc_nodelist*, i32, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

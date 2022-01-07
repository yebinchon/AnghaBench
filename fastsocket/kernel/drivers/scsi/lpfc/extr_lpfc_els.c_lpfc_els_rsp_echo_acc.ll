; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rsp_echo_acc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rsp_echo_acc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { %struct.TYPE_8__, %struct.lpfc_sli }
%struct.TYPE_8__ = type { i32 }
%struct.lpfc_sli = type { i32 }
%struct.lpfc_iocbq = type { i32, i64, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.lpfc_nodelist = type { i32, i32 }
%struct.lpfc_dmabuf = type { i64 }

@LPFC_BPL_SIZE = common dso_local global i64 0, align 8
@ELS_CMD_ACC = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"2876 Xmit ECHO ACC response tag x%x xri x%x\0A\00", align 1
@LPFC_DISC_TRC_ELS_RSP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Issue ACC ECHO:  did:x%x flg:x%x\00", align 1
@lpfc_cmpl_els_rsp = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@IOCB_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, i32*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*)* @lpfc_els_rsp_echo_acc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_els_rsp_echo_acc(%struct.lpfc_vport* %0, i32* %1, %struct.lpfc_iocbq* %2, %struct.lpfc_nodelist* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_vport*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.lpfc_iocbq*, align 8
  %9 = alloca %struct.lpfc_nodelist*, align 8
  %10 = alloca %struct.lpfc_hba*, align 8
  %11 = alloca %struct.lpfc_iocbq*, align 8
  %12 = alloca %struct.lpfc_sli*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %8, align 8
  store %struct.lpfc_nodelist* %3, %struct.lpfc_nodelist** %9, align 8
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %17 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %16, i32 0, i32 0
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %17, align 8
  store %struct.lpfc_hba* %18, %struct.lpfc_hba** %10, align 8
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %20 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %19, i32 0, i32 1
  store %struct.lpfc_sli* %20, %struct.lpfc_sli** %12, align 8
  %21 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %22 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %14, align 8
  %27 = load i64, i64* %14, align 8
  %28 = load i64, i64* @LPFC_BPL_SIZE, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i64, i64* @LPFC_BPL_SIZE, align 8
  store i64 %31, i64* %14, align 8
  br label %32

32:                                               ; preds = %30, %4
  %33 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %34 = load i64, i64* %14, align 8
  %35 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %36 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %39 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %40 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ELS_CMD_ACC, align 4
  %43 = call %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport* %33, i32 0, i64 %34, i32 %37, %struct.lpfc_nodelist* %38, i32 %41, i32 %42)
  store %struct.lpfc_iocbq* %43, %struct.lpfc_iocbq** %11, align 8
  %44 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %45 = icmp ne %struct.lpfc_iocbq* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %32
  store i32 1, i32* %5, align 4
  br label %122

47:                                               ; preds = %32
  %48 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %49 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %53 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %56 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %62 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store i32 %60, i32* %65, align 8
  %66 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %67 = load i32, i32* @KERN_INFO, align 4
  %68 = load i32, i32* @LOG_ELS, align 4
  %69 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %70 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %73 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %66, i32 %67, i32 %68, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %75)
  %77 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %78 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to %struct.lpfc_dmabuf*
  %81 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to i32*
  store i32* %83, i32** %13, align 8
  %84 = load i32, i32* @ELS_CMD_ACC, align 4
  %85 = load i32*, i32** %13, align 8
  store i32 %84, i32* %85, align 4
  %86 = load i32*, i32** %13, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 4
  store i32* %87, i32** %13, align 8
  %88 = load i32*, i32** %13, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = load i64, i64* %14, align 8
  %91 = sub i64 %90, 4
  %92 = call i32 @memcpy(i32* %88, i32* %89, i64 %91)
  %93 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %94 = load i32, i32* @LPFC_DISC_TRC_ELS_RSP, align 4
  %95 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %96 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %99 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %93, i32 %94, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %97, i32 %100, i32 0)
  %102 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %103 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  %107 = load i32, i32* @lpfc_cmpl_els_rsp, align 4
  %108 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %109 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %111 = load i32, i32* @LPFC_ELS_RING, align 4
  %112 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %113 = call i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %110, i32 %111, %struct.lpfc_iocbq* %112, i32 0)
  store i32 %113, i32* %15, align 4
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* @IOCB_ERROR, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %47
  %118 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %119 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %120 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %118, %struct.lpfc_iocbq* %119)
  store i32 1, i32* %5, align 4
  br label %122

121:                                              ; preds = %47
  store i32 0, i32* %5, align 4
  br label %122

122:                                              ; preds = %121, %117, %46
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport*, i32, i64, i32, %struct.lpfc_nodelist*, i32, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

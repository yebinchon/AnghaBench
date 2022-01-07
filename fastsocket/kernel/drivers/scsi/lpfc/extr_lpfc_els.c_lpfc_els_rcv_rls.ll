; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rcv_rls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rcv_rls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32 }
%struct.lpfc_iocbq = type { %struct.TYPE_13__, i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.lpfc_nodelist = type { i64 }
%struct.TYPE_16__ = type { i32, %struct.lpfc_vport*, i32, i8* }
%struct.lpfc_dmabuf = type { i32 }
%struct.ls_rjt = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i32, i32, i64 }

@NLP_STE_UNMAPPED_NODE = common dso_local global i64 0, align 8
@NLP_STE_MAPPED_NODE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@lpfc_els_rsp_rls_acc = common dso_local global i32 0, align 4
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_NOT_FINISHED = common dso_local global i64 0, align 8
@LSRJT_UNABLE_TPC = common dso_local global i32 0, align 4
@LSEXP_CANT_GIVE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*)* @lpfc_els_rcv_rls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_els_rcv_rls(%struct.lpfc_vport* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_nodelist* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca %struct.lpfc_hba*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.lpfc_dmabuf*, align 8
  %11 = alloca %struct.ls_rjt, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %6, align 8
  store %struct.lpfc_nodelist* %2, %struct.lpfc_nodelist** %7, align 8
  %12 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %13 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %12, i32 0, i32 0
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %13, align 8
  store %struct.lpfc_hba* %14, %struct.lpfc_hba** %8, align 8
  %15 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %16 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NLP_STE_UNMAPPED_NODE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %22 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NLP_STE_MAPPED_NODE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %85

27:                                               ; preds = %20, %3
  %28 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %29 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %31, %struct.lpfc_dmabuf** %10, align 8
  %32 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %33 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = call %struct.TYPE_16__* @mempool_alloc(i32 %34, i32 %35)
  store %struct.TYPE_16__* %36, %struct.TYPE_16__** %9, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %38 = icmp ne %struct.TYPE_16__* %37, null
  br i1 %38, label %39, label %84

39:                                               ; preds = %27
  %40 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %42 = call i32 @lpfc_read_lnk_stat(%struct.lpfc_hba* %40, %struct.TYPE_16__* %41)
  %43 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %44 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 16
  %50 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %51 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %49, %53
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  %59 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %60 = call i32 @lpfc_nlp_get(%struct.lpfc_nodelist* %59)
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 1
  store %struct.lpfc_vport* %63, %struct.lpfc_vport** %65, align 8
  %66 = load i32, i32* @lpfc_els_rsp_rls_acc, align 4
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %71 = load i32, i32* @MBX_NOWAIT, align 4
  %72 = call i64 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %69, %struct.TYPE_16__* %70, i32 %71)
  %73 = load i64, i64* @MBX_NOT_FINISHED, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %107

76:                                               ; preds = %39
  %77 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %78 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %77)
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %80 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %81 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @mempool_free(%struct.TYPE_16__* %79, i32 %82)
  br label %84

84:                                               ; preds = %76, %27
  br label %85

85:                                               ; preds = %84, %26
  %86 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %11, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 3
  store i64 0, i64* %88, align 8
  %89 = load i32, i32* @LSRJT_UNABLE_TPC, align 4
  %90 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %11, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 2
  store i32 %89, i32* %92, align 4
  %93 = load i32, i32* @LSEXP_CANT_GIVE_DATA, align 4
  %94 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %11, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  store i32 %93, i32* %96, align 8
  %97 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %11, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  store i64 0, i64* %99, align 8
  %100 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %101 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %11, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %105 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %106 = call i32 @lpfc_els_rsp_reject(%struct.lpfc_vport* %100, i32 %103, %struct.lpfc_iocbq* %104, %struct.lpfc_nodelist* %105, i32* null)
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %85, %75
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local %struct.TYPE_16__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_read_lnk_stat(%struct.lpfc_hba*, %struct.TYPE_16__*) #1

declare dso_local i32 @lpfc_nlp_get(%struct.lpfc_nodelist*) #1

declare dso_local i64 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @mempool_free(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @lpfc_els_rsp_reject(%struct.lpfc_vport*, i32, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

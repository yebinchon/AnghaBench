; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_els_rrq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_els_rrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.lpfc_nodelist = type { i32 }
%struct.lpfc_node_rrq = type { i64, i32, %struct.lpfc_nodelist* }
%struct.RRQ = type { i8*, i8* }
%struct.lpfc_iocbq = type { i32, %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { %struct.lpfc_node_rrq* }
%struct.lpfc_dmabuf = type { i64 }

@ELS_CMD_RRQ = common dso_local global i32 0, align 4
@rrq_oxid = common dso_local global i32 0, align 4
@rrq_rxid = common dso_local global i32 0, align 4
@rrq_did = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_ELS_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Issue RRQ:     did:x%x\00", align 1
@lpfc_cmpl_els_rrq = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@IOCB_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32, %struct.lpfc_node_rrq*)* @lpfc_issue_els_rrq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_issue_els_rrq(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, i32 %2, %struct.lpfc_node_rrq* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_vport*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.lpfc_node_rrq*, align 8
  %10 = alloca %struct.lpfc_hba*, align 8
  %11 = alloca %struct.RRQ*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.lpfc_iocbq*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %6, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.lpfc_node_rrq* %3, %struct.lpfc_node_rrq** %9, align 8
  %17 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %18 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %17, i32 0, i32 1
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %18, align 8
  store %struct.lpfc_hba* %19, %struct.lpfc_hba** %10, align 8
  %20 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %21 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %9, align 8
  %22 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %21, i32 0, i32 2
  %23 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %22, align 8
  %24 = icmp ne %struct.lpfc_nodelist* %20, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %9, align 8
  %27 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %26, i32 0, i32 2
  %28 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %27, align 8
  store %struct.lpfc_nodelist* %28, %struct.lpfc_nodelist** %7, align 8
  br label %29

29:                                               ; preds = %25, %4
  %30 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %31 = icmp ne %struct.lpfc_nodelist* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %34 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32, %29
  store i32 1, i32* %5, align 4
  br label %128

37:                                               ; preds = %32
  store i32 20, i32* %15, align 4
  %38 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %39 = load i32, i32* %15, align 4
  %40 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @ELS_CMD_RRQ, align 4
  %43 = call %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport* %38, i32 1, i32 %39, i32 0, %struct.lpfc_nodelist* %40, i32 %41, i32 %42)
  store %struct.lpfc_iocbq* %43, %struct.lpfc_iocbq** %13, align 8
  %44 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %13, align 8
  %45 = icmp ne %struct.lpfc_iocbq* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %37
  store i32 1, i32* %5, align 4
  br label %128

47:                                               ; preds = %37
  %48 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %13, align 8
  %49 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %48, i32 0, i32 3
  store i32* %49, i32** %12, align 8
  %50 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %13, align 8
  %51 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.lpfc_dmabuf*
  %54 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i32*
  store i32* %56, i32** %14, align 8
  %57 = load i32, i32* @ELS_CMD_RRQ, align 4
  %58 = load i32*, i32** %14, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32*, i32** %14, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  store i32* %60, i32** %14, align 8
  %61 = load i32*, i32** %14, align 8
  %62 = bitcast i32* %61 to %struct.RRQ*
  store %struct.RRQ* %62, %struct.RRQ** %11, align 8
  %63 = load i32, i32* @rrq_oxid, align 4
  %64 = load %struct.RRQ*, %struct.RRQ** %11, align 8
  %65 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %66 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %9, align 8
  %70 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @bf_set(i32 %63, %struct.RRQ* %64, i32 %73)
  %75 = load i32, i32* @rrq_rxid, align 4
  %76 = load %struct.RRQ*, %struct.RRQ** %11, align 8
  %77 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %9, align 8
  %78 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @bf_set(i32 %75, %struct.RRQ* %76, i32 %79)
  %81 = load i32, i32* @rrq_did, align 4
  %82 = load %struct.RRQ*, %struct.RRQ** %11, align 8
  %83 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %84 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @bf_set(i32 %81, %struct.RRQ* %82, i32 %85)
  %87 = load %struct.RRQ*, %struct.RRQ** %11, align 8
  %88 = getelementptr inbounds %struct.RRQ, %struct.RRQ* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = call i8* @cpu_to_be32(i8* %89)
  %91 = load %struct.RRQ*, %struct.RRQ** %11, align 8
  %92 = getelementptr inbounds %struct.RRQ, %struct.RRQ* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load %struct.RRQ*, %struct.RRQ** %11, align 8
  %94 = getelementptr inbounds %struct.RRQ, %struct.RRQ* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i8* @cpu_to_be32(i8* %95)
  %97 = load %struct.RRQ*, %struct.RRQ** %11, align 8
  %98 = getelementptr inbounds %struct.RRQ, %struct.RRQ* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  %99 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %100 = load i32, i32* @LPFC_DISC_TRC_ELS_CMD, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %9, align 8
  %103 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %9, align 8
  %106 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %99, i32 %100, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %101, i64 %104, i32 %107)
  %109 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %9, align 8
  %110 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %13, align 8
  %111 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  store %struct.lpfc_node_rrq* %109, %struct.lpfc_node_rrq** %112, align 8
  %113 = load i32, i32* @lpfc_cmpl_els_rrq, align 4
  %114 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %13, align 8
  %115 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %117 = load i32, i32* @LPFC_ELS_RING, align 4
  %118 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %13, align 8
  %119 = call i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %116, i32 %117, %struct.lpfc_iocbq* %118, i32 0)
  store i32 %119, i32* %16, align 4
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* @IOCB_ERROR, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %47
  %124 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %125 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %13, align 8
  %126 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %124, %struct.lpfc_iocbq* %125)
  store i32 1, i32* %5, align 4
  br label %128

127:                                              ; preds = %47
  store i32 0, i32* %5, align 4
  br label %128

128:                                              ; preds = %127, %123, %46, %36
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport*, i32, i32, i32, %struct.lpfc_nodelist*, i32, i32) #1

declare dso_local i32 @bf_set(i32, %struct.RRQ*, i32) #1

declare dso_local i8* @cpu_to_be32(i8*) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i64, i32) #1

declare dso_local i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

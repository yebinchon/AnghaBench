; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_clear_rrq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_clear_rrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i64, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32 }
%struct.lpfc_iocbq = type { %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.lpfc_nodelist = type { i32, i32 }
%struct.RRQ = type { i64 }
%struct.lpfc_node_rrq = type { i32 }
%struct.lpfc_dmabuf = type { i64 }

@rrq_rxid = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"2883 Clear RRQ for SID:x%x OXID:x%x RXID:x%x x%x x%x\0A\00", align 1
@rrq_did = common dso_local global i32 0, align 4
@rrq_oxid = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_ELS_RSP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Clear RRQ:  did:x%x flg:x%x exchg:x%.08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*)* @lpfc_els_clear_rrq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_els_clear_rrq(%struct.lpfc_vport* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_nodelist* %2) #0 {
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  %7 = alloca %struct.lpfc_hba*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.RRQ*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.lpfc_node_rrq*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  store %struct.lpfc_nodelist* %2, %struct.lpfc_nodelist** %6, align 8
  %13 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %14 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %13, i32 0, i32 1
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %14, align 8
  store %struct.lpfc_hba* %15, %struct.lpfc_hba** %7, align 8
  %16 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %17 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.lpfc_dmabuf*
  %20 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 4
  store i32* %24, i32** %8, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = bitcast i32* %25 to %struct.RRQ*
  store %struct.RRQ* %26, %struct.RRQ** %9, align 8
  %27 = load %struct.RRQ*, %struct.RRQ** %9, align 8
  %28 = getelementptr inbounds %struct.RRQ, %struct.RRQ* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @be32_to_cpu(i64 %29)
  %31 = load %struct.RRQ*, %struct.RRQ** %9, align 8
  %32 = getelementptr inbounds %struct.RRQ, %struct.RRQ* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load i32, i32* @rrq_rxid, align 4
  %34 = load %struct.RRQ*, %struct.RRQ** %9, align 8
  %35 = call i64 @bf_get(i32 %33, %struct.RRQ* %34)
  store i64 %35, i64* %10, align 8
  %36 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %37 = load i32, i32* @KERN_INFO, align 4
  %38 = load i32, i32* @LOG_ELS, align 4
  %39 = load i32, i32* @rrq_did, align 4
  %40 = load %struct.RRQ*, %struct.RRQ** %9, align 8
  %41 = call i64 @bf_get(i32 %39, %struct.RRQ* %40)
  %42 = call i64 @be32_to_cpu(i64 %41)
  %43 = load i32, i32* @rrq_oxid, align 4
  %44 = load %struct.RRQ*, %struct.RRQ** %9, align 8
  %45 = call i64 @bf_get(i32 %43, %struct.RRQ* %44)
  %46 = load i64, i64* %10, align 8
  %47 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %48 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %51 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %36, i32 %37, i32 %38, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %42, i64 %45, i64 %46, i32 %49, i32 %53)
  %55 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %56 = load i32, i32* @LPFC_DISC_TRC_ELS_RSP, align 4
  %57 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %58 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %61 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.RRQ*, %struct.RRQ** %9, align 8
  %64 = getelementptr inbounds %struct.RRQ, %struct.RRQ* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %55, i32 %56, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %62, i64 %65)
  %67 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %68 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* @rrq_did, align 4
  %71 = load %struct.RRQ*, %struct.RRQ** %9, align 8
  %72 = call i64 @bf_get(i32 %70, %struct.RRQ* %71)
  %73 = call i64 @be32_to_cpu(i64 %72)
  %74 = icmp eq i64 %69, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %3
  %76 = load i32, i32* @rrq_oxid, align 4
  %77 = load %struct.RRQ*, %struct.RRQ** %9, align 8
  %78 = call i64 @bf_get(i32 %76, %struct.RRQ* %77)
  store i64 %78, i64* %11, align 8
  br label %81

79:                                               ; preds = %3
  %80 = load i64, i64* %10, align 8
  store i64 %80, i64* %11, align 8
  br label %81

81:                                               ; preds = %79, %75
  %82 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %83 = load i64, i64* %11, align 8
  %84 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %85 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call %struct.lpfc_node_rrq* @lpfc_get_active_rrq(%struct.lpfc_vport* %82, i64 %83, i32 %86)
  store %struct.lpfc_node_rrq* %87, %struct.lpfc_node_rrq** %12, align 8
  %88 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %12, align 8
  %89 = icmp ne %struct.lpfc_node_rrq* %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %81
  %91 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %92 = load i64, i64* %11, align 8
  %93 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %12, align 8
  %94 = call i32 @lpfc_clr_rrq_active(%struct.lpfc_hba* %91, i64 %92, %struct.lpfc_node_rrq* %93)
  br label %95

95:                                               ; preds = %90, %81
  ret void
}

declare dso_local i64 @be32_to_cpu(i64) #1

declare dso_local i64 @bf_get(i32, %struct.RRQ*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i64, i64, i64, i32, i32) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i64) #1

declare dso_local %struct.lpfc_node_rrq* @lpfc_get_active_rrq(%struct.lpfc_vport*, i64, i32) #1

declare dso_local i32 @lpfc_clr_rrq_active(%struct.lpfc_hba*, i64, %struct.lpfc_node_rrq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

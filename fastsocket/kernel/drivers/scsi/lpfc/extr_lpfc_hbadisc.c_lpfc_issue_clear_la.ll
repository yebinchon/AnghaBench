; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_issue_clear_la.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_issue_clear_la.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i64, i32, %struct.lpfc_sli }
%struct.lpfc_sli = type { i64, i64, i64, %struct.lpfc_sli_ring* }
%struct.lpfc_sli_ring = type { i32 }
%struct.lpfc_vport = type { i64 }
%struct.TYPE_6__ = type { %struct.lpfc_vport*, i32 }

@LPFC_CLEAR_LA = common dso_local global i64 0, align 8
@LPFC_PHYSICAL_PORT = common dso_local global i64 0, align 8
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@lpfc_mbx_cmpl_clear_la = common dso_local global i32 0, align 4
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_NOT_FINISHED = common dso_local global i32 0, align 4
@LPFC_STOP_IOCB_EVENT = common dso_local global i32 0, align 4
@LPFC_HBA_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_issue_clear_la(%struct.lpfc_hba* %0, %struct.lpfc_vport* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.lpfc_sli*, align 8
  %7 = alloca %struct.lpfc_sli_ring*, align 8
  %8 = alloca %struct.lpfc_sli_ring*, align 8
  %9 = alloca %struct.lpfc_sli_ring*, align 8
  %10 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.lpfc_vport* %1, %struct.lpfc_vport** %4, align 8
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %12 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %11, i32 0, i32 3
  store %struct.lpfc_sli* %12, %struct.lpfc_sli** %6, align 8
  %13 = load %struct.lpfc_sli*, %struct.lpfc_sli** %6, align 8
  %14 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %13, i32 0, i32 3
  %15 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %14, align 8
  %16 = load %struct.lpfc_sli*, %struct.lpfc_sli** %6, align 8
  %17 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %15, i64 %18
  store %struct.lpfc_sli_ring* %19, %struct.lpfc_sli_ring** %7, align 8
  %20 = load %struct.lpfc_sli*, %struct.lpfc_sli** %6, align 8
  %21 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %20, i32 0, i32 3
  %22 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %21, align 8
  %23 = load %struct.lpfc_sli*, %struct.lpfc_sli** %6, align 8
  %24 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %22, i64 %25
  store %struct.lpfc_sli_ring* %26, %struct.lpfc_sli_ring** %8, align 8
  %27 = load %struct.lpfc_sli*, %struct.lpfc_sli** %6, align 8
  %28 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %27, i32 0, i32 3
  %29 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %28, align 8
  %30 = load %struct.lpfc_sli*, %struct.lpfc_sli** %6, align 8
  %31 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %29, i64 %32
  store %struct.lpfc_sli_ring* %33, %struct.lpfc_sli_ring** %9, align 8
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %35 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @LPFC_CLEAR_LA, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %51, label %39

39:                                               ; preds = %2
  %40 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %41 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @LPFC_PHYSICAL_PORT, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %47 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @LPFC_SLI_REV4, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45, %39, %2
  br label %109

52:                                               ; preds = %45
  %53 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %54 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call %struct.TYPE_6__* @mempool_alloc(i32 %55, i32 %56)
  store %struct.TYPE_6__* %57, %struct.TYPE_6__** %5, align 8
  %58 = icmp ne %struct.TYPE_6__* %57, null
  br i1 %58, label %59, label %109

59:                                               ; preds = %52
  %60 = load i64, i64* @LPFC_CLEAR_LA, align 8
  %61 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %62 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = call i32 @lpfc_clear_la(%struct.lpfc_hba* %63, %struct.TYPE_6__* %64)
  %66 = load i32, i32* @lpfc_mbx_cmpl_clear_la, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store %struct.lpfc_vport* %69, %struct.lpfc_vport** %71, align 8
  %72 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %74 = load i32, i32* @MBX_NOWAIT, align 4
  %75 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %72, %struct.TYPE_6__* %73, i32 %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @MBX_NOT_FINISHED, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %108

79:                                               ; preds = %59
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %81 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %82 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @mempool_free(%struct.TYPE_6__* %80, i32 %83)
  %85 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %86 = call i32 @lpfc_disc_flush_list(%struct.lpfc_vport* %85)
  %87 = load i32, i32* @LPFC_STOP_IOCB_EVENT, align 4
  %88 = xor i32 %87, -1
  %89 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %7, align 8
  %90 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load i32, i32* @LPFC_STOP_IOCB_EVENT, align 4
  %94 = xor i32 %93, -1
  %95 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %8, align 8
  %96 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, %94
  store i32 %98, i32* %96, align 4
  %99 = load i32, i32* @LPFC_STOP_IOCB_EVENT, align 4
  %100 = xor i32 %99, -1
  %101 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %9, align 8
  %102 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, %100
  store i32 %104, i32* %102, align 4
  %105 = load i64, i64* @LPFC_HBA_ERROR, align 8
  %106 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %107 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  br label %108

108:                                              ; preds = %79, %59
  br label %109

109:                                              ; preds = %51, %108, %52
  ret void
}

declare dso_local %struct.TYPE_6__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_clear_la(%struct.lpfc_hba*, %struct.TYPE_6__*) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @mempool_free(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @lpfc_disc_flush_list(%struct.lpfc_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

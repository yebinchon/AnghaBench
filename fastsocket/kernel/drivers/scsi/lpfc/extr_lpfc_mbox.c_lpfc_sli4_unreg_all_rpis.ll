; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_sli4_unreg_all_rpis.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_sli4_unreg_all_rpis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i64, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, i32* }
%struct.TYPE_14__ = type { i32*, i32, %struct.lpfc_vport*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@lpfc_sli_def_mbox_cmpl = common dso_local global i32 0, align 4
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_NOT_FINISHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_sli4_unreg_all_rpis(%struct.lpfc_vport* %0) #0 {
  %2 = alloca %struct.lpfc_vport*, align 8
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %2, align 8
  %6 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %7 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %6, i32 0, i32 1
  %8 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  store %struct.lpfc_hba* %8, %struct.lpfc_hba** %3, align 8
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %10 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.TYPE_14__* @mempool_alloc(i32 %11, i32 %12)
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %4, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %15 = icmp ne %struct.TYPE_14__* %14, null
  br i1 %15, label %16, label %59

16:                                               ; preds = %1
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %18 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %19 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %22 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %25 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %30 = call i32 @lpfc_unreg_login(%struct.lpfc_hba* %17, i64 %20, i32 %28, %struct.TYPE_14__* %29)
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  store i32 16384, i32* %36, align 8
  %37 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 2
  store %struct.lpfc_vport* %37, %struct.lpfc_vport** %39, align 8
  %40 = load i32, i32* @lpfc_sli_def_mbox_cmpl, align 4
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  %45 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %47 = load i32, i32* @MBX_NOWAIT, align 4
  %48 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %45, %struct.TYPE_14__* %46, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @MBX_NOT_FINISHED, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %16
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %54 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %55 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @mempool_free(%struct.TYPE_14__* %53, i32 %56)
  br label %58

58:                                               ; preds = %52, %16
  br label %59

59:                                               ; preds = %58, %1
  ret void
}

declare dso_local %struct.TYPE_14__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_unreg_login(%struct.lpfc_hba*, i64, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @mempool_free(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

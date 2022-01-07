; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_unreg_all_rpis.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_unreg_all_rpis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, i32 }
%struct.TYPE_6__ = type { i32*, i32, %struct.lpfc_vport* }

@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@LPFC_UNREG_ALL_RPIS_VPORT = common dso_local global i32 0, align 4
@lpfc_sli_def_mbox_cmpl = common dso_local global i32 0, align 4
@LPFC_MBOX_TMO = common dso_local global i32 0, align 4
@MBX_TIMEOUT = common dso_local global i32 0, align 4
@MBX_NOT_FINISHED = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_MBOX = common dso_local global i32 0, align 4
@LOG_VPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"1836 Could not issue unreg_login(all_rpis) status %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_unreg_all_rpis(%struct.lpfc_vport* %0) #0 {
  %2 = alloca %struct.lpfc_vport*, align 8
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %2, align 8
  %6 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %7 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %6, i32 0, i32 1
  %8 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  store %struct.lpfc_hba* %8, %struct.lpfc_hba** %3, align 8
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %10 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @LPFC_SLI_REV4, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %16 = call i32 @lpfc_sli4_unreg_all_rpis(%struct.lpfc_vport* %15)
  br label %71

17:                                               ; preds = %1
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %19 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.TYPE_6__* @mempool_alloc(i32 %20, i32 %21)
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %4, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = icmp ne %struct.TYPE_6__* %23, null
  br i1 %24, label %25, label %71

25:                                               ; preds = %17
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %27 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %28 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @LPFC_UNREG_ALL_RPIS_VPORT, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = call i32 @lpfc_unreg_login(%struct.lpfc_hba* %26, i32 %29, i32 %30, %struct.TYPE_6__* %31)
  %33 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  store %struct.lpfc_vport* %33, %struct.lpfc_vport** %35, align 8
  %36 = load i32, i32* @lpfc_sli_def_mbox_cmpl, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  %41 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = load i32, i32* @LPFC_MBOX_TMO, align 4
  %44 = call i32 @lpfc_sli_issue_mbox_wait(%struct.lpfc_hba* %41, %struct.TYPE_6__* %42, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @MBX_TIMEOUT, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %25
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %51 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @mempool_free(%struct.TYPE_6__* %49, i32 %52)
  br label %54

54:                                               ; preds = %48, %25
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @MBX_TIMEOUT, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @MBX_NOT_FINISHED, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %58, %54
  %63 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %64 = load i32, i32* @KERN_ERR, align 4
  %65 = load i32, i32* @LOG_MBOX, align 4
  %66 = load i32, i32* @LOG_VPORT, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %63, i32 %64, i32 %67, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %62, %58
  br label %71

71:                                               ; preds = %14, %70, %17
  ret void
}

declare dso_local i32 @lpfc_sli4_unreg_all_rpis(%struct.lpfc_vport*) #1

declare dso_local %struct.TYPE_6__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_unreg_login(%struct.lpfc_hba*, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @lpfc_sli_issue_mbox_wait(%struct.lpfc_hba*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @mempool_free(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_host_reset_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_host_reset_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i64 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32 }

@SUCCESS = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_FCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"3172 SCSI layer issued Host Reset Data:\0A\00", align 1
@LPFC_MBX_WAIT = common dso_local global i32 0, align 4
@FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"3323 Failed host reset, bring it offline\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @lpfc_host_reset_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_host_reset_handler(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %9 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %3, align 8
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %14 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %16, %struct.lpfc_vport** %4, align 8
  %17 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %18 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %17, i32 0, i32 0
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %18, align 8
  store %struct.lpfc_hba* %19, %struct.lpfc_hba** %5, align 8
  %20 = load i32, i32* @SUCCESS, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %22 = load i32, i32* @KERN_ERR, align 4
  %23 = load i32, i32* @LOG_FCP, align 4
  %24 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %21, i32 %22, i32 %23, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %26 = load i32, i32* @LPFC_MBX_WAIT, align 4
  %27 = call i32 @lpfc_offline_prep(%struct.lpfc_hba* %25, i32 %26)
  %28 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %29 = call i32 @lpfc_offline(%struct.lpfc_hba* %28)
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %31 = call i32 @lpfc_sli_brdrestart(%struct.lpfc_hba* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %1
  %35 = load i32, i32* @FAILED, align 4
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %34, %1
  %37 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %38 = call i32 @lpfc_online(%struct.lpfc_hba* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @FAILED, align 4
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %41, %36
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %45 = call i32 @lpfc_unblock_mgmt_io(%struct.lpfc_hba* %44)
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @FAILED, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %51 = load i32, i32* @KERN_ERR, align 4
  %52 = load i32, i32* @LOG_FCP, align 4
  %53 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %50, i32 %51, i32 %52, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %55 = call i32 @lpfc_sli4_offline_eratt(%struct.lpfc_hba* %54)
  br label %56

56:                                               ; preds = %49, %43
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*) #1

declare dso_local i32 @lpfc_offline_prep(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_offline(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli_brdrestart(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_online(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_unblock_mgmt_io(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_offline_eratt(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_diag_loopback_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_diag_loopback_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_bsg_job = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i64 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@lpfc_sli_intf_if_type = common dso_local global i32 0, align 4
@LPFC_SLI_INTF_IF_TYPE_2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_bsg_job*)* @lpfc_bsg_diag_loopback_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_bsg_diag_loopback_mode(%struct.fc_bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc_bsg_job*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca i32, align 4
  store %struct.fc_bsg_job* %0, %struct.fc_bsg_job** %3, align 8
  %8 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %9 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %8, i32 0, i32 0
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  store %struct.Scsi_Host* %10, %struct.Scsi_Host** %4, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %12 = icmp ne %struct.Scsi_Host* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %65

16:                                               ; preds = %1
  %17 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %18 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %17, i32 0, i32 0
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %18, align 8
  %20 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %22, %struct.lpfc_vport** %5, align 8
  %23 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %24 = icmp ne %struct.lpfc_vport* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %16
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %65

28:                                               ; preds = %16
  %29 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %30 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %29, i32 0, i32 0
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %30, align 8
  store %struct.lpfc_hba* %31, %struct.lpfc_hba** %6, align 8
  %32 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %33 = icmp ne %struct.lpfc_hba* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %65

37:                                               ; preds = %28
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %39 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @LPFC_SLI_REV4, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %45 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %46 = call i32 @lpfc_sli3_bsg_diag_loopback_mode(%struct.lpfc_hba* %44, %struct.fc_bsg_job* %45)
  store i32 %46, i32* %7, align 4
  br label %63

47:                                               ; preds = %37
  %48 = load i32, i32* @lpfc_sli_intf_if_type, align 4
  %49 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %50 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i64 @bf_get(i32 %48, i32* %51)
  %53 = load i64, i64* @LPFC_SLI_INTF_IF_TYPE_2, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %57 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %58 = call i32 @lpfc_sli4_bsg_diag_loopback_mode(%struct.lpfc_hba* %56, %struct.fc_bsg_job* %57)
  store i32 %58, i32* %7, align 4
  br label %62

59:                                               ; preds = %47
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %59, %55
  br label %63

63:                                               ; preds = %62, %43
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %34, %25, %13
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @lpfc_sli3_bsg_diag_loopback_mode(%struct.lpfc_hba*, %struct.fc_bsg_job*) #1

declare dso_local i64 @bf_get(i32, i32*) #1

declare dso_local i32 @lpfc_sli4_bsg_diag_loopback_mode(%struct.lpfc_hba*, %struct.fc_bsg_job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_diag_mode_enter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_diag_mode_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32, %struct.lpfc_vport*, %struct.lpfc_sli }
%struct.lpfc_vport = type { i32 }
%struct.lpfc_sli = type { i32, %struct.lpfc_sli_ring* }
%struct.lpfc_sli_ring = type { i32 }
%struct.Scsi_Host = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@LPFC_FCP_RING = common dso_local global i64 0, align 8
@LPFC_HBA_ERROR = common dso_local global i64 0, align 8
@LPFC_BLOCK_MGMT_IO = common dso_local global i32 0, align 4
@LPFC_SLI_ACTIVE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*)* @lpfc_bsg_diag_mode_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_bsg_diag_mode_enter(%struct.lpfc_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_vport**, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.lpfc_sli*, align 8
  %7 = alloca %struct.lpfc_sli_ring*, align 8
  %8 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %10 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %9, i32 0, i32 3
  store %struct.lpfc_sli* %10, %struct.lpfc_sli** %6, align 8
  %11 = load %struct.lpfc_sli*, %struct.lpfc_sli** %6, align 8
  %12 = icmp ne %struct.lpfc_sli* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %109

16:                                               ; preds = %1
  %17 = load %struct.lpfc_sli*, %struct.lpfc_sli** %6, align 8
  %18 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %17, i32 0, i32 1
  %19 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %18, align 8
  %20 = load i64, i64* @LPFC_FCP_RING, align 8
  %21 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %19, i64 %20
  store %struct.lpfc_sli_ring* %21, %struct.lpfc_sli_ring** %7, align 8
  %22 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %7, align 8
  %23 = icmp ne %struct.lpfc_sli_ring* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %109

27:                                               ; preds = %16
  %28 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %29 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @LPFC_HBA_ERROR, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %47, label %33

33:                                               ; preds = %27
  %34 = load %struct.lpfc_sli*, %struct.lpfc_sli** %6, align 8
  %35 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @LPFC_BLOCK_MGMT_IO, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %33
  %41 = load %struct.lpfc_sli*, %struct.lpfc_sli** %6, align 8
  %42 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @LPFC_SLI_ACTIVE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %40, %33, %27
  %48 = load i32, i32* @EACCES, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %109

50:                                               ; preds = %40
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %52 = call %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba* %51)
  store %struct.lpfc_vport** %52, %struct.lpfc_vport*** %4, align 8
  %53 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %4, align 8
  %54 = icmp ne %struct.lpfc_vport** %53, null
  br i1 %54, label %55, label %87

55:                                               ; preds = %50
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %80, %55
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %59 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp sle i32 %57, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %4, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %63, i64 %65
  %67 = load %struct.lpfc_vport*, %struct.lpfc_vport** %66, align 8
  %68 = icmp ne %struct.lpfc_vport* %67, null
  br label %69

69:                                               ; preds = %62, %56
  %70 = phi i1 [ false, %56 ], [ %68, %62 ]
  br i1 %70, label %71, label %83

71:                                               ; preds = %69
  %72 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %4, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %72, i64 %74
  %76 = load %struct.lpfc_vport*, %struct.lpfc_vport** %75, align 8
  %77 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %76)
  store %struct.Scsi_Host* %77, %struct.Scsi_Host** %5, align 8
  %78 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %79 = call i32 @scsi_block_requests(%struct.Scsi_Host* %78)
  br label %80

80:                                               ; preds = %71
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %56

83:                                               ; preds = %69
  %84 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %85 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %4, align 8
  %86 = call i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba* %84, %struct.lpfc_vport** %85)
  br label %94

87:                                               ; preds = %50
  %88 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %89 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %88, i32 0, i32 2
  %90 = load %struct.lpfc_vport*, %struct.lpfc_vport** %89, align 8
  %91 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %90)
  store %struct.Scsi_Host* %91, %struct.Scsi_Host** %5, align 8
  %92 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %93 = call i32 @scsi_block_requests(%struct.Scsi_Host* %92)
  br label %94

94:                                               ; preds = %87, %83
  br label %95

95:                                               ; preds = %106, %94
  %96 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %7, align 8
  %97 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %96, i32 0, i32 0
  %98 = call i32 @list_empty(i32* %97)
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  br i1 %100, label %101, label %108

101:                                              ; preds = %95
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  %104 = icmp sgt i32 %102, 500
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  br label %108

106:                                              ; preds = %101
  %107 = call i32 @msleep(i32 10)
  br label %95

108:                                              ; preds = %105, %95
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %108, %47, %24, %13
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba*) #1

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @scsi_block_requests(%struct.Scsi_Host*) #1

declare dso_local i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba*, %struct.lpfc_vport**) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

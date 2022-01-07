; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_create_shost.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_create_shost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_2__*, %struct.lpfc_vport*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.lpfc_vport = type { i32 }
%struct.Scsi_Host = type { i32 }

@FF_DEF_EDTOV = common dso_local global i32 0, align 4
@FF_DEF_RATOV = common dso_local global i32 0, align 4
@FF_DEF_ALTOV = common dso_local global i32 0, align 4
@FF_DEF_ARBTOV = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*)* @lpfc_create_shost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_create_shost(%struct.lpfc_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  %6 = load i32, i32* @FF_DEF_EDTOV, align 4
  %7 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %8 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %7, i32 0, i32 7
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @FF_DEF_RATOV, align 4
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %11 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %10, i32 0, i32 6
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @FF_DEF_ALTOV, align 4
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %14 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @FF_DEF_ARBTOV, align 4
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %17 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 8
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %19 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %18, i32 0, i32 3
  %20 = call i32 @atomic_set(i32* %19, i32 0)
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %23 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %26 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call %struct.lpfc_vport* @lpfc_create_port(%struct.lpfc_hba* %21, i32 %24, i32* %28)
  store %struct.lpfc_vport* %29, %struct.lpfc_vport** %4, align 8
  %30 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %31 = icmp ne %struct.lpfc_vport* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %1
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %48

35:                                               ; preds = %1
  %36 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %37 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %36)
  store %struct.Scsi_Host* %37, %struct.Scsi_Host** %5, align 8
  %38 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %40 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %39, i32 0, i32 1
  store %struct.lpfc_vport* %38, %struct.lpfc_vport** %40, align 8
  %41 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %42 = call i32 @lpfc_debugfs_initialize(%struct.lpfc_vport* %41)
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %44 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %47 = call i32 @pci_set_drvdata(%struct.TYPE_2__* %45, %struct.Scsi_Host* %46)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %35, %32
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local %struct.lpfc_vport* @lpfc_create_port(%struct.lpfc_hba*, i32, i32*) #1

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_debugfs_initialize(%struct.lpfc_vport*) #1

declare dso_local i32 @pci_set_drvdata(%struct.TYPE_2__*, %struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

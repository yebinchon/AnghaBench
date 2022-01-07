; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_pci_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_pci_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i64, i32, i32, i32, i32, i64, %struct.Scsi_Host*, %struct.sas_ha_struct*, i32, i32*, i32*, %struct.pci_dev* }
%struct.sas_ha_struct = type { %struct.pm8001_hba_info* }
%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i64 }
%struct.Scsi_Host = type { i32 }

@pm8001_chips = common dso_local global i32* null, align 8
@pm8001_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@DRV_NAME = common dso_local global i8* null, align 8
@chip_8001 = common dso_local global i64 0, align 8
@IOMB_SIZE_SPCV = common dso_local global i32 0, align 4
@IOMB_SIZE_SPC = common dso_local global i32 0, align 4
@pm8001_tasklet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pm8001_hba_info* (%struct.pci_dev*, %struct.pci_device_id*, %struct.Scsi_Host*)* @pm8001_pci_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pm8001_hba_info* @pm8001_pci_alloc(%struct.pci_dev* %0, %struct.pci_device_id* %1, %struct.Scsi_Host* %2) #0 {
  %4 = alloca %struct.pm8001_hba_info*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.pci_device_id*, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.pm8001_hba_info*, align 8
  %9 = alloca %struct.sas_ha_struct*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %6, align 8
  store %struct.Scsi_Host* %2, %struct.Scsi_Host** %7, align 8
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %11 = call %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host* %10)
  store %struct.sas_ha_struct* %11, %struct.sas_ha_struct** %9, align 8
  %12 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %9, align 8
  %13 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %12, i32 0, i32 0
  %14 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %13, align 8
  store %struct.pm8001_hba_info* %14, %struct.pm8001_hba_info** %8, align 8
  %15 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  %16 = icmp ne %struct.pm8001_hba_info* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store %struct.pm8001_hba_info* null, %struct.pm8001_hba_info** %4, align 8
  br label %89

18:                                               ; preds = %3
  %19 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %20 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  %21 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %20, i32 0, i32 11
  store %struct.pci_dev* %19, %struct.pci_dev** %21, align 8
  %22 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 1
  %24 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  %25 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %24, i32 0, i32 10
  store i32* %23, i32** %25, align 8
  %26 = load %struct.pci_device_id*, %struct.pci_device_id** %6, align 8
  %27 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  %30 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load i32*, i32** @pm8001_chips, align 8
  %32 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  %33 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  %37 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %36, i32 0, i32 9
  store i32* %35, i32** %37, align 8
  %38 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  %42 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %41, i32 0, i32 8
  store i32 %40, i32* %42, align 8
  %43 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %9, align 8
  %44 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  %45 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %44, i32 0, i32 7
  store %struct.sas_ha_struct* %43, %struct.sas_ha_struct** %45, align 8
  %46 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %47 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  %48 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %47, i32 0, i32 6
  store %struct.Scsi_Host* %46, %struct.Scsi_Host** %48, align 8
  %49 = load i32, i32* @pm8001_id, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @pm8001_id, align 4
  %51 = sext i32 %49 to i64
  %52 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  %53 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %52, i32 0, i32 5
  store i64 %51, i64* %53, align 8
  %54 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  %55 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %54, i32 0, i32 1
  store i32 1, i32* %55, align 8
  %56 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  %57 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** @DRV_NAME, align 8
  %60 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  %61 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @sprintf(i32 %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %59, i64 %62)
  %64 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  %65 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @chip_8001, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %18
  %70 = load i32, i32* @IOMB_SIZE_SPCV, align 4
  %71 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  %72 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 8
  br label %77

73:                                               ; preds = %18
  %74 = load i32, i32* @IOMB_SIZE_SPC, align 4
  %75 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  %76 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %73, %69
  %78 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  %79 = call i32 @pm8001_ioremap(%struct.pm8001_hba_info* %78)
  %80 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  %81 = load %struct.pci_device_id*, %struct.pci_device_id** %6, align 8
  %82 = call i32 @pm8001_alloc(%struct.pm8001_hba_info* %80, %struct.pci_device_id* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %77
  %85 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  store %struct.pm8001_hba_info* %85, %struct.pm8001_hba_info** %4, align 8
  br label %89

86:                                               ; preds = %77
  %87 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  %88 = call i32 @pm8001_free(%struct.pm8001_hba_info* %87)
  store %struct.pm8001_hba_info* null, %struct.pm8001_hba_info** %4, align 8
  br label %89

89:                                               ; preds = %86, %84, %17
  %90 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  ret %struct.pm8001_hba_info* %90
}

declare dso_local %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host*) #1

declare dso_local i32 @sprintf(i32, i8*, i8*, i64) #1

declare dso_local i32 @pm8001_ioremap(%struct.pm8001_hba_info*) #1

declare dso_local i32 @pm8001_alloc(%struct.pm8001_hba_info*, %struct.pci_device_id*) #1

declare dso_local i32 @pm8001_free(%struct.pm8001_hba_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_prep_sas_ha_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_init.c_pm8001_prep_sas_ha_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.pm8001_chip_info = type { i32 }
%struct.asd_sas_phy = type opaque
%struct.asd_sas_port = type { i32 }
%struct.sas_ha_struct = type { i32, %struct.asd_sas_port**, %struct.asd_sas_port** }

@GFP_KERNEL = common dso_local global i32 0, align 4
@pm8001_stt = common dso_local global i32 0, align 4
@PM8001_MAX_DEVICES = common dso_local global i32 0, align 4
@pm8001_id = common dso_local global i32 0, align 4
@PM8001_CAN_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, %struct.pm8001_chip_info*)* @pm8001_prep_sas_ha_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8001_prep_sas_ha_init(%struct.Scsi_Host* %0, %struct.pm8001_chip_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.pm8001_chip_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.asd_sas_phy**, align 8
  %9 = alloca %struct.asd_sas_port**, align 8
  %10 = alloca %struct.sas_ha_struct*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.pm8001_chip_info* %1, %struct.pm8001_chip_info** %5, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %12 = call %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host* %11)
  store %struct.sas_ha_struct* %12, %struct.sas_ha_struct** %10, align 8
  %13 = load %struct.pm8001_chip_info*, %struct.pm8001_chip_info** %5, align 8
  %14 = getelementptr inbounds %struct.pm8001_chip_info, %struct.pm8001_chip_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %10, align 8
  %18 = call i32 @memset(%struct.sas_ha_struct* %17, i32 0, i32 24)
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.asd_sas_port** @kcalloc(i32 %19, i32 8, i32 %20)
  %22 = bitcast %struct.asd_sas_port** %21 to %struct.asd_sas_phy**
  store %struct.asd_sas_phy** %22, %struct.asd_sas_phy*** %8, align 8
  %23 = load %struct.asd_sas_phy**, %struct.asd_sas_phy*** %8, align 8
  %24 = icmp ne %struct.asd_sas_phy** %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %78

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.asd_sas_port** @kcalloc(i32 %27, i32 8, i32 %28)
  store %struct.asd_sas_port** %29, %struct.asd_sas_port*** %9, align 8
  %30 = load %struct.asd_sas_port**, %struct.asd_sas_port*** %9, align 8
  %31 = icmp ne %struct.asd_sas_port** %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  br label %74

33:                                               ; preds = %26
  %34 = load %struct.asd_sas_phy**, %struct.asd_sas_phy*** %8, align 8
  %35 = bitcast %struct.asd_sas_phy** %34 to %struct.asd_sas_port**
  %36 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %10, align 8
  %37 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %36, i32 0, i32 2
  store %struct.asd_sas_port** %35, %struct.asd_sas_port*** %37, align 8
  %38 = load %struct.asd_sas_port**, %struct.asd_sas_port*** %9, align 8
  %39 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %10, align 8
  %40 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %39, i32 0, i32 1
  store %struct.asd_sas_port** %38, %struct.asd_sas_port*** %40, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i32 @kzalloc(i32 4, i32 %41)
  %43 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %10, align 8
  %44 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %10, align 8
  %46 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %33
  br label %71

50:                                               ; preds = %33
  %51 = load i32, i32* @pm8001_stt, align 4
  %52 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %53 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %52, i32 0, i32 7
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @PM8001_MAX_DEVICES, align 4
  %55 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %56 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 8
  %57 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %58 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %57, i32 0, i32 0
  store i32 8, i32* %58, align 8
  %59 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %60 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %59, i32 0, i32 5
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* @pm8001_id, align 4
  %62 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %63 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %65 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %64, i32 0, i32 1
  store i32 16, i32* %65, align 4
  %66 = load i32, i32* @PM8001_CAN_QUEUE, align 4
  %67 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %68 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %70 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %69, i32 0, i32 2
  store i32 32, i32* %70, align 8
  store i32 0, i32* %3, align 4
  br label %79

71:                                               ; preds = %49
  %72 = load %struct.asd_sas_port**, %struct.asd_sas_port*** %9, align 8
  %73 = call i32 @kfree(%struct.asd_sas_port** %72)
  br label %74

74:                                               ; preds = %71, %32
  %75 = load %struct.asd_sas_phy**, %struct.asd_sas_phy*** %8, align 8
  %76 = bitcast %struct.asd_sas_phy** %75 to %struct.asd_sas_port**
  %77 = call i32 @kfree(%struct.asd_sas_port** %76)
  br label %78

78:                                               ; preds = %74, %25
  store i32 -1, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %50
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host*) #1

declare dso_local i32 @memset(%struct.sas_ha_struct*, i32, i32) #1

declare dso_local %struct.asd_sas_port** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.asd_sas_port**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

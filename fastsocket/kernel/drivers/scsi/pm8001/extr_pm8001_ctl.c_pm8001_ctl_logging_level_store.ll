; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_ctl.c_pm8001_ctl_logging_level_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_ctl.c_pm8001_ctl_logging_level_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.sas_ha_struct = type { %struct.pm8001_hba_info* }
%struct.pm8001_hba_info = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pm8001_ctl_logging_level_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8001_ctl_logging_level_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.sas_ha_struct*, align 8
  %12 = alloca %struct.pm8001_hba_info*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %14)
  store %struct.Scsi_Host* %15, %struct.Scsi_Host** %10, align 8
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %17 = call %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host* %16)
  store %struct.sas_ha_struct* %17, %struct.sas_ha_struct** %11, align 8
  %18 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %11, align 8
  %19 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %18, i32 0, i32 0
  %20 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %19, align 8
  store %struct.pm8001_hba_info* %20, %struct.pm8001_hba_info** %12, align 8
  store i32 0, i32* %13, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @sscanf(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %13)
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %33

27:                                               ; preds = %4
  %28 = load i32, i32* %13, align 4
  %29 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %12, align 8
  %30 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @strlen(i8* %31)
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %27, %24
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

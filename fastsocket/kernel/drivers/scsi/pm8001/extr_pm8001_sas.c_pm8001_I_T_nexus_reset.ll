; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_sas.c_pm8001_I_T_nexus_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_sas.c_pm8001_I_T_nexus_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.pm8001_hba_info*, %struct.pm8001_device*, i32)* }
%struct.pm8001_hba_info = type { i32 }
%struct.pm8001_device = type { i32, i32* }
%struct.domain_device = type { %struct.pm8001_device* }
%struct.sas_phy = type { i32 }

@TMF_RESP_FUNC_FAILED = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@completion_setstate = common dso_local global i32 0, align 4
@PM8001_CHIP_DISP = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [23 x i8] c" for device[%x]:rc=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm8001_I_T_nexus_reset(%struct.domain_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.domain_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pm8001_device*, align 8
  %6 = alloca %struct.pm8001_hba_info*, align 8
  %7 = alloca %struct.sas_phy*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %3, align 8
  %8 = load i32, i32* @TMF_RESP_FUNC_FAILED, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %10 = icmp ne %struct.domain_device* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %13 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %12, i32 0, i32 0
  %14 = load %struct.pm8001_device*, %struct.pm8001_device** %13, align 8
  %15 = icmp ne %struct.pm8001_device* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11, %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %70

19:                                               ; preds = %11
  %20 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %21 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %20, i32 0, i32 0
  %22 = load %struct.pm8001_device*, %struct.pm8001_device** %21, align 8
  store %struct.pm8001_device* %22, %struct.pm8001_device** %5, align 8
  %23 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %24 = call %struct.pm8001_hba_info* @pm8001_find_ha_by_dev(%struct.domain_device* %23)
  store %struct.pm8001_hba_info* %24, %struct.pm8001_hba_info** %6, align 8
  %25 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %26 = call %struct.sas_phy* @sas_get_local_phy(%struct.domain_device* %25)
  store %struct.sas_phy* %26, %struct.sas_phy** %7, align 8
  %27 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %28 = call i64 @dev_is_sata(%struct.domain_device* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %19
  %31 = load i32, i32* @completion_setstate, align 4
  %32 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %31)
  %33 = load %struct.sas_phy*, %struct.sas_phy** %7, align 8
  %34 = call i64 @scsi_is_sas_phy_local(%struct.sas_phy* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %66

37:                                               ; preds = %30
  %38 = load %struct.sas_phy*, %struct.sas_phy** %7, align 8
  %39 = call i32 @sas_phy_reset(%struct.sas_phy* %38, i32 1)
  store i32 %39, i32* %4, align 4
  %40 = call i32 @msleep(i32 2000)
  %41 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %6, align 8
  %42 = load %struct.pm8001_device*, %struct.pm8001_device** %5, align 8
  %43 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %44 = call i32 @pm8001_exec_internal_task_abort(%struct.pm8001_hba_info* %41, %struct.pm8001_device* %42, %struct.domain_device* %43, i32 1, i32 0)
  store i32 %44, i32* %4, align 4
  %45 = load %struct.pm8001_device*, %struct.pm8001_device** %5, align 8
  %46 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %45, i32 0, i32 1
  store i32* @completion_setstate, i32** %46, align 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PM8001_CHIP_DISP, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32 (%struct.pm8001_hba_info*, %struct.pm8001_device*, i32)*, i32 (%struct.pm8001_hba_info*, %struct.pm8001_device*, i32)** %48, align 8
  %50 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %6, align 8
  %51 = load %struct.pm8001_device*, %struct.pm8001_device** %5, align 8
  %52 = call i32 %49(%struct.pm8001_hba_info* %50, %struct.pm8001_device* %51, i32 1)
  store i32 %52, i32* %4, align 4
  %53 = call i32 @wait_for_completion(i32* @completion_setstate)
  br label %58

54:                                               ; preds = %19
  %55 = load %struct.sas_phy*, %struct.sas_phy** %7, align 8
  %56 = call i32 @sas_phy_reset(%struct.sas_phy* %55, i32 1)
  store i32 %56, i32* %4, align 4
  %57 = call i32 @msleep(i32 2000)
  br label %58

58:                                               ; preds = %54, %37
  %59 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %6, align 8
  %60 = load %struct.pm8001_device*, %struct.pm8001_device** %5, align 8
  %61 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @pm8001_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63)
  %65 = call i32 @PM8001_EH_DBG(%struct.pm8001_hba_info* %59, i32 %64)
  br label %66

66:                                               ; preds = %58, %36
  %67 = load %struct.sas_phy*, %struct.sas_phy** %7, align 8
  %68 = call i32 @sas_put_local_phy(%struct.sas_phy* %67)
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %66, %16
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.pm8001_hba_info* @pm8001_find_ha_by_dev(%struct.domain_device*) #1

declare dso_local %struct.sas_phy* @sas_get_local_phy(%struct.domain_device*) #1

declare dso_local i64 @dev_is_sata(%struct.domain_device*) #1

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i64 @scsi_is_sas_phy_local(%struct.sas_phy*) #1

declare dso_local i32 @sas_phy_reset(%struct.sas_phy*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pm8001_exec_internal_task_abort(%struct.pm8001_hba_info*, %struct.pm8001_device*, %struct.domain_device*, i32, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @PM8001_EH_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, i32, i32) #1

declare dso_local i32 @sas_put_local_phy(%struct.sas_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

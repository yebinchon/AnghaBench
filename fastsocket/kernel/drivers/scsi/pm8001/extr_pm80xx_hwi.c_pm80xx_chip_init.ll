; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm80xx_hwi.c_pm80xx_chip_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm80xx_hwi.c_pm80xx_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [24 x i8] c"Firmware is not ready!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@PM8001_MAX_SPCV_INB_NUM = common dso_local global i64 0, align 8
@PM8001_MAX_SPCV_OUTB_NUM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"MPI initialize successful!\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Checking for encryption\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Encryption error !!\0A\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"Encryption enabled with error.Saving encryption key to flash\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*)* @pm80xx_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm80xx_chip_init(%struct.pm8001_hba_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %7 = call i32 @check_fw_ready(%struct.pm8001_hba_info* %6)
  %8 = icmp eq i32 -1, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %11 = call i32 @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %10, i32 %11)
  %13 = load i32, i32* @EBUSY, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %101

15:                                               ; preds = %1
  %16 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %17 = call i32 @init_pci_device_addresses(%struct.pm8001_hba_info* %16)
  %18 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %19 = call i32 @init_default_table_values(%struct.pm8001_hba_info* %18)
  %20 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %21 = call i32 @read_main_config_table(%struct.pm8001_hba_info* %20)
  %22 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %23 = call i32 @read_general_status_table(%struct.pm8001_hba_info* %22)
  %24 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %25 = call i32 @read_inbnd_queue_table(%struct.pm8001_hba_info* %24)
  %26 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %27 = call i32 @read_outbnd_queue_table(%struct.pm8001_hba_info* %26)
  %28 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %29 = call i32 @read_phy_attr_table(%struct.pm8001_hba_info* %28)
  %30 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %31 = call i32 @update_main_config_table(%struct.pm8001_hba_info* %30)
  store i64 0, i64* %5, align 8
  br label %32

32:                                               ; preds = %40, %15
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @PM8001_MAX_SPCV_INB_NUM, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @update_inbnd_queue_table(%struct.pm8001_hba_info* %37, i64 %38)
  br label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %5, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %5, align 8
  br label %32

43:                                               ; preds = %32
  store i64 0, i64* %5, align 8
  br label %44

44:                                               ; preds = %52, %43
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @PM8001_MAX_SPCV_OUTB_NUM, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @update_outbnd_queue_table(%struct.pm8001_hba_info* %49, i64 %50)
  br label %52

52:                                               ; preds = %48
  %53 = load i64, i64* %5, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %5, align 8
  br label %44

55:                                               ; preds = %44
  %56 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %57 = call i64 @mpi_init_check(%struct.pm8001_hba_info* %56)
  %58 = icmp eq i64 0, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %61 = call i32 @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %62 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %60, i32 %61)
  br label %66

63:                                               ; preds = %55
  %64 = load i32, i32* @EBUSY, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %101

66:                                               ; preds = %59
  %67 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %68 = call i32 @pm80xx_set_sas_protocol_timer_config(%struct.pm8001_hba_info* %67)
  store i32 %68, i32* %4, align 4
  %69 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %70 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %69, i32 0, i32 1
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %100

75:                                               ; preds = %66
  %76 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %77 = call i32 @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %78 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %76, i32 %77)
  %79 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %80 = call i32 @pm80xx_get_encrypt_info(%struct.pm8001_hba_info* %79)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %99

83:                                               ; preds = %75
  %84 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %85 = call i32 @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %86 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %84, i32 %85)
  %87 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %88 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, 129
  br i1 %91, label %92, label %98

92:                                               ; preds = %83
  %93 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %94 = call i32 @pm8001_printk(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0))
  %95 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %93, i32 %94)
  %96 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %97 = call i32 @pm80xx_encrypt_update(%struct.pm8001_hba_info* %96)
  br label %98

98:                                               ; preds = %92, %83
  br label %99

99:                                               ; preds = %98, %75
  br label %100

100:                                              ; preds = %99, %66
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %100, %63, %9
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @check_fw_ready(%struct.pm8001_hba_info*) #1

declare dso_local i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*) #1

declare dso_local i32 @init_pci_device_addresses(%struct.pm8001_hba_info*) #1

declare dso_local i32 @init_default_table_values(%struct.pm8001_hba_info*) #1

declare dso_local i32 @read_main_config_table(%struct.pm8001_hba_info*) #1

declare dso_local i32 @read_general_status_table(%struct.pm8001_hba_info*) #1

declare dso_local i32 @read_inbnd_queue_table(%struct.pm8001_hba_info*) #1

declare dso_local i32 @read_outbnd_queue_table(%struct.pm8001_hba_info*) #1

declare dso_local i32 @read_phy_attr_table(%struct.pm8001_hba_info*) #1

declare dso_local i32 @update_main_config_table(%struct.pm8001_hba_info*) #1

declare dso_local i32 @update_inbnd_queue_table(%struct.pm8001_hba_info*, i64) #1

declare dso_local i32 @update_outbnd_queue_table(%struct.pm8001_hba_info*, i64) #1

declare dso_local i64 @mpi_init_check(%struct.pm8001_hba_info*) #1

declare dso_local i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm80xx_set_sas_protocol_timer_config(%struct.pm8001_hba_info*) #1

declare dso_local i32 @pm80xx_get_encrypt_info(%struct.pm8001_hba_info*) #1

declare dso_local i32 @pm80xx_encrypt_update(%struct.pm8001_hba_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

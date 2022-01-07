; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_chip_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32 }

@PCI_DEVICE_ID = common dso_local global i32 0, align 4
@GSM_SM_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Shift Bar4 to 0x%x failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Firmware is not ready!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@PM8001_MAX_INB_NUM = common dso_local global i64 0, align 8
@PM8001_MAX_OUTB_NUM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"MPI initialize successful!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*)* @pm8001_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8001_chip_init(%struct.pm8001_hba_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i64 0, i64* %4, align 8
  %6 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %7 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @PCI_DEVICE_ID, align 4
  %10 = call i32 @pci_read_config_word(i32 %8, i32 %9, i32* %5)
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 32897
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %15 = load i32, i32* @GSM_SM_BASE, align 4
  %16 = call i32 @pm8001_bar4_shift(%struct.pm8001_hba_info* %14, i32 %15)
  %17 = icmp eq i32 -1, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %20 = load i32, i32* @GSM_SM_BASE, align 4
  %21 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %19, i32 %21)
  store i32 -1, i32* %2, align 4
  br label %96

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %23, %1
  %25 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %26 = call i32 @check_fw_ready(%struct.pm8001_hba_info* %25)
  %27 = icmp eq i32 -1, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %30 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %29, i32 %30)
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %96

34:                                               ; preds = %24
  %35 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %36 = call i32 @init_pci_device_addresses(%struct.pm8001_hba_info* %35)
  %37 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %38 = call i32 @init_default_table_values(%struct.pm8001_hba_info* %37)
  %39 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %40 = call i32 @read_main_config_table(%struct.pm8001_hba_info* %39)
  %41 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %42 = call i32 @read_general_status_table(%struct.pm8001_hba_info* %41)
  %43 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %44 = call i32 @read_inbnd_queue_table(%struct.pm8001_hba_info* %43)
  %45 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %46 = call i32 @read_outbnd_queue_table(%struct.pm8001_hba_info* %45)
  %47 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %48 = call i32 @update_main_config_table(%struct.pm8001_hba_info* %47)
  store i64 0, i64* %4, align 8
  br label %49

49:                                               ; preds = %57, %34
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* @PM8001_MAX_INB_NUM, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %55 = load i64, i64* %4, align 8
  %56 = call i32 @update_inbnd_queue_table(%struct.pm8001_hba_info* %54, i64 %55)
  br label %57

57:                                               ; preds = %53
  %58 = load i64, i64* %4, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %4, align 8
  br label %49

60:                                               ; preds = %49
  store i64 0, i64* %4, align 8
  br label %61

61:                                               ; preds = %69, %60
  %62 = load i64, i64* %4, align 8
  %63 = load i64, i64* @PM8001_MAX_OUTB_NUM, align 8
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %67 = load i64, i64* %4, align 8
  %68 = call i32 @update_outbnd_queue_table(%struct.pm8001_hba_info* %66, i64 %67)
  br label %69

69:                                               ; preds = %65
  %70 = load i64, i64* %4, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %4, align 8
  br label %61

72:                                               ; preds = %61
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 32897
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %77 = call i32 @mpi_set_phys_g3_with_ssc(%struct.pm8001_hba_info* %76, i32 0)
  %78 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %79 = call i32 @mpi_set_open_retry_interval_reg(%struct.pm8001_hba_info* %78, i32 119)
  br label %80

80:                                               ; preds = %75, %72
  %81 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %82 = call i64 @mpi_init_check(%struct.pm8001_hba_info* %81)
  %83 = icmp eq i64 0, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %86 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %87 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %85, i32 %86)
  br label %91

88:                                               ; preds = %80
  %89 = load i32, i32* @EBUSY, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %96

91:                                               ; preds = %84
  %92 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %93 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %92, i32 1, i32 13248, i32 1)
  %94 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %95 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %94, i32 1, i32 13252, i32 0)
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %91, %88, %28, %18
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @pm8001_bar4_shift(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local i32 @check_fw_ready(%struct.pm8001_hba_info*) #1

declare dso_local i32 @init_pci_device_addresses(%struct.pm8001_hba_info*) #1

declare dso_local i32 @init_default_table_values(%struct.pm8001_hba_info*) #1

declare dso_local i32 @read_main_config_table(%struct.pm8001_hba_info*) #1

declare dso_local i32 @read_general_status_table(%struct.pm8001_hba_info*) #1

declare dso_local i32 @read_inbnd_queue_table(%struct.pm8001_hba_info*) #1

declare dso_local i32 @read_outbnd_queue_table(%struct.pm8001_hba_info*) #1

declare dso_local i32 @update_main_config_table(%struct.pm8001_hba_info*) #1

declare dso_local i32 @update_inbnd_queue_table(%struct.pm8001_hba_info*, i64) #1

declare dso_local i32 @update_outbnd_queue_table(%struct.pm8001_hba_info*, i64) #1

declare dso_local i32 @mpi_set_phys_g3_with_ssc(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @mpi_set_open_retry_interval_reg(%struct.pm8001_hba_info*, i32) #1

declare dso_local i64 @mpi_init_check(%struct.pm8001_hba_info*) #1

declare dso_local i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_cw32(%struct.pm8001_hba_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

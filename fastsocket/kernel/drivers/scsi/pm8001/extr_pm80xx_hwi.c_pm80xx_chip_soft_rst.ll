; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm80xx_hwi.c_pm80xx_chip_soft_rst.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm80xx_hwi.c_pm80xx_chip_soft_rst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"MPI state is not ready\0A\00", align 1
@SPC_REG_SOFT_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"reset register before write : 0x%x\0A\00", align 1
@SPCv_NORMAL_RESET_VALUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"reset register after write 0x%x\0A\00", align 1
@SPCv_SOFT_RESET_READ_MASK = common dso_local global i32 0, align 4
@SPCv_SOFT_RESET_NORMAL_RESET_OCCURED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c" soft reset successful [regval: 0x%x]\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c" soft reset failed [regval: 0x%x]\0A\00", align 1
@MSGU_SCRATCH_PAD_1 = common dso_local global i32 0, align 4
@SCRATCH_PAD1_BOOTSTATE_MASK = common dso_local global i32 0, align 4
@SCRATCH_PAD1_BOOTSTATE_HDA_SEEPROM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"Bootloader state - HDA mode SEEPROM\0A\00", align 1
@SCRATCH_PAD1_BOOTSTATE_HDA_BOOTSTRAP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"Bootloader state - HDA mode Bootstrap Pin\0A\00", align 1
@SCRATCH_PAD1_BOOTSTATE_HDA_SOFTRESET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"Bootloader state - HDA mode soft reset\0A\00", align 1
@SCRATCH_PAD1_BOOTSTATE_CRIT_ERROR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [42 x i8] c"Bootloader state-HDA mode critical error\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"Firmware is not ready!\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"SPCv soft reset Complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*)* @pm80xx_chip_soft_rst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm80xx_chip_soft_rst(%struct.pm8001_hba_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  %6 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %7 = call i64 @mpi_uninit_check(%struct.pm8001_hba_info* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %11 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %10, i32 %11)
  store i32 -1, i32* %2, align 4
  br label %104

13:                                               ; preds = %1
  %14 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %15 = load i32, i32* @SPC_REG_SOFT_RESET, align 4
  %16 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %14, i32 0, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %17, i32 %19)
  %21 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %22 = load i32, i32* @SPC_REG_SOFT_RESET, align 4
  %23 = load i32, i32* @SPCv_NORMAL_RESET_VALUE, align 4
  %24 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %21, i32 0, i32 %22, i32 %23)
  %25 = call i32 @mdelay(i32 500)
  %26 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %27 = load i32, i32* @SPC_REG_SOFT_RESET, align 4
  %28 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %26, i32 0, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %29, i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @SPCv_SOFT_RESET_READ_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @SPCv_SOFT_RESET_NORMAL_RESET_OCCURED, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %13
  %39 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  %42 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %39, i32 %41)
  br label %90

43:                                               ; preds = %13
  %44 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %45)
  %47 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %44, i32 %46)
  %48 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %49 = load i32, i32* @MSGU_SCRATCH_PAD_1, align 4
  %50 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %48, i32 0, i32 %49)
  %51 = load i32, i32* @SCRATCH_PAD1_BOOTSTATE_MASK, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @SCRATCH_PAD1_BOOTSTATE_HDA_SEEPROM, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %43
  %57 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %58 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %59 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %57, i32 %58)
  br label %87

60:                                               ; preds = %43
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @SCRATCH_PAD1_BOOTSTATE_HDA_BOOTSTRAP, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %66 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  %67 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %65, i32 %66)
  br label %86

68:                                               ; preds = %60
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @SCRATCH_PAD1_BOOTSTATE_HDA_SOFTRESET, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %74 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  %75 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %73, i32 %74)
  br label %85

76:                                               ; preds = %68
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @SCRATCH_PAD1_BOOTSTATE_CRIT_ERROR, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %82 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  %83 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %81, i32 %82)
  br label %84

84:                                               ; preds = %80, %76
  br label %85

85:                                               ; preds = %84, %72
  br label %86

86:                                               ; preds = %85, %64
  br label %87

87:                                               ; preds = %86, %56
  %88 = load i32, i32* @EBUSY, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %104

90:                                               ; preds = %38
  %91 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %92 = call i32 @check_fw_ready(%struct.pm8001_hba_info* %91)
  %93 = icmp eq i32 -1, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %96 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %97 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %95, i32 %96)
  %98 = load i32, i32* @EBUSY, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %104

100:                                              ; preds = %90
  %101 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %102 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %103 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %101, i32 %102)
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %100, %94, %87, %9
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i64 @mpi_uninit_check(%struct.pm8001_hba_info*) #1

declare dso_local i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local i32 @pm8001_cr32(%struct.pm8001_hba_info*, i32, i32) #1

declare dso_local i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_cw32(%struct.pm8001_hba_info*, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @check_fw_ready(%struct.pm8001_hba_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

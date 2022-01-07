; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_mpi_uninit_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_mpi_uninit_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32, i32 }

@PCI_DEVICE_ID = common dso_local global i32 0, align 4
@GSM_SM_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Shift Bar4 to 0x%x failed\0A\00", align 1
@MSGU_IBDB_SET = common dso_local global i32 0, align 4
@SPC_MSGU_CFG_TABLE_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"TIMEOUT:IBDB value/=0x%x\0A\00", align 1
@GST_GSTLEN_MPIS_OFFSET = common dso_local global i32 0, align 4
@GST_MPI_STATE_UNINIT = common dso_local global i32 0, align 4
@GST_MPI_STATE_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c" TIME OUT MPI State = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*)* @mpi_uninit_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpi_uninit_check(%struct.pm8001_hba_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  %8 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %9 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PCI_DEVICE_ID, align 4
  %12 = call i32 @pci_read_config_word(i32 %10, i32 %11, i32* %7)
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 32897
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %17 = load i32, i32* @GSM_SM_BASE, align 4
  %18 = call i32 @pm8001_bar4_shift(%struct.pm8001_hba_info* %16, i32 %17)
  %19 = icmp eq i32 -1, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %22 = load i32, i32* @GSM_SM_BASE, align 4
  %23 = call i32 @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %21, i32 %23)
  store i32 -1, i32* %2, align 4
  br label %88

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %28 = call i32 @init_pci_device_addresses(%struct.pm8001_hba_info* %27)
  %29 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %30 = load i32, i32* @MSGU_IBDB_SET, align 4
  %31 = load i32, i32* @SPC_MSGU_CFG_TABLE_RESET, align 4
  %32 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %29, i32 0, i32 %30, i32 %31)
  store i32 1000000, i32* %4, align 4
  br label %33

33:                                               ; preds = %48, %26
  %34 = call i32 @udelay(i32 1)
  %35 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %36 = load i32, i32* @MSGU_IBDB_SET, align 4
  %37 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %35, i32 0, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* @SPC_MSGU_CFG_TABLE_RESET, align 4
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %33
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %44, %41
  %49 = phi i1 [ false, %41 ], [ %47, %44 ]
  br i1 %49, label %33, label %50

50:                                               ; preds = %48
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  %54 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @pm8001_printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %54, i32 %56)
  store i32 -1, i32* %2, align 4
  br label %88

58:                                               ; preds = %50
  store i32 1000000, i32* %4, align 4
  br label %59

59:                                               ; preds = %73, %58
  %60 = call i32 @udelay(i32 1)
  %61 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %62 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @GST_GSTLEN_MPIS_OFFSET, align 4
  %65 = call i32 @pm8001_mr32(i32 %63, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* @GST_MPI_STATE_UNINIT, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @GST_MPI_STATE_MASK, align 4
  %69 = and i32 %67, %68
  %70 = icmp eq i32 %66, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %59
  br label %77

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %59, label %77

77:                                               ; preds = %73, %71
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %77
  %81 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @GST_MPI_STATE_MASK, align 4
  %84 = and i32 %82, %83
  %85 = call i32 @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %81, i32 %85)
  store i32 -1, i32* %2, align 4
  br label %88

87:                                               ; preds = %77
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %80, %53, %20
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @pm8001_bar4_shift(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, i32) #1

declare dso_local i32 @init_pci_device_addresses(%struct.pm8001_hba_info*) #1

declare dso_local i32 @pm8001_cw32(%struct.pm8001_hba_info*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pm8001_cr32(%struct.pm8001_hba_info*, i32, i32) #1

declare dso_local i32 @pm8001_mr32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

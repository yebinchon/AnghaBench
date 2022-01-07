; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm80xx_hwi.c_mpi_uninit_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm80xx_hwi.c_mpi_uninit_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32 }

@MSGU_IBDB_SET = common dso_local global i32 0, align 4
@SPCv_MSGU_CFG_TABLE_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"TIMEOUT:IBDB value/=%x\0A\00", align 1
@GST_GSTLEN_MPIS_OFFSET = common dso_local global i32 0, align 4
@GST_MPI_STATE_UNINIT = common dso_local global i32 0, align 4
@GST_MPI_STATE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c" TIME OUT MPI State = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*)* @mpi_uninit_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpi_uninit_check(%struct.pm8001_hba_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  %7 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %8 = call i32 @init_pci_device_addresses(%struct.pm8001_hba_info* %7)
  %9 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %10 = load i32, i32* @MSGU_IBDB_SET, align 4
  %11 = load i32, i32* @SPCv_MSGU_CFG_TABLE_RESET, align 4
  %12 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %9, i32 0, i32 %10, i32 %11)
  store i32 2000000, i32* %4, align 4
  br label %13

13:                                               ; preds = %28, %1
  %14 = call i32 @udelay(i32 1)
  %15 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %16 = load i32, i32* @MSGU_IBDB_SET, align 4
  %17 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %15, i32 0, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @SPCv_MSGU_CFG_TABLE_RESET, align 4
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %13
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i1 [ false, %21 ], [ %27, %24 ]
  br i1 %29, label %13, label %30

30:                                               ; preds = %28
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %34, i32 %36)
  store i32 -1, i32* %2, align 4
  br label %68

38:                                               ; preds = %30
  store i32 2000000, i32* %4, align 4
  br label %39

39:                                               ; preds = %53, %38
  %40 = call i32 @udelay(i32 1)
  %41 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %42 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @GST_GSTLEN_MPIS_OFFSET, align 4
  %45 = call i32 @pm8001_mr32(i32 %43, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* @GST_MPI_STATE_UNINIT, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @GST_MPI_STATE_MASK, align 4
  %49 = and i32 %47, %48
  %50 = icmp eq i32 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  br label %57

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %39, label %57

57:                                               ; preds = %53, %51
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %57
  %61 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @GST_MPI_STATE_MASK, align 4
  %64 = and i32 %62, %63
  %65 = call i32 @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %61, i32 %65)
  store i32 -1, i32* %2, align 4
  br label %68

67:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %60, %33
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @init_pci_device_addresses(%struct.pm8001_hba_info*) #1

declare dso_local i32 @pm8001_cw32(%struct.pm8001_hba_info*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pm8001_cr32(%struct.pm8001_hba_info*, i32, i32) #1

declare dso_local i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, i32) #1

declare dso_local i32 @pm8001_mr32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

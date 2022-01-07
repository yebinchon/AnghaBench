; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_chip_abort_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_chip_abort_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32 }
%struct.pm8001_device = type { i64, i32 }

@TMF_RESP_FUNC_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cmd_tag = %x, abort task tag = 0x%x\00", align 1
@SAS_END_DEVICE = common dso_local global i64 0, align 8
@OPC_INB_SSP_ABORT = common dso_local global i32 0, align 4
@SATA_DEV = common dso_local global i64 0, align 8
@OPC_INB_SATA_ABORT = common dso_local global i32 0, align 4
@OPC_INB_SMP_ABORT = common dso_local global i32 0, align 4
@TMF_RESP_FUNC_COMPLETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"rc= %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm8001_chip_abort_task(%struct.pm8001_hba_info* %0, %struct.pm8001_device* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.pm8001_hba_info*, align 8
  %7 = alloca %struct.pm8001_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %6, align 8
  store %struct.pm8001_device* %1, %struct.pm8001_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* @TMF_RESP_FUNC_FAILED, align 4
  store i32 %14, i32* %13, align 4
  %15 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %6, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 (i8*, i32, ...) @pm8001_printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  %19 = call i32 @PM8001_EH_DBG(%struct.pm8001_hba_info* %15, i32 %18)
  %20 = load %struct.pm8001_device*, %struct.pm8001_device** %7, align 8
  %21 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SAS_END_DEVICE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* @OPC_INB_SSP_ABORT, align 4
  store i32 %26, i32* %11, align 4
  br label %38

27:                                               ; preds = %5
  %28 = load %struct.pm8001_device*, %struct.pm8001_device** %7, align 8
  %29 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SATA_DEV, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @OPC_INB_SATA_ABORT, align 4
  store i32 %34, i32* %11, align 4
  br label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @OPC_INB_SMP_ABORT, align 4
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %35, %33
  br label %38

38:                                               ; preds = %37, %25
  %39 = load %struct.pm8001_device*, %struct.pm8001_device** %7, align 8
  %40 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %12, align 4
  %42 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %6, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @send_task_abort(%struct.pm8001_hba_info* %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @TMF_RESP_FUNC_COMPLETE, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %38
  %53 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %6, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call i32 (i8*, i32, ...) @pm8001_printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = call i32 @PM8001_EH_DBG(%struct.pm8001_hba_info* %53, i32 %55)
  br label %57

57:                                               ; preds = %52, %38
  %58 = load i32, i32* %13, align 4
  ret i32 %58
}

declare dso_local i32 @PM8001_EH_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, i32, ...) #1

declare dso_local i32 @send_task_abort(%struct.pm8001_hba_info*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

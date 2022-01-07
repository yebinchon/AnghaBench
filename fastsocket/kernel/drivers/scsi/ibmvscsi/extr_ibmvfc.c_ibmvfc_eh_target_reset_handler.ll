; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_eh_target_reset_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_eh_target_reset_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.scsi_device* }
%struct.scsi_device = type { i32 }
%struct.ibmvfc_host = type { i32 }
%struct.scsi_target = type { i32 }

@FAILED = common dso_local global i32 0, align 4
@ENTER = common dso_local global i32 0, align 4
@ibmvfc_dev_cancel_all_reset = common dso_local global i32 0, align 4
@IBMVFC_TARGET_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"target\00", align 1
@ibmvfc_match_target = common dso_local global i32 0, align 4
@LEAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @ibmvfc_eh_target_reset_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvfc_eh_target_reset_handler(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.ibmvfc_host*, align 8
  %5 = alloca %struct.scsi_target*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 0
  %11 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  store %struct.scsi_device* %11, %struct.scsi_device** %3, align 8
  %12 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.ibmvfc_host* @shost_priv(i32 %14)
  store %struct.ibmvfc_host* %15, %struct.ibmvfc_host** %4, align 8
  %16 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %17 = call %struct.scsi_target* @scsi_target(%struct.scsi_device* %16)
  store %struct.scsi_target* %17, %struct.scsi_target** %5, align 8
  %18 = load i32, i32* @FAILED, align 4
  store i32 %18, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %19 = load i32, i32* @ENTER, align 4
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %21 = call i32 @fc_block_scsi_eh(%struct.scsi_cmnd* %20)
  %22 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %23 = call i32 @ibmvfc_wait_while_resetting(%struct.ibmvfc_host* %22)
  %24 = load %struct.scsi_target*, %struct.scsi_target** %5, align 8
  %25 = load i32, i32* @ibmvfc_dev_cancel_all_reset, align 4
  %26 = call i32 @starget_for_each_device(%struct.scsi_target* %24, i64* %8, i32 %25)
  %27 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %28 = load i32, i32* @IBMVFC_TARGET_RESET, align 4
  %29 = call i32 @ibmvfc_reset_device(%struct.scsi_device* %27, i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %29, i32* %6, align 4
  %30 = load i64, i64* %8, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %1
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %37 = load %struct.scsi_target*, %struct.scsi_target** %5, align 8
  %38 = load i32, i32* @ibmvfc_match_target, align 4
  %39 = call i32 @ibmvfc_wait_for_ops(%struct.ibmvfc_host* %36, %struct.scsi_target* %37, i32 %38)
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %35, %32, %1
  %41 = load i32, i32* @LEAVE, align 4
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local %struct.ibmvfc_host* @shost_priv(i32) #1

declare dso_local %struct.scsi_target* @scsi_target(%struct.scsi_device*) #1

declare dso_local i32 @fc_block_scsi_eh(%struct.scsi_cmnd*) #1

declare dso_local i32 @ibmvfc_wait_while_resetting(%struct.ibmvfc_host*) #1

declare dso_local i32 @starget_for_each_device(%struct.scsi_target*, i64*, i32) #1

declare dso_local i32 @ibmvfc_reset_device(%struct.scsi_device*, i32, i8*) #1

declare dso_local i32 @ibmvfc_wait_for_ops(%struct.ibmvfc_host*, %struct.scsi_target*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

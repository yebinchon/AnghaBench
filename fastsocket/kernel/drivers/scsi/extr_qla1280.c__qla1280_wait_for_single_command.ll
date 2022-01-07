; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_qla1280.c__qla1280_wait_for_single_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_qla1280.c__qla1280_wait_for_single_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.srb = type { i32*, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32 (%struct.scsi_cmnd*)* }
%struct.completion = type { i32 }

@FAILED = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@COMPLETED_HANDLE = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, %struct.srb*, %struct.completion*)* @_qla1280_wait_for_single_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_qla1280_wait_for_single_command(%struct.scsi_qla_host* %0, %struct.srb* %1, %struct.completion* %2) #0 {
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca %struct.srb*, align 8
  %6 = alloca %struct.completion*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.scsi_cmnd*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store %struct.srb* %1, %struct.srb** %5, align 8
  store %struct.completion* %2, %struct.completion** %6, align 8
  %9 = load i32, i32* @FAILED, align 4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.srb*, %struct.srb** %5, align 8
  %11 = getelementptr inbounds %struct.srb, %struct.srb* %10, i32 0, i32 1
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %11, align 8
  store %struct.scsi_cmnd* %12, %struct.scsi_cmnd** %8, align 8
  %13 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %14 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @spin_unlock_irq(i32 %17)
  %19 = load %struct.completion*, %struct.completion** %6, align 8
  %20 = load i32, i32* @HZ, align 4
  %21 = mul nsw i32 4, %20
  %22 = call i32 @wait_for_completion_timeout(%struct.completion* %19, i32 %21)
  %23 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %24 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @spin_lock_irq(i32 %27)
  %29 = load %struct.srb*, %struct.srb** %5, align 8
  %30 = getelementptr inbounds %struct.srb, %struct.srb* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %32 = call i64 @CMD_HANDLE(%struct.scsi_cmnd* %31)
  %33 = load i64, i64* @COMPLETED_HANDLE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %3
  %36 = load i32, i32* @SUCCESS, align 4
  store i32 %36, i32* %7, align 4
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %38 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %37, i32 0, i32 0
  %39 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %38, align 8
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %41 = call i32 %39(%struct.scsi_cmnd* %40)
  br label %42

42:                                               ; preds = %35, %3
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @wait_for_completion_timeout(%struct.completion*, i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i64 @CMD_HANDLE(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_ibmvscsi_eh_host_reset_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_ibmvscsi_eh_host_reset_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ibmvscsi_host_data = type { i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"Resetting connection due to error recovery\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@init_timeout = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@FAILED = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @ibmvscsi_eh_host_reset_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvscsi_eh_host_reset_handler(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ibmvscsi_host_data*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  store i64 0, i64* %4, align 8
  %6 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %7 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.ibmvscsi_host_data* @shost_priv(i32 %10)
  store %struct.ibmvscsi_host_data* %11, %struct.ibmvscsi_host_data** %5, align 8
  %12 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %5, align 8
  %13 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_err(i32 %14, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %5, align 8
  %17 = call i32 @ibmvscsi_reset_host(%struct.ibmvscsi_host_data* %16)
  %18 = load i64, i64* @jiffies, align 8
  %19 = load i64, i64* @init_timeout, align 8
  %20 = load i64, i64* @HZ, align 8
  %21 = mul i64 %19, %20
  %22 = add i64 %18, %21
  store i64 %22, i64* %4, align 8
  br label %23

23:                                               ; preds = %35, %1
  %24 = load i64, i64* @jiffies, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i64 @time_before(i64 %24, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %5, align 8
  %30 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %29, i32 0, i32 0
  %31 = call i32 @atomic_read(i32* %30)
  %32 = icmp slt i32 %31, 2
  br label %33

33:                                               ; preds = %28, %23
  %34 = phi i1 [ false, %23 ], [ %32, %28 ]
  br i1 %34, label %35, label %37

35:                                               ; preds = %33
  %36 = call i32 @msleep(i32 10)
  br label %23

37:                                               ; preds = %33
  %38 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %5, align 8
  %39 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %38, i32 0, i32 0
  %40 = call i32 @atomic_read(i32* %39)
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @FAILED, align 4
  store i32 %43, i32* %2, align 4
  br label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @SUCCESS, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.ibmvscsi_host_data* @shost_priv(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ibmvscsi_reset_host(%struct.ibmvscsi_host_data*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

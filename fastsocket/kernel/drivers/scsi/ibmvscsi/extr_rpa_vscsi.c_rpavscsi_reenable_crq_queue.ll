; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_rpa_vscsi.c_rpavscsi_reenable_crq_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_rpa_vscsi.c_rpavscsi_reenable_crq_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crq_queue = type { i32 }
%struct.ibmvscsi_host_data = type { i32 }
%struct.vio_dev = type { i32 }

@H_ENABLE_CRQ = common dso_local global i32 0, align 4
@H_IN_PROGRESS = common dso_local global i32 0, align 4
@H_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Error %d enabling adapter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crq_queue*, %struct.ibmvscsi_host_data*)* @rpavscsi_reenable_crq_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpavscsi_reenable_crq_queue(%struct.crq_queue* %0, %struct.ibmvscsi_host_data* %1) #0 {
  %3 = alloca %struct.crq_queue*, align 8
  %4 = alloca %struct.ibmvscsi_host_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vio_dev*, align 8
  store %struct.crq_queue* %0, %struct.crq_queue** %3, align 8
  store %struct.ibmvscsi_host_data* %1, %struct.ibmvscsi_host_data** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %4, align 8
  %8 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.vio_dev* @to_vio_dev(i32 %9)
  store %struct.vio_dev* %10, %struct.vio_dev** %6, align 8
  br label %11

11:                                               ; preds = %34, %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 @msleep(i32 100)
  br label %16

16:                                               ; preds = %14, %11
  %17 = load i32, i32* @H_ENABLE_CRQ, align 4
  %18 = load %struct.vio_dev*, %struct.vio_dev** %6, align 8
  %19 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @plpar_hcall_norets(i32 %17, i32 %20)
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @H_IN_PROGRESS, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @H_BUSY, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @H_IS_LONG_BUSY(i32 %31)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %30, %26, %22
  %35 = phi i1 [ true, %26 ], [ true, %22 ], [ %33, %30 ]
  br i1 %35, label %11, label %36

36:                                               ; preds = %34
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %4, align 8
  %41 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %39, %36
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.vio_dev* @to_vio_dev(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @plpar_hcall_norets(i32, i32) #1

declare dso_local i64 @H_IS_LONG_BUSY(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

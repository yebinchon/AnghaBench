; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_chip_set_dev_state_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_chip_set_dev_state_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.inbound_queue_table*, %struct.pm8001_ccb_info* }
%struct.inbound_queue_table = type { i32 }
%struct.pm8001_ccb_info = type { i64, %struct.pm8001_device* }
%struct.pm8001_device = type { i64 }
%struct.set_dev_state_req = type { i8*, i8*, i8* }

@OPC_INB_SET_DEVICE_STATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm8001_chip_set_dev_state_req(%struct.pm8001_hba_info* %0, %struct.pm8001_device* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pm8001_hba_info*, align 8
  %6 = alloca %struct.pm8001_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.set_dev_state_req, align 8
  %9 = alloca %struct.inbound_queue_table*, align 8
  %10 = alloca %struct.pm8001_ccb_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %5, align 8
  store %struct.pm8001_device* %1, %struct.pm8001_device** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i64, i64* @OPC_INB_SET_DEVICE_STATE, align 8
  store i64 %14, i64* %13, align 8
  %15 = call i32 @memset(%struct.set_dev_state_req* %8, i32 0, i32 24)
  %16 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %17 = call i32 @pm8001_tag_alloc(%struct.pm8001_hba_info* %16, i64* %12)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %53

21:                                               ; preds = %3
  %22 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %23 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %22, i32 0, i32 1
  %24 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %23, align 8
  %25 = load i64, i64* %12, align 8
  %26 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %24, i64 %25
  store %struct.pm8001_ccb_info* %26, %struct.pm8001_ccb_info** %10, align 8
  %27 = load i64, i64* %12, align 8
  %28 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %10, align 8
  %29 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.pm8001_device*, %struct.pm8001_device** %6, align 8
  %31 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %10, align 8
  %32 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %31, i32 0, i32 1
  store %struct.pm8001_device* %30, %struct.pm8001_device** %32, align 8
  %33 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %34 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %33, i32 0, i32 0
  %35 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %34, align 8
  %36 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %35, i64 0
  store %struct.inbound_queue_table* %36, %struct.inbound_queue_table** %9, align 8
  %37 = load i64, i64* %12, align 8
  %38 = call i8* @cpu_to_le32(i64 %37)
  %39 = getelementptr inbounds %struct.set_dev_state_req, %struct.set_dev_state_req* %8, i32 0, i32 2
  store i8* %38, i8** %39, align 8
  %40 = load %struct.pm8001_device*, %struct.pm8001_device** %6, align 8
  %41 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i8* @cpu_to_le32(i64 %42)
  %44 = getelementptr inbounds %struct.set_dev_state_req, %struct.set_dev_state_req* %8, i32 0, i32 1
  store i8* %43, i8** %44, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i8* @cpu_to_le32(i64 %45)
  %47 = getelementptr inbounds %struct.set_dev_state_req, %struct.set_dev_state_req* %8, i32 0, i32 0
  store i8* %46, i8** %47, align 8
  %48 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %49 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %9, align 8
  %50 = load i64, i64* %13, align 8
  %51 = call i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info* %48, %struct.inbound_queue_table* %49, i64 %50, %struct.set_dev_state_req* %8, i32 0)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %21, %20
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @memset(%struct.set_dev_state_req*, i32, i32) #1

declare dso_local i32 @pm8001_tag_alloc(%struct.pm8001_hba_info*, i64*) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info*, %struct.inbound_queue_table*, i64, %struct.set_dev_state_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_hw_event_ack_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_hw_event_ack_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.inbound_queue_table* }
%struct.inbound_queue_table = type { i32 }
%struct.hw_event_ack_req = type { i8*, i8*, i8*, i8* }

@OPC_INB_SAS_HW_EVENT_ACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm8001_hba_info*, i64, i64, i64, i64, i64, i64)* @pm8001_hw_event_ack_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm8001_hw_event_ack_req(%struct.pm8001_hba_info* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.pm8001_hba_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.hw_event_ack_req, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.inbound_queue_table*, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %18 = load i64, i64* @OPC_INB_SAS_HW_EVENT_ACK, align 8
  store i64 %18, i64* %16, align 8
  %19 = bitcast %struct.hw_event_ack_req* %15 to i32*
  %20 = call i32 @memset(i32* %19, i32 0, i32 32)
  %21 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  %22 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %21, i32 0, i32 0
  %23 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %22, align 8
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %23, i64 %24
  store %struct.inbound_queue_table* %25, %struct.inbound_queue_table** %17, align 8
  %26 = call i8* @cpu_to_le32(i64 1)
  %27 = getelementptr inbounds %struct.hw_event_ack_req, %struct.hw_event_ack_req* %15, i32 0, i32 3
  store i8* %26, i8** %27, align 8
  %28 = load i64, i64* %10, align 8
  %29 = and i64 %28, 65535
  %30 = shl i64 %29, 8
  %31 = load i64, i64* %12, align 8
  %32 = and i64 %31, 15
  %33 = shl i64 %32, 4
  %34 = or i64 %30, %33
  %35 = load i64, i64* %11, align 8
  %36 = and i64 %35, 15
  %37 = or i64 %34, %36
  %38 = call i8* @cpu_to_le32(i64 %37)
  %39 = getelementptr inbounds %struct.hw_event_ack_req, %struct.hw_event_ack_req* %15, i32 0, i32 2
  store i8* %38, i8** %39, align 8
  %40 = load i64, i64* %13, align 8
  %41 = call i8* @cpu_to_le32(i64 %40)
  %42 = getelementptr inbounds %struct.hw_event_ack_req, %struct.hw_event_ack_req* %15, i32 0, i32 1
  store i8* %41, i8** %42, align 8
  %43 = load i64, i64* %14, align 8
  %44 = call i8* @cpu_to_le32(i64 %43)
  %45 = getelementptr inbounds %struct.hw_event_ack_req, %struct.hw_event_ack_req* %15, i32 0, i32 0
  store i8* %44, i8** %45, align 8
  %46 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %8, align 8
  %47 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %17, align 8
  %48 = load i64, i64* %16, align 8
  %49 = call i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info* %46, %struct.inbound_queue_table* %47, i64 %48, %struct.hw_event_ack_req* %15, i32 0)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info*, %struct.inbound_queue_table*, i64, %struct.hw_event_ack_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

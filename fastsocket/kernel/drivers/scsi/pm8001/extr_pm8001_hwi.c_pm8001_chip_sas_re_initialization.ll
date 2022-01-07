; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_chip_sas_re_initialization.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_chip_sas_re_initialization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.inbound_queue_table*, %struct.pm8001_ccb_info* }
%struct.inbound_queue_table = type { i32 }
%struct.pm8001_ccb_info = type { i64 }
%struct.sas_re_initialization_req = type { i8*, i8*, i8*, i8* }

@OPC_INB_SAS_RE_INITIALIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*)* @pm8001_chip_sas_re_initialization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8001_chip_sas_re_initialization(%struct.pm8001_hba_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca %struct.sas_re_initialization_req, align 8
  %5 = alloca %struct.inbound_queue_table*, align 8
  %6 = alloca %struct.pm8001_ccb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  %10 = load i64, i64* @OPC_INB_SAS_RE_INITIALIZE, align 8
  store i64 %10, i64* %9, align 8
  %11 = call i32 @memset(%struct.sas_re_initialization_req* %4, i32 0, i32 32)
  %12 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %13 = call i32 @pm8001_tag_alloc(%struct.pm8001_hba_info* %12, i64* %8)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %45

17:                                               ; preds = %1
  %18 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %19 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %18, i32 0, i32 1
  %20 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %19, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %20, i64 %21
  store %struct.pm8001_ccb_info* %22, %struct.pm8001_ccb_info** %6, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %6, align 8
  %25 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %27 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %26, i32 0, i32 0
  %28 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %27, align 8
  %29 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %28, i64 0
  store %struct.inbound_queue_table* %29, %struct.inbound_queue_table** %5, align 8
  %30 = load i64, i64* %8, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i8* @cpu_to_le32(i32 %31)
  %33 = getelementptr inbounds %struct.sas_re_initialization_req, %struct.sas_re_initialization_req* %4, i32 0, i32 3
  store i8* %32, i8** %33, align 8
  %34 = call i8* @cpu_to_le32(i32 436207616)
  %35 = getelementptr inbounds %struct.sas_re_initialization_req, %struct.sas_re_initialization_req* %4, i32 0, i32 2
  store i8* %34, i8** %35, align 8
  %36 = call i8* @cpu_to_le32(i32 80)
  %37 = getelementptr inbounds %struct.sas_re_initialization_req, %struct.sas_re_initialization_req* %4, i32 0, i32 1
  store i8* %36, i8** %37, align 8
  %38 = call i8* @cpu_to_le32(i32 16711935)
  %39 = getelementptr inbounds %struct.sas_re_initialization_req, %struct.sas_re_initialization_req* %4, i32 0, i32 0
  store i8* %38, i8** %39, align 8
  %40 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %41 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %5, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info* %40, %struct.inbound_queue_table* %41, i64 %42, %struct.sas_re_initialization_req* %4, i32 0)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %17, %16
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @memset(%struct.sas_re_initialization_req*, i32, i32) #1

declare dso_local i32 @pm8001_tag_alloc(%struct.pm8001_hba_info*, i64*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info*, %struct.inbound_queue_table*, i64, %struct.sas_re_initialization_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_rpa_vscsi.c_set_adapter_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_rpa_vscsi.c_set_adapter_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvscsi_host_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"SRP_VERSION: %s\0A\00", align 1
@SRP_VERSION = common dso_local global i32 0, align 4
@partition_name = common dso_local global i32 0, align 4
@partition_number = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvscsi_host_data*)* @set_adapter_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_adapter_info(%struct.ibmvscsi_host_data* %0) #0 {
  %2 = alloca %struct.ibmvscsi_host_data*, align 8
  store %struct.ibmvscsi_host_data* %0, %struct.ibmvscsi_host_data** %2, align 8
  %3 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %4 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %3, i32 0, i32 0
  %5 = call i32 @memset(%struct.TYPE_2__* %4, i32 0, i32 20)
  %6 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %7 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SRP_VERSION, align 4
  %10 = call i32 @dev_info(i32 %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %12 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SRP_VERSION, align 4
  %16 = call i32 @strcpy(i32 %14, i32 %15)
  %17 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %18 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @partition_name, align 4
  %22 = call i32 @strncpy(i32 %20, i32 %21, i32 4)
  %23 = load i32, i32* @partition_number, align 4
  %24 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %25 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  store i32 %23, i32* %26, align 4
  %27 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %28 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %31 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32 2, i32* %32, align 4
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

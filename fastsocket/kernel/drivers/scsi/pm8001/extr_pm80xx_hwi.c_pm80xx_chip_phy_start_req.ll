; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm80xx_hwi.c_pm80xx_chip_phy_start_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm80xx_hwi.c_pm80xx_chip_phy_start_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32, %struct.inbound_queue_table* }
%struct.inbound_queue_table = type { i32 }
%struct.phy_start_req = type { %struct.TYPE_2__, i8*, i8* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@OPC_INB_PHYSTART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"PHY START REQ for phy_id %d\0A\00", align 1
@SPINHOLD_DISABLE = common dso_local global i32 0, align 4
@LINKMODE_AUTO = common dso_local global i32 0, align 4
@LINKRATE_15 = common dso_local global i32 0, align 4
@LINKRATE_30 = common dso_local global i32 0, align 4
@LINKRATE_60 = common dso_local global i32 0, align 4
@SAS_END_DEVICE = common dso_local global i32 0, align 4
@SAS_PROTOCOL_ALL = common dso_local global i32 0, align 4
@SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*, i32)* @pm80xx_chip_phy_start_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm80xx_chip_phy_start_req(%struct.pm8001_hba_info* %0, i32 %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.phy_start_req, align 8
  %6 = alloca %struct.inbound_queue_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %8, align 4
  %10 = load i32, i32* @OPC_INB_PHYSTART, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %12 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %11, i32 0, i32 1
  %13 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %12, align 8
  %14 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %13, i64 0
  store %struct.inbound_queue_table* %14, %struct.inbound_queue_table** %6, align 8
  %15 = call i32 @memset(%struct.phy_start_req* %5, i32 0, i32 32)
  %16 = load i32, i32* %8, align 4
  %17 = call i8* @cpu_to_le32(i32 %16)
  %18 = getelementptr inbounds %struct.phy_start_req, %struct.phy_start_req* %5, i32 0, i32 2
  store i8* %17, i8** %18, align 8
  %19 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @pm8001_printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %19, i32 %21)
  %23 = load i32, i32* @SPINHOLD_DISABLE, align 4
  %24 = load i32, i32* @LINKMODE_AUTO, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @LINKRATE_15, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @LINKRATE_30, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @LINKRATE_60, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %31, %32
  %34 = call i8* @cpu_to_le32(i32 %33)
  %35 = getelementptr inbounds %struct.phy_start_req, %struct.phy_start_req* %5, i32 0, i32 1
  store i8* %34, i8** %35, align 8
  %36 = load i32, i32* @SAS_END_DEVICE, align 4
  %37 = getelementptr inbounds %struct.phy_start_req, %struct.phy_start_req* %5, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @SAS_PROTOCOL_ALL, align 4
  %40 = getelementptr inbounds %struct.phy_start_req, %struct.phy_start_req* %5, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = getelementptr inbounds %struct.phy_start_req, %struct.phy_start_req* %5, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %46 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %49 = call i32 @memcpy(i32 %44, i32 %47, i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = getelementptr inbounds %struct.phy_start_req, %struct.phy_start_req* %5, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %54 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %6, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info* %53, %struct.inbound_queue_table* %54, i32 %55, %struct.phy_start_req* %5, i32 0)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @memset(%struct.phy_start_req*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info*, %struct.inbound_queue_table*, i32, %struct.phy_start_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_bnx2x_fcoe_fw_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_bnx2x_fcoe_fw_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { %struct.cnic_local* }
%struct.cnic_local = type { i32 }
%struct.kwqe = type { i32 }
%struct.fcoe_kwqe_destroy = type { i32 }
%union.l5cm_specific_data = type { i32 }

@MAX_ISCSI_TBL_SZ = common dso_local global i32 0, align 4
@FCOE_RAMROD_CMD_ID_DESTROY_FUNC = common dso_local global i32 0, align 4
@FCOE_CONNECTION_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*, %struct.kwqe*)* @cnic_bnx2x_fcoe_fw_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_bnx2x_fcoe_fw_destroy(%struct.cnic_dev* %0, %struct.kwqe* %1) #0 {
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca %struct.kwqe*, align 8
  %5 = alloca %struct.fcoe_kwqe_destroy*, align 8
  %6 = alloca %union.l5cm_specific_data, align 4
  %7 = alloca %struct.cnic_local*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %3, align 8
  store %struct.kwqe* %1, %struct.kwqe** %4, align 8
  %10 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %11 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %10, i32 0, i32 0
  %12 = load %struct.cnic_local*, %struct.cnic_local** %11, align 8
  store %struct.cnic_local* %12, %struct.cnic_local** %7, align 8
  %13 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %14 = load i32, i32* @MAX_ISCSI_TBL_SZ, align 4
  %15 = call i32 @cnic_bnx2x_delete_wait(%struct.cnic_dev* %13, i32 %14)
  %16 = load %struct.kwqe*, %struct.kwqe** %4, align 8
  %17 = bitcast %struct.kwqe* %16 to %struct.fcoe_kwqe_destroy*
  store %struct.fcoe_kwqe_destroy* %17, %struct.fcoe_kwqe_destroy** %5, align 8
  %18 = load %struct.cnic_local*, %struct.cnic_local** %7, align 8
  %19 = load %struct.cnic_local*, %struct.cnic_local** %7, align 8
  %20 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @BNX2X_HW_CID(%struct.cnic_local* %18, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = call i32 @memset(%union.l5cm_specific_data* %6, i32 0, i32 4)
  %24 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %25 = load i32, i32* @FCOE_RAMROD_CMD_ID_DESTROY_FUNC, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @FCOE_CONNECTION_TYPE, align 4
  %28 = call i32 @cnic_submit_kwqe_16(%struct.cnic_dev* %24, i32 %25, i32 %26, i32 %27, %union.l5cm_specific_data* %6)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  ret i32 %29
}

declare dso_local i32 @cnic_bnx2x_delete_wait(%struct.cnic_dev*, i32) #1

declare dso_local i32 @BNX2X_HW_CID(%struct.cnic_local*, i32) #1

declare dso_local i32 @memset(%union.l5cm_specific_data*, i32, i32) #1

declare dso_local i32 @cnic_submit_kwqe_16(%struct.cnic_dev*, i32, i32, i32, %union.l5cm_specific_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

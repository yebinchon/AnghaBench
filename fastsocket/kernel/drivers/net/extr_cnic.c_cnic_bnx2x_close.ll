; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_bnx2x_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_bnx2x_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32 }
%struct.kwqe = type { i32 }
%struct.l4_kwq_close_req = type { i32 }
%union.l5cm_specific_data = type { i32 }

@L5CM_RAMROD_CMD_ID_CLOSE = common dso_local global i32 0, align 4
@ISCSI_CONNECTION_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*, %struct.kwqe*)* @cnic_bnx2x_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_bnx2x_close(%struct.cnic_dev* %0, %struct.kwqe* %1) #0 {
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca %struct.kwqe*, align 8
  %5 = alloca %struct.l4_kwq_close_req*, align 8
  %6 = alloca %union.l5cm_specific_data, align 4
  %7 = alloca i32, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %3, align 8
  store %struct.kwqe* %1, %struct.kwqe** %4, align 8
  %8 = load %struct.kwqe*, %struct.kwqe** %4, align 8
  %9 = bitcast %struct.kwqe* %8 to %struct.l4_kwq_close_req*
  store %struct.l4_kwq_close_req* %9, %struct.l4_kwq_close_req** %5, align 8
  %10 = call i32 @memset(%union.l5cm_specific_data* %6, i32 0, i32 4)
  %11 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %12 = load i32, i32* @L5CM_RAMROD_CMD_ID_CLOSE, align 4
  %13 = load %struct.l4_kwq_close_req*, %struct.l4_kwq_close_req** %5, align 8
  %14 = getelementptr inbounds %struct.l4_kwq_close_req, %struct.l4_kwq_close_req* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ISCSI_CONNECTION_TYPE, align 4
  %17 = call i32 @cnic_submit_kwqe_16(%struct.cnic_dev* %11, i32 %12, i32 %15, i32 %16, %union.l5cm_specific_data* %6)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  ret i32 %18
}

declare dso_local i32 @memset(%union.l5cm_specific_data*, i32, i32) #1

declare dso_local i32 @cnic_submit_kwqe_16(%struct.cnic_dev*, i32, i32, i32, %union.l5cm_specific_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

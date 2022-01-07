; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_ctx_tbl_wr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_ctx_tbl_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, %struct.cnic_local* }
%struct.cnic_local = type { %struct.cnic_eth_dev* }
%struct.cnic_eth_dev = type { i32 (i32, %struct.drv_ctl_info*)* }
%struct.drv_ctl_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drv_ctl_io }
%struct.drv_ctl_io = type { i32, i32 }

@DRV_CTL_CTXTBL_WR_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_dev*, i32, i32)* @cnic_ctx_tbl_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_ctx_tbl_wr(%struct.cnic_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cnic_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cnic_local*, align 8
  %8 = alloca %struct.cnic_eth_dev*, align 8
  %9 = alloca %struct.drv_ctl_info, align 4
  %10 = alloca %struct.drv_ctl_io*, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %12 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %11, i32 0, i32 1
  %13 = load %struct.cnic_local*, %struct.cnic_local** %12, align 8
  store %struct.cnic_local* %13, %struct.cnic_local** %7, align 8
  %14 = load %struct.cnic_local*, %struct.cnic_local** %7, align 8
  %15 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %14, i32 0, i32 0
  %16 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %15, align 8
  store %struct.cnic_eth_dev* %16, %struct.cnic_eth_dev** %8, align 8
  %17 = getelementptr inbounds %struct.drv_ctl_info, %struct.drv_ctl_info* %9, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.drv_ctl_io* %18, %struct.drv_ctl_io** %10, align 8
  %19 = load i32, i32* @DRV_CTL_CTXTBL_WR_CMD, align 4
  %20 = getelementptr inbounds %struct.drv_ctl_info, %struct.drv_ctl_info* %9, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.drv_ctl_io*, %struct.drv_ctl_io** %10, align 8
  %23 = getelementptr inbounds %struct.drv_ctl_io, %struct.drv_ctl_io* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.drv_ctl_io*, %struct.drv_ctl_io** %10, align 8
  %26 = getelementptr inbounds %struct.drv_ctl_io, %struct.drv_ctl_io* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %8, align 8
  %28 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %27, i32 0, i32 0
  %29 = load i32 (i32, %struct.drv_ctl_info*)*, i32 (i32, %struct.drv_ctl_info*)** %28, align 8
  %30 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %31 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 %29(i32 %32, %struct.drv_ctl_info* %9)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

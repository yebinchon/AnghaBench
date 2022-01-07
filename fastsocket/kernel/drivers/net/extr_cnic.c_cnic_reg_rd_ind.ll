; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_reg_rd_ind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_reg_rd_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, %struct.cnic_local* }
%struct.cnic_local = type { %struct.cnic_eth_dev* }
%struct.cnic_eth_dev = type { i32 (i32, %struct.drv_ctl_info*)* }
%struct.drv_ctl_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drv_ctl_io }
%struct.drv_ctl_io = type { i32, i32 }

@DRV_CTL_IO_RD_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*, i32)* @cnic_reg_rd_ind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_reg_rd_ind(%struct.cnic_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cnic_local*, align 8
  %6 = alloca %struct.cnic_eth_dev*, align 8
  %7 = alloca %struct.drv_ctl_info, align 4
  %8 = alloca %struct.drv_ctl_io*, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %10 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %9, i32 0, i32 1
  %11 = load %struct.cnic_local*, %struct.cnic_local** %10, align 8
  store %struct.cnic_local* %11, %struct.cnic_local** %5, align 8
  %12 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %13 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %12, i32 0, i32 0
  %14 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %13, align 8
  store %struct.cnic_eth_dev* %14, %struct.cnic_eth_dev** %6, align 8
  %15 = getelementptr inbounds %struct.drv_ctl_info, %struct.drv_ctl_info* %7, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.drv_ctl_io* %16, %struct.drv_ctl_io** %8, align 8
  %17 = load i32, i32* @DRV_CTL_IO_RD_CMD, align 4
  %18 = getelementptr inbounds %struct.drv_ctl_info, %struct.drv_ctl_info* %7, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.drv_ctl_io*, %struct.drv_ctl_io** %8, align 8
  %21 = getelementptr inbounds %struct.drv_ctl_io, %struct.drv_ctl_io* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %6, align 8
  %23 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %22, i32 0, i32 0
  %24 = load i32 (i32, %struct.drv_ctl_info*)*, i32 (i32, %struct.drv_ctl_info*)** %23, align 8
  %25 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %26 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 %24(i32 %27, %struct.drv_ctl_info* %7)
  %29 = load %struct.drv_ctl_io*, %struct.drv_ctl_io** %8, align 8
  %30 = getelementptr inbounds %struct.drv_ctl_io, %struct.drv_ctl_io* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_ctx_wr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_ctx_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, %struct.cnic_local* }
%struct.cnic_local = type { %struct.cnic_eth_dev* }
%struct.cnic_eth_dev = type { i32 (i32, %struct.drv_ctl_info*)* }
%struct.drv_ctl_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drv_ctl_io }
%struct.drv_ctl_io = type { i8*, i8*, i8* }

@DRV_CTL_CTX_WR_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_dev*, i8*, i8*, i8*)* @cnic_ctx_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_ctx_wr(%struct.cnic_dev* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.cnic_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.cnic_local*, align 8
  %10 = alloca %struct.cnic_eth_dev*, align 8
  %11 = alloca %struct.drv_ctl_info, align 8
  %12 = alloca %struct.drv_ctl_io*, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %14 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %13, i32 0, i32 1
  %15 = load %struct.cnic_local*, %struct.cnic_local** %14, align 8
  store %struct.cnic_local* %15, %struct.cnic_local** %9, align 8
  %16 = load %struct.cnic_local*, %struct.cnic_local** %9, align 8
  %17 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %16, i32 0, i32 0
  %18 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %17, align 8
  store %struct.cnic_eth_dev* %18, %struct.cnic_eth_dev** %10, align 8
  %19 = getelementptr inbounds %struct.drv_ctl_info, %struct.drv_ctl_info* %11, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.drv_ctl_io* %20, %struct.drv_ctl_io** %12, align 8
  %21 = load i32, i32* @DRV_CTL_CTX_WR_CMD, align 4
  %22 = getelementptr inbounds %struct.drv_ctl_info, %struct.drv_ctl_info* %11, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.drv_ctl_io*, %struct.drv_ctl_io** %12, align 8
  %25 = getelementptr inbounds %struct.drv_ctl_io, %struct.drv_ctl_io* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.drv_ctl_io*, %struct.drv_ctl_io** %12, align 8
  %28 = getelementptr inbounds %struct.drv_ctl_io, %struct.drv_ctl_io* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load %struct.drv_ctl_io*, %struct.drv_ctl_io** %12, align 8
  %31 = getelementptr inbounds %struct.drv_ctl_io, %struct.drv_ctl_io* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %10, align 8
  %33 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %32, i32 0, i32 0
  %34 = load i32 (i32, %struct.drv_ctl_info*)*, i32 (i32, %struct.drv_ctl_info*)** %33, align 8
  %35 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %36 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 %34(i32 %37, %struct.drv_ctl_info* %11)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_ulp_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_ulp_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, i32, %struct.cnic_local* }
%struct.cnic_local = type { %struct.cnic_eth_dev* }
%struct.cnic_eth_dev = type { i32 (i32, %struct.drv_ctl_info*)* }
%struct.drv_ctl_info = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.fcoe_capabilities }
%struct.fcoe_capabilities = type { i32 }

@DRV_CTL_ULP_REGISTER_CMD = common dso_local global i32 0, align 4
@CNIC_ULP_FCOE = common dso_local global i32 0, align 4
@DRV_CTL_ULP_UNREGISTER_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_dev*, i32, i32)* @cnic_ulp_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_ulp_ctl(%struct.cnic_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cnic_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cnic_local*, align 8
  %8 = alloca %struct.cnic_eth_dev*, align 8
  %9 = alloca %struct.drv_ctl_info, align 4
  %10 = alloca %struct.fcoe_capabilities*, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %12 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %11, i32 0, i32 2
  %13 = load %struct.cnic_local*, %struct.cnic_local** %12, align 8
  store %struct.cnic_local* %13, %struct.cnic_local** %7, align 8
  %14 = load %struct.cnic_local*, %struct.cnic_local** %7, align 8
  %15 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %14, i32 0, i32 0
  %16 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %15, align 8
  store %struct.cnic_eth_dev* %16, %struct.cnic_eth_dev** %8, align 8
  %17 = getelementptr inbounds %struct.drv_ctl_info, %struct.drv_ctl_info* %9, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.fcoe_capabilities* %19, %struct.fcoe_capabilities** %10, align 8
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %3
  %23 = load i32, i32* @DRV_CTL_ULP_REGISTER_CMD, align 4
  %24 = getelementptr inbounds %struct.drv_ctl_info, %struct.drv_ctl_info* %9, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @CNIC_ULP_FCOE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %22
  %29 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %30 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.fcoe_capabilities*, %struct.fcoe_capabilities** %10, align 8
  %35 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %36 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @memcpy(%struct.fcoe_capabilities* %34, i32 %37, i32 4)
  br label %39

39:                                               ; preds = %33, %28, %22
  br label %43

40:                                               ; preds = %3
  %41 = load i32, i32* @DRV_CTL_ULP_UNREGISTER_CMD, align 4
  %42 = getelementptr inbounds %struct.drv_ctl_info, %struct.drv_ctl_info* %9, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %39
  %44 = load i32, i32* %5, align 4
  %45 = getelementptr inbounds %struct.drv_ctl_info, %struct.drv_ctl_info* %9, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %8, align 8
  %48 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %47, i32 0, i32 0
  %49 = load i32 (i32, %struct.drv_ctl_info*)*, i32 (i32, %struct.drv_ctl_info*)** %48, align 8
  %50 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %51 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 %49(i32 %52, %struct.drv_ctl_info* %9)
  ret void
}

declare dso_local i32 @memcpy(%struct.fcoe_capabilities*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

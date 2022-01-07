; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_get_coalesce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_get_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i32 }
%struct.skge_port = type { i32, %struct.skge_hw* }
%struct.skge_hw = type { i32 }

@B2_IRQM_CTRL = common dso_local global i32 0, align 4
@TIM_START = common dso_local global i32 0, align 4
@B2_IRQM_INI = common dso_local global i32 0, align 4
@B2_IRQM_MSK = common dso_local global i32 0, align 4
@rxirqmask = common dso_local global i32* null, align 8
@txirqmask = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @skge_get_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skge_get_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_coalesce*, align 8
  %5 = alloca %struct.skge_port*, align 8
  %6 = alloca %struct.skge_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.skge_port* @netdev_priv(%struct.net_device* %10)
  store %struct.skge_port* %11, %struct.skge_port** %5, align 8
  %12 = load %struct.skge_port*, %struct.skge_port** %5, align 8
  %13 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %12, i32 0, i32 1
  %14 = load %struct.skge_hw*, %struct.skge_hw** %13, align 8
  store %struct.skge_hw* %14, %struct.skge_hw** %6, align 8
  %15 = load %struct.skge_port*, %struct.skge_port** %5, align 8
  %16 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %19 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %21 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load %struct.skge_hw*, %struct.skge_hw** %6, align 8
  %23 = load i32, i32* @B2_IRQM_CTRL, align 4
  %24 = call i32 @skge_read32(%struct.skge_hw* %22, i32 %23)
  %25 = load i32, i32* @TIM_START, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %63

28:                                               ; preds = %2
  %29 = load %struct.skge_hw*, %struct.skge_hw** %6, align 8
  %30 = load %struct.skge_hw*, %struct.skge_hw** %6, align 8
  %31 = load i32, i32* @B2_IRQM_INI, align 4
  %32 = call i32 @skge_read32(%struct.skge_hw* %30, i32 %31)
  %33 = call i32 @skge_clk2usec(%struct.skge_hw* %29, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.skge_hw*, %struct.skge_hw** %6, align 8
  %35 = load i32, i32* @B2_IRQM_MSK, align 4
  %36 = call i32 @skge_read32(%struct.skge_hw* %34, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32*, i32** @rxirqmask, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %37, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %28
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %48 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %45, %28
  %50 = load i32, i32* %9, align 4
  %51 = load i32*, i32** @txirqmask, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %50, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %49
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %61 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %58, %49
  br label %63

63:                                               ; preds = %62, %2
  ret i32 0
}

declare dso_local %struct.skge_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skge_read32(%struct.skge_hw*, i32) #1

declare dso_local i32 @skge_clk2usec(%struct.skge_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

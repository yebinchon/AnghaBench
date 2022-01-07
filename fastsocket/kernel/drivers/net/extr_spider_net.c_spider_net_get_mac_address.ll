; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_spider_net.c_spider_net_get_mac_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_spider_net.c_spider_net_get_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32* }
%struct.spider_net_card = type { i32 }

@SPIDER_NET_GMACUNIMACL = common dso_local global i32 0, align 4
@SPIDER_NET_GMACUNIMACU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @spider_net_get_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spider_net_get_mac_address(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.spider_net_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.spider_net_card* @netdev_priv(%struct.net_device* %7)
  store %struct.spider_net_card* %8, %struct.spider_net_card** %4, align 8
  %9 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %10 = load i32, i32* @SPIDER_NET_GMACUNIMACL, align 4
  %11 = call i32 @spider_net_read_reg(%struct.spider_net_card* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %13 = load i32, i32* @SPIDER_NET_GMACUNIMACU, align 4
  %14 = call i32 @spider_net_read_reg(%struct.spider_net_card* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = ashr i32 %15, 24
  %17 = and i32 %16, 255
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %17, i32* %21, align 4
  %22 = load i32, i32* %6, align 4
  %23 = ashr i32 %22, 16
  %24 = and i32 %23, 255
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 %24, i32* %28, align 4
  %29 = load i32, i32* %6, align 4
  %30 = ashr i32 %29, 8
  %31 = and i32 %30, 255
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  store i32 %31, i32* %35, align 4
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, 255
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* %5, align 4
  %43 = ashr i32 %42, 8
  %44 = and i32 %43, 255
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 4
  store i32 %44, i32* %48, align 4
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, 255
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 5
  store i32 %50, i32* %54, align 4
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = call i32 @is_valid_ether_addr(i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %1
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %65

64:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %61
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.spider_net_card* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spider_net_read_reg(%struct.spider_net_card*, i32) #1

declare dso_local i32 @is_valid_ether_addr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

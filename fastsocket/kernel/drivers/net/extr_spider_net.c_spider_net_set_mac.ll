; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_spider_net.c_spider_net_set_mac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_spider_net.c_spider_net_set_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.spider_net_card = type { i32 }
%struct.sockaddr = type { i32* }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@SPIDER_NET_GMACOPEMD = common dso_local global i32 0, align 4
@SPIDER_NET_GMACUNIMACU = common dso_local global i32 0, align 4
@SPIDER_NET_GMACUNIMACL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @spider_net_set_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spider_net_set_mac(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.spider_net_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.spider_net_card* @netdev_priv(%struct.net_device* %11)
  store %struct.spider_net_card* %12, %struct.spider_net_card** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.sockaddr*
  store %struct.sockaddr* %14, %struct.sockaddr** %10, align 8
  %15 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %16 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @is_valid_ether_addr(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EADDRNOTAVAIL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %112

23:                                               ; preds = %2
  %24 = load %struct.spider_net_card*, %struct.spider_net_card** %6, align 8
  %25 = load i32, i32* @SPIDER_NET_GMACOPEMD, align 4
  %26 = call i32 @spider_net_read_reg(%struct.spider_net_card* %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, -97
  store i32 %28, i32* %9, align 4
  %29 = load %struct.spider_net_card*, %struct.spider_net_card** %6, align 8
  %30 = load i32, i32* @SPIDER_NET_GMACOPEMD, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @spider_net_write_reg(%struct.spider_net_card* %29, i32 %30, i32 %31)
  %33 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %34 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 24
  %39 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %40 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 16
  %45 = add nsw i32 %38, %44
  %46 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %47 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 8
  %52 = add nsw i32 %45, %51
  %53 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %54 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 3
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %52, %57
  store i32 %58, i32* %8, align 4
  %59 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %60 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 4
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 8
  %65 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %66 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 5
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %64, %69
  store i32 %70, i32* %7, align 4
  %71 = load %struct.spider_net_card*, %struct.spider_net_card** %6, align 8
  %72 = load i32, i32* @SPIDER_NET_GMACUNIMACU, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @spider_net_write_reg(%struct.spider_net_card* %71, i32 %72, i32 %73)
  %75 = load %struct.spider_net_card*, %struct.spider_net_card** %6, align 8
  %76 = load i32, i32* @SPIDER_NET_GMACUNIMACL, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @spider_net_write_reg(%struct.spider_net_card* %75, i32 %76, i32 %77)
  %79 = load %struct.spider_net_card*, %struct.spider_net_card** %6, align 8
  %80 = load i32, i32* @SPIDER_NET_GMACOPEMD, align 4
  %81 = call i32 @spider_net_read_reg(%struct.spider_net_card* %79, i32 %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = or i32 %82, 96
  store i32 %83, i32* %9, align 4
  %84 = load %struct.spider_net_card*, %struct.spider_net_card** %6, align 8
  %85 = load i32, i32* @SPIDER_NET_GMACOPEMD, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @spider_net_write_reg(%struct.spider_net_card* %84, i32 %85, i32 %86)
  %88 = load %struct.spider_net_card*, %struct.spider_net_card** %6, align 8
  %89 = call i32 @spider_net_set_promisc(%struct.spider_net_card* %88)
  %90 = load %struct.net_device*, %struct.net_device** %4, align 8
  %91 = call i64 @spider_net_get_mac_address(%struct.net_device* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %23
  %94 = load i32, i32* @EADDRNOTAVAIL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %112

96:                                               ; preds = %23
  %97 = load %struct.net_device*, %struct.net_device** %4, align 8
  %98 = getelementptr inbounds %struct.net_device, %struct.net_device* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %101 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.net_device*, %struct.net_device** %4, align 8
  %104 = getelementptr inbounds %struct.net_device, %struct.net_device* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @memcmp(i32 %99, i32* %102, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %96
  %109 = load i32, i32* @EADDRNOTAVAIL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %112

111:                                              ; preds = %96
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %108, %93, %20
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local %struct.spider_net_card* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @spider_net_read_reg(%struct.spider_net_card*, i32) #1

declare dso_local i32 @spider_net_write_reg(%struct.spider_net_card*, i32, i32) #1

declare dso_local i32 @spider_net_set_promisc(%struct.spider_net_card*) #1

declare dso_local i64 @spider_net_get_mac_address(%struct.net_device*) #1

declare dso_local i64 @memcmp(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

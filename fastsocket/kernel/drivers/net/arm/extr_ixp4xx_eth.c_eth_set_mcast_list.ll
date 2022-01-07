; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ixp4xx_eth.c_eth_set_mcast_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ixp4xx_eth.c_eth_set_mcast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i32*, %struct.dev_mc_list* }
%struct.port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32*, i32* }

@ETH_ALEN = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@DEFAULT_RX_CNTRL0 = common dso_local global i32 0, align 4
@RX_CNTRL0_ADDR_FLTR_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @eth_set_mcast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eth_set_mcast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.port*, align 8
  %4 = alloca %struct.dev_mc_list*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call %struct.port* @netdev_priv(%struct.net_device* %11)
  store %struct.port* %12, %struct.port** %3, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 2
  %15 = load %struct.dev_mc_list*, %struct.dev_mc_list** %14, align 8
  store %struct.dev_mc_list* %15, %struct.dev_mc_list** %4, align 8
  %16 = load i32, i32* @ETH_ALEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %5, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %6, align 8
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %8, align 4
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IFF_PROMISC, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %1
  %30 = load %struct.dev_mc_list*, %struct.dev_mc_list** %4, align 8
  %31 = icmp ne %struct.dev_mc_list* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %32, %29, %1
  %36 = load i32, i32* @DEFAULT_RX_CNTRL0, align 4
  %37 = load i32, i32* @RX_CNTRL0_ADDR_FLTR_EN, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  %40 = load %struct.port*, %struct.port** %3, align 8
  %41 = getelementptr inbounds %struct.port, %struct.port* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = call i32 @__raw_writel(i32 %39, i32* %45)
  store i32 1, i32* %10, align 4
  br label %140

47:                                               ; preds = %32
  %48 = load i32, i32* @ETH_ALEN, align 4
  %49 = call i32 @memset(i32* %19, i32 0, i32 %48)
  %50 = load %struct.dev_mc_list*, %struct.dev_mc_list** %4, align 8
  %51 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %7, align 8
  br label %53

53:                                               ; preds = %91, %47
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load %struct.dev_mc_list*, %struct.dev_mc_list** %4, align 8
  %59 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %58, i32 0, i32 1
  %60 = load %struct.dev_mc_list*, %struct.dev_mc_list** %59, align 8
  store %struct.dev_mc_list* %60, %struct.dev_mc_list** %4, align 8
  %61 = icmp ne %struct.dev_mc_list* %60, null
  br label %62

62:                                               ; preds = %57, %53
  %63 = phi i1 [ false, %53 ], [ %61, %57 ]
  br i1 %63, label %64, label %92

64:                                               ; preds = %62
  store i32 0, i32* %9, align 4
  br label %65

65:                                               ; preds = %88, %64
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @ETH_ALEN, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %91

69:                                               ; preds = %65
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.dev_mc_list*, %struct.dev_mc_list** %4, align 8
  %76 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = xor i32 %74, %81
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %19, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %82
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %69
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %65

91:                                               ; preds = %65
  br label %53

92:                                               ; preds = %62
  store i32 0, i32* %9, align 4
  br label %93

93:                                               ; preds = %126, %92
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @ETH_ALEN, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %129

97:                                               ; preds = %93
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.port*, %struct.port** %3, align 8
  %104 = getelementptr inbounds %struct.port, %struct.port* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = call i32 @__raw_writel(i32 %102, i32* %110)
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %19, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = xor i32 %115, -1
  %117 = load %struct.port*, %struct.port** %3, align 8
  %118 = getelementptr inbounds %struct.port, %struct.port* %117, i32 0, i32 0
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = call i32 @__raw_writel(i32 %116, i32* %124)
  br label %126

126:                                              ; preds = %97
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %9, align 4
  br label %93

129:                                              ; preds = %93
  %130 = load i32, i32* @DEFAULT_RX_CNTRL0, align 4
  %131 = load i32, i32* @RX_CNTRL0_ADDR_FLTR_EN, align 4
  %132 = or i32 %130, %131
  %133 = load %struct.port*, %struct.port** %3, align 8
  %134 = getelementptr inbounds %struct.port, %struct.port* %133, i32 0, i32 0
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = call i32 @__raw_writel(i32 %132, i32* %138)
  store i32 0, i32* %10, align 4
  br label %140

140:                                              ; preds = %129, %35
  %141 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %141)
  %142 = load i32, i32* %10, align 4
  switch i32 %142, label %144 [
    i32 0, label %143
    i32 1, label %143
  ]

143:                                              ; preds = %140, %140
  ret void

144:                                              ; preds = %140
  unreachable
}

declare dso_local %struct.port* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @__raw_writel(i32, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_stmmac_ethtool.c_stmmac_ethtool_gregs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_stmmac_ethtool.c_stmmac_ethtool_gregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.ethtool_regs = type { i32 }
%struct.stmmac_priv = type { i32 }

@REG_SPACE_SIZE = common dso_local global i32 0, align 4
@DMA_BUS_MODE = common dso_local global i64 0, align 8
@DMA_CUR_TX_BUF_ADDR = common dso_local global i64 0, align 8
@DMA_CUR_RX_BUF_ADDR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stmmac_ethtool_gregs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.stmmac_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.stmmac_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.stmmac_priv* %13, %struct.stmmac_priv** %9, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i32, i32* @REG_SPACE_SIZE, align 4
  %16 = call i32 @memset(i32* %14, i32 0, i32 %15)
  %17 = load %struct.stmmac_priv*, %struct.stmmac_priv** %9, align 8
  %18 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %81, label %21

21:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %38, %21
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 12
  br i1 %24, label %25, label %41

25:                                               ; preds = %22
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = mul nsw i32 %29, 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %28, %31
  %33 = call i32 @readl(i64 %32)
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %33, i32* %37, align 4
  br label %38

38:                                               ; preds = %25
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %22

41:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %61, %41
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 9
  br i1 %44, label %45, label %64

45:                                               ; preds = %42
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @DMA_BUS_MODE, align 8
  %50 = load i32, i32* %7, align 4
  %51 = mul nsw i32 %50, 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %49, %52
  %54 = add nsw i64 %48, %53
  %55 = call i32 @readl(i64 %54)
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 12
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  store i32 %55, i32* %60, align 4
  br label %61

61:                                               ; preds = %45
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %42

64:                                               ; preds = %42
  %65 = load %struct.net_device*, %struct.net_device** %4, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @DMA_CUR_TX_BUF_ADDR, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @readl(i64 %69)
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 22
  store i32 %70, i32* %72, align 4
  %73 = load %struct.net_device*, %struct.net_device** %4, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @DMA_CUR_RX_BUF_ADDR, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @readl(i64 %77)
  %79 = load i32*, i32** %8, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 23
  store i32 %78, i32* %80, align 4
  br label %125

81:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %98, %81
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %83, 55
  br i1 %84, label %85, label %101

85:                                               ; preds = %82
  %86 = load %struct.net_device*, %struct.net_device** %4, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = mul nsw i32 %89, 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %88, %91
  %93 = call i32 @readl(i64 %92)
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %93, i32* %97, align 4
  br label %98

98:                                               ; preds = %85
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %82

101:                                              ; preds = %82
  store i32 0, i32* %7, align 4
  br label %102

102:                                              ; preds = %121, %101
  %103 = load i32, i32* %7, align 4
  %104 = icmp slt i32 %103, 22
  br i1 %104, label %105, label %124

105:                                              ; preds = %102
  %106 = load %struct.net_device*, %struct.net_device** %4, align 8
  %107 = getelementptr inbounds %struct.net_device, %struct.net_device* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @DMA_BUS_MODE, align 8
  %110 = load i32, i32* %7, align 4
  %111 = mul nsw i32 %110, 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %109, %112
  %114 = add nsw i64 %108, %113
  %115 = call i32 @readl(i64 %114)
  %116 = load i32*, i32** %8, align 8
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %117, 55
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  store i32 %115, i32* %120, align 4
  br label %121

121:                                              ; preds = %105
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %7, align 4
  br label %102

124:                                              ; preds = %102
  br label %125

125:                                              ; preds = %124, %64
  ret void
}

declare dso_local %struct.stmmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

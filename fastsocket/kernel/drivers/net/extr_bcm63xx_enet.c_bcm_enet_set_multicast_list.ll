; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bcm63xx_enet.c_bcm_enet_set_multicast_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bcm63xx_enet.c_bcm_enet_set_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i32, i32*, %struct.dev_mc_list* }
%struct.bcm_enet_priv = type { i32 }

@ENET_RXCFG_REG = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@ENET_RXCFG_PROMISC_MASK = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@ENET_RXCFG_ALLMCAST_MASK = common dso_local global i32 0, align 4
@ENET_PMH_DATAVALID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @bcm_enet_set_multicast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_enet_set_multicast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.bcm_enet_priv*, align 8
  %4 = alloca %struct.dev_mc_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.bcm_enet_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.bcm_enet_priv* %10, %struct.bcm_enet_priv** %3, align 8
  %11 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %12 = load i32, i32* @ENET_RXCFG_REG, align 4
  %13 = call i32 @enet_readl(%struct.bcm_enet_priv* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IFF_PROMISC, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32, i32* @ENET_RXCFG_PROMISC_MASK, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %29

24:                                               ; preds = %1
  %25 = load i32, i32* @ENET_RXCFG_PROMISC_MASK, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %24, %20
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IFF_ALLMULTI, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %29
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %39, 3
  br i1 %40, label %41, label %45

41:                                               ; preds = %36, %29
  %42 = load i32, i32* @ENET_RXCFG_ALLMCAST_MASK, align 4
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  br label %50

45:                                               ; preds = %36
  %46 = load i32, i32* @ENET_RXCFG_ALLMCAST_MASK, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %5, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %45, %41
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @ENET_RXCFG_ALLMCAST_MASK, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @ENET_RXCFG_REG, align 4
  %59 = call i32 @enet_writel(%struct.bcm_enet_priv* %56, i32 %57, i32 %58)
  br label %158

60:                                               ; preds = %50
  store i32 0, i32* %6, align 4
  %61 = load %struct.net_device*, %struct.net_device** %2, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 2
  %63 = load %struct.dev_mc_list*, %struct.dev_mc_list** %62, align 8
  store %struct.dev_mc_list* %63, %struct.dev_mc_list** %4, align 8
  br label %64

64:                                               ; preds = %129, %60
  %65 = load %struct.dev_mc_list*, %struct.dev_mc_list** %4, align 8
  %66 = icmp ne %struct.dev_mc_list* %65, null
  br i1 %66, label %67, label %76

67:                                               ; preds = %64
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.net_device*, %struct.net_device** %2, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, 3
  br label %76

76:                                               ; preds = %73, %67, %64
  %77 = phi i1 [ false, %67 ], [ false, %64 ], [ %75, %73 ]
  br i1 %77, label %78, label %135

78:                                               ; preds = %76
  %79 = load %struct.dev_mc_list*, %struct.dev_mc_list** %4, align 8
  %80 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 6
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %129

84:                                               ; preds = %78
  %85 = load %struct.dev_mc_list*, %struct.dev_mc_list** %4, align 8
  %86 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  store i32* %87, i32** %7, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 %90, 24
  %92 = load i32*, i32** %7, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 3
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %94, 16
  %96 = or i32 %91, %95
  %97 = load i32*, i32** %7, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 4
  %99 = load i32, i32* %98, align 4
  %100 = shl i32 %99, 8
  %101 = or i32 %96, %100
  %102 = load i32*, i32** %7, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 5
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %101, %104
  store i32 %105, i32* %8, align 4
  %106 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  %110 = call i32 @ENET_PML_REG(i32 %109)
  %111 = call i32 @enet_writel(%struct.bcm_enet_priv* %106, i32 %107, i32 %110)
  %112 = load i32*, i32** %7, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %114, 8
  %116 = load i32*, i32** %7, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %115, %118
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* @ENET_PMH_DATAVALID_MASK, align 4
  %121 = load i32, i32* %8, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %8, align 4
  %123 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* %6, align 4
  %126 = add nsw i32 %125, 1
  %127 = call i32 @ENET_PMH_REG(i32 %126)
  %128 = call i32 @enet_writel(%struct.bcm_enet_priv* %123, i32 %124, i32 %127)
  br label %129

129:                                              ; preds = %84, %83
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %6, align 4
  %132 = load %struct.dev_mc_list*, %struct.dev_mc_list** %4, align 8
  %133 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %132, i32 0, i32 2
  %134 = load %struct.dev_mc_list*, %struct.dev_mc_list** %133, align 8
  store %struct.dev_mc_list* %134, %struct.dev_mc_list** %4, align 8
  br label %64

135:                                              ; preds = %76
  br label %136

136:                                              ; preds = %150, %135
  %137 = load i32, i32* %6, align 4
  %138 = icmp slt i32 %137, 3
  br i1 %138, label %139, label %153

139:                                              ; preds = %136
  %140 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %141 = load i32, i32* %6, align 4
  %142 = add nsw i32 %141, 1
  %143 = call i32 @ENET_PML_REG(i32 %142)
  %144 = call i32 @enet_writel(%struct.bcm_enet_priv* %140, i32 0, i32 %143)
  %145 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %146 = load i32, i32* %6, align 4
  %147 = add nsw i32 %146, 1
  %148 = call i32 @ENET_PMH_REG(i32 %147)
  %149 = call i32 @enet_writel(%struct.bcm_enet_priv* %145, i32 0, i32 %148)
  br label %150

150:                                              ; preds = %139
  %151 = load i32, i32* %6, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %6, align 4
  br label %136

153:                                              ; preds = %136
  %154 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %3, align 8
  %155 = load i32, i32* %5, align 4
  %156 = load i32, i32* @ENET_RXCFG_REG, align 4
  %157 = call i32 @enet_writel(%struct.bcm_enet_priv* %154, i32 %155, i32 %156)
  br label %158

158:                                              ; preds = %153, %55
  ret void
}

declare dso_local %struct.bcm_enet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @enet_readl(%struct.bcm_enet_priv*, i32) #1

declare dso_local i32 @enet_writel(%struct.bcm_enet_priv*, i32, i32) #1

declare dso_local i32 @ENET_PML_REG(i32) #1

declare dso_local i32 @ENET_PMH_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

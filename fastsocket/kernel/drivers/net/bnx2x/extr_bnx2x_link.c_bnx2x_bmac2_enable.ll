; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_bmac2_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_bmac2_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { i32*, i64, %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32 }

@NIG_REG_INGRESS_BMAC1_MEM = common dso_local global i32 0, align 4
@NIG_REG_INGRESS_BMAC0_MEM = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Enabling BigMAC2\0A\00", align 1
@BIGMAC2_REGISTER_BMAC_CONTROL = common dso_local global i32 0, align 4
@BIGMAC2_REGISTER_BMAC_XGXS_CONTROL = common dso_local global i32 0, align 4
@BIGMAC2_REGISTER_TX_SOURCE_ADDR = common dso_local global i32 0, align 4
@BIGMAC2_REGISTER_RX_LLFC_MSG_FLDS = common dso_local global i32 0, align 4
@ETH_MAX_JUMBO_PACKET_SIZE = common dso_local global i32 0, align 4
@ETH_OVREHEAD = common dso_local global i32 0, align 4
@BIGMAC2_REGISTER_RX_MAX_SIZE = common dso_local global i32 0, align 4
@BIGMAC2_REGISTER_TX_MAX_SIZE = common dso_local global i32 0, align 4
@BIGMAC2_REGISTER_CNT_MAX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.link_params*, %struct.link_vars*, i64)* @bnx2x_bmac2_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_bmac2_enable(%struct.link_params* %0, %struct.link_vars* %1, i64 %2) #0 {
  %4 = alloca %struct.link_params*, align 8
  %5 = alloca %struct.link_vars*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  store %struct.link_params* %0, %struct.link_params** %4, align 8
  store %struct.link_vars* %1, %struct.link_vars** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.link_params*, %struct.link_params** %4, align 8
  %12 = getelementptr inbounds %struct.link_params, %struct.link_params* %11, i32 0, i32 2
  %13 = load %struct.bnx2x*, %struct.bnx2x** %12, align 8
  store %struct.bnx2x* %13, %struct.bnx2x** %7, align 8
  %14 = load %struct.link_params*, %struct.link_params** %4, align 8
  %15 = getelementptr inbounds %struct.link_params, %struct.link_params* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @NIG_REG_INGRESS_BMAC1_MEM, align 4
  br label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @NIG_REG_INGRESS_BMAC0_MEM, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @NETIF_MSG_LINK, align 4
  %26 = call i32 @DP(i32 %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 0, i32* %28, align 4
  %29 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @BIGMAC2_REGISTER_BMAC_CONTROL, align 4
  %32 = add nsw i32 %30, %31
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %34 = call i32 @REG_WR_DMAE(%struct.bnx2x* %29, i32 %32, i32* %33, i32 2)
  %35 = call i32 @udelay(i32 30)
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 60, i32* %36, align 4
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 0, i32* %37, align 4
  %38 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @BIGMAC2_REGISTER_BMAC_XGXS_CONTROL, align 4
  %41 = add nsw i32 %39, %40
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %43 = call i32 @REG_WR_DMAE(%struct.bnx2x* %38, i32 %41, i32* %42, i32 2)
  %44 = call i32 @udelay(i32 30)
  %45 = load %struct.link_params*, %struct.link_params** %4, align 8
  %46 = getelementptr inbounds %struct.link_params, %struct.link_params* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 24
  %51 = load %struct.link_params*, %struct.link_params** %4, align 8
  %52 = getelementptr inbounds %struct.link_params, %struct.link_params* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 16
  %57 = or i32 %50, %56
  %58 = load %struct.link_params*, %struct.link_params** %4, align 8
  %59 = getelementptr inbounds %struct.link_params, %struct.link_params* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 4
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 8
  %64 = or i32 %57, %63
  %65 = load %struct.link_params*, %struct.link_params** %4, align 8
  %66 = getelementptr inbounds %struct.link_params, %struct.link_params* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 5
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %64, %69
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %70, i32* %71, align 4
  %72 = load %struct.link_params*, %struct.link_params** %4, align 8
  %73 = getelementptr inbounds %struct.link_params, %struct.link_params* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 8
  %78 = load %struct.link_params*, %struct.link_params** %4, align 8
  %79 = getelementptr inbounds %struct.link_params, %struct.link_params* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %77, %82
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %83, i32* %84, align 4
  %85 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @BIGMAC2_REGISTER_TX_SOURCE_ADDR, align 4
  %88 = add nsw i32 %86, %87
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %90 = call i32 @REG_WR_DMAE(%struct.bnx2x* %85, i32 %88, i32* %89, i32 2)
  %91 = call i32 @udelay(i32 30)
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 16777728, i32* %92, align 4
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 0, i32* %93, align 4
  %94 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @BIGMAC2_REGISTER_RX_LLFC_MSG_FLDS, align 4
  %97 = add nsw i32 %95, %96
  %98 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %99 = call i32 @REG_WR_DMAE(%struct.bnx2x* %94, i32 %97, i32* %98, i32 2)
  %100 = call i32 @udelay(i32 30)
  %101 = load i32, i32* @ETH_MAX_JUMBO_PACKET_SIZE, align 4
  %102 = load i32, i32* @ETH_OVREHEAD, align 4
  %103 = add nsw i32 %101, %102
  %104 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %103, i32* %104, align 4
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 0, i32* %105, align 4
  %106 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @BIGMAC2_REGISTER_RX_MAX_SIZE, align 4
  %109 = add nsw i32 %107, %108
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %111 = call i32 @REG_WR_DMAE(%struct.bnx2x* %106, i32 %109, i32* %110, i32 2)
  %112 = call i32 @udelay(i32 30)
  %113 = load i32, i32* @ETH_MAX_JUMBO_PACKET_SIZE, align 4
  %114 = load i32, i32* @ETH_OVREHEAD, align 4
  %115 = add nsw i32 %113, %114
  %116 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %115, i32* %116, align 4
  %117 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 0, i32* %117, align 4
  %118 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @BIGMAC2_REGISTER_TX_MAX_SIZE, align 4
  %121 = add nsw i32 %119, %120
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %123 = call i32 @REG_WR_DMAE(%struct.bnx2x* %118, i32 %121, i32* %122, i32 2)
  %124 = call i32 @udelay(i32 30)
  %125 = load i32, i32* @ETH_MAX_JUMBO_PACKET_SIZE, align 4
  %126 = load i32, i32* @ETH_OVREHEAD, align 4
  %127 = add nsw i32 %125, %126
  %128 = sub nsw i32 %127, 2
  %129 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %128, i32* %129, align 4
  %130 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 0, i32* %130, align 4
  %131 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* @BIGMAC2_REGISTER_CNT_MAX_SIZE, align 4
  %134 = add nsw i32 %132, %133
  %135 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %136 = call i32 @REG_WR_DMAE(%struct.bnx2x* %131, i32 %134, i32* %135, i32 2)
  %137 = call i32 @udelay(i32 30)
  %138 = load %struct.link_params*, %struct.link_params** %4, align 8
  %139 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %140 = load i64, i64* %6, align 8
  %141 = call i32 @bnx2x_update_pfc_bmac2(%struct.link_params* %138, %struct.link_vars* %139, i64 %140)
  ret i32 0
}

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @REG_WR_DMAE(%struct.bnx2x*, i32, i32*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @bnx2x_update_pfc_bmac2(%struct.link_params*, %struct.link_vars*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

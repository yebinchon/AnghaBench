; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_emac_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_emac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { i32, i32*, %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32 }

@GRCBASE_EMAC1 = common dso_local global i32 0, align 4
@GRCBASE_EMAC0 = common dso_local global i32 0, align 4
@GRCBASE_MISC = common dso_local global i64 0, align 8
@MISC_REGISTERS_RESET_REG_2_CLEAR = common dso_local global i64 0, align 8
@MISC_REGISTERS_RESET_REG_2_RST_EMAC0_HARD_CORE = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_SET = common dso_local global i64 0, align 8
@EMAC_REG_EMAC_MODE = common dso_local global i32 0, align 4
@EMAC_MODE_RESET = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"EMAC reset reg is %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"EMAC timeout!\0A\00", align 1
@EMAC_REG_EMAC_MAC_MATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_params*, %struct.link_vars*)* @bnx2x_emac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_emac_init(%struct.link_params* %0, %struct.link_vars* %1) #0 {
  %3 = alloca %struct.link_params*, align 8
  %4 = alloca %struct.link_vars*, align 8
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.link_params* %0, %struct.link_params** %3, align 8
  store %struct.link_vars* %1, %struct.link_vars** %4, align 8
  %10 = load %struct.link_params*, %struct.link_params** %3, align 8
  %11 = getelementptr inbounds %struct.link_params, %struct.link_params* %10, i32 0, i32 2
  %12 = load %struct.bnx2x*, %struct.bnx2x** %11, align 8
  store %struct.bnx2x* %12, %struct.bnx2x** %5, align 8
  %13 = load %struct.link_params*, %struct.link_params** %3, align 8
  %14 = getelementptr inbounds %struct.link_params, %struct.link_params* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @GRCBASE_EMAC1, align 4
  br label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @GRCBASE_EMAC0, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %7, align 4
  %24 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %25 = load i64, i64* @GRCBASE_MISC, align 8
  %26 = load i64, i64* @MISC_REGISTERS_RESET_REG_2_CLEAR, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_RST_EMAC0_HARD_CORE, align 4
  %29 = load i32, i32* %6, align 4
  %30 = shl i32 %28, %29
  %31 = call i32 @REG_WR(%struct.bnx2x* %24, i64 %27, i32 %30)
  %32 = call i32 @udelay(i32 5)
  %33 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %34 = load i64, i64* @GRCBASE_MISC, align 8
  %35 = load i64, i64* @MISC_REGISTERS_RESET_REG_2_SET, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_RST_EMAC0_HARD_CORE, align 4
  %38 = load i32, i32* %6, align 4
  %39 = shl i32 %37, %38
  %40 = call i32 @REG_WR(%struct.bnx2x* %33, i64 %36, i32 %39)
  %41 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @EMAC_REG_EMAC_MODE, align 4
  %44 = add nsw i32 %42, %43
  %45 = call i32 @REG_RD(%struct.bnx2x* %41, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %47 = load i32, i32* @EMAC_REG_EMAC_MODE, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @EMAC_MODE_RESET, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @EMAC_WR(%struct.bnx2x* %46, i32 %47, i32 %50)
  store i32 200, i32* %9, align 4
  br label %52

52:                                               ; preds = %69, %22
  %53 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @EMAC_REG_EMAC_MODE, align 4
  %56 = add nsw i32 %54, %55
  %57 = call i32 @REG_RD(%struct.bnx2x* %53, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* @NETIF_MSG_LINK, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 (i32, i8*, ...) @DP(i32 %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %52
  %64 = load i32, i32* @NETIF_MSG_LINK, align 4
  %65 = call i32 (i32, i8*, ...) @DP(i32 %64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %125

66:                                               ; preds = %52
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @EMAC_MODE_RESET, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %52, label %74

74:                                               ; preds = %69
  %75 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %76 = load %struct.link_params*, %struct.link_params** %3, align 8
  %77 = call i32 @bnx2x_set_mdio_emac_per_phy(%struct.bnx2x* %75, %struct.link_params* %76)
  %78 = load %struct.link_params*, %struct.link_params** %3, align 8
  %79 = getelementptr inbounds %struct.link_params, %struct.link_params* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %82, 8
  %84 = load %struct.link_params*, %struct.link_params** %3, align 8
  %85 = getelementptr inbounds %struct.link_params, %struct.link_params* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %83, %88
  store i32 %89, i32* %8, align 4
  %90 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %91 = load i32, i32* @EMAC_REG_EMAC_MAC_MATCH, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @EMAC_WR(%struct.bnx2x* %90, i32 %91, i32 %92)
  %94 = load %struct.link_params*, %struct.link_params** %3, align 8
  %95 = getelementptr inbounds %struct.link_params, %struct.link_params* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  %98 = load i32, i32* %97, align 4
  %99 = shl i32 %98, 24
  %100 = load %struct.link_params*, %struct.link_params** %3, align 8
  %101 = getelementptr inbounds %struct.link_params, %struct.link_params* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 3
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %104, 16
  %106 = or i32 %99, %105
  %107 = load %struct.link_params*, %struct.link_params** %3, align 8
  %108 = getelementptr inbounds %struct.link_params, %struct.link_params* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 4
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 %111, 8
  %113 = or i32 %106, %112
  %114 = load %struct.link_params*, %struct.link_params** %3, align 8
  %115 = getelementptr inbounds %struct.link_params, %struct.link_params* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 5
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %113, %118
  store i32 %119, i32* %8, align 4
  %120 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %121 = load i32, i32* @EMAC_REG_EMAC_MAC_MATCH, align 4
  %122 = add nsw i32 %121, 4
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @EMAC_WR(%struct.bnx2x* %120, i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %74, %63
  ret void
}

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @EMAC_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i32 @bnx2x_set_mdio_emac_per_phy(%struct.bnx2x*, %struct.link_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

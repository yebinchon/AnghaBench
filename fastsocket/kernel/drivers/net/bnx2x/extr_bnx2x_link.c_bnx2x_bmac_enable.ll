; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_bmac_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_bmac_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { i32, i32, %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32, i32 }

@GRCBASE_MISC = common dso_local global i64 0, align 8
@MISC_REGISTERS_RESET_REG_2_CLEAR = common dso_local global i64 0, align 8
@MISC_REGISTERS_RESET_REG_2_RST_BMAC0 = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_SET = common dso_local global i64 0, align 8
@NIG_REG_BMAC0_REGS_OUT_EN = common dso_local global i64 0, align 8
@NIG_REG_XGXS_SERDES0_MODE_SEL = common dso_local global i64 0, align 8
@NIG_REG_XGXS_LANE_SEL_P0 = common dso_local global i64 0, align 8
@NIG_REG_EGRESS_EMAC0_PORT = common dso_local global i64 0, align 8
@FEATURE_CONFIG_PFC_ENABLED = common dso_local global i32 0, align 4
@BNX2X_FLOW_CTRL_TX = common dso_local global i32 0, align 4
@NIG_REG_BMAC0_PAUSE_OUT_EN = common dso_local global i64 0, align 8
@NIG_REG_EGRESS_EMAC0_OUT_EN = common dso_local global i64 0, align 8
@NIG_REG_EMAC0_IN_EN = common dso_local global i64 0, align 8
@NIG_REG_EMAC0_PAUSE_OUT_EN = common dso_local global i64 0, align 8
@NIG_REG_BMAC0_IN_EN = common dso_local global i64 0, align 8
@NIG_REG_BMAC0_OUT_EN = common dso_local global i64 0, align 8
@MAC_TYPE_BMAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.link_params*, %struct.link_vars*, i32, i32)* @bnx2x_bmac_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_bmac_enable(%struct.link_params* %0, %struct.link_vars* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.link_params*, align 8
  %6 = alloca %struct.link_vars*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bnx2x*, align 8
  %12 = alloca i32, align 4
  store %struct.link_params* %0, %struct.link_params** %5, align 8
  store %struct.link_vars* %1, %struct.link_vars** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.link_params*, %struct.link_params** %5, align 8
  %14 = getelementptr inbounds %struct.link_params, %struct.link_params* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %10, align 4
  %16 = load %struct.link_params*, %struct.link_params** %5, align 8
  %17 = getelementptr inbounds %struct.link_params, %struct.link_params* %16, i32 0, i32 2
  %18 = load %struct.bnx2x*, %struct.bnx2x** %17, align 8
  store %struct.bnx2x* %18, %struct.bnx2x** %11, align 8
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %4
  %22 = load %struct.bnx2x*, %struct.bnx2x** %11, align 8
  %23 = load i64, i64* @GRCBASE_MISC, align 8
  %24 = load i64, i64* @MISC_REGISTERS_RESET_REG_2_CLEAR, align 8
  %25 = add nsw i64 %23, %24
  %26 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_RST_BMAC0, align 4
  %27 = load i32, i32* %10, align 4
  %28 = shl i32 %26, %27
  %29 = call i32 @REG_WR(%struct.bnx2x* %22, i64 %25, i32 %28)
  %30 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %31

31:                                               ; preds = %21, %4
  %32 = load %struct.bnx2x*, %struct.bnx2x** %11, align 8
  %33 = load i64, i64* @GRCBASE_MISC, align 8
  %34 = load i64, i64* @MISC_REGISTERS_RESET_REG_2_SET, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_RST_BMAC0, align 4
  %37 = load i32, i32* %10, align 4
  %38 = shl i32 %36, %37
  %39 = call i32 @REG_WR(%struct.bnx2x* %32, i64 %35, i32 %38)
  %40 = load %struct.bnx2x*, %struct.bnx2x** %11, align 8
  %41 = load i64, i64* @NIG_REG_BMAC0_REGS_OUT_EN, align 8
  %42 = load i32, i32* %10, align 4
  %43 = mul nsw i32 %42, 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %41, %44
  %46 = call i32 @REG_WR(%struct.bnx2x* %40, i64 %45, i32 1)
  %47 = load %struct.bnx2x*, %struct.bnx2x** %11, align 8
  %48 = call i64 @CHIP_IS_E2(%struct.bnx2x* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %31
  %51 = load %struct.link_params*, %struct.link_params** %5, align 8
  %52 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @bnx2x_bmac2_enable(%struct.link_params* %51, %struct.link_vars* %52, i32 %53)
  store i32 %54, i32* %9, align 4
  br label %60

55:                                               ; preds = %31
  %56 = load %struct.link_params*, %struct.link_params** %5, align 8
  %57 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @bnx2x_bmac1_enable(%struct.link_params* %56, %struct.link_vars* %57, i32 %58)
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %55, %50
  %61 = load %struct.bnx2x*, %struct.bnx2x** %11, align 8
  %62 = load i64, i64* @NIG_REG_XGXS_SERDES0_MODE_SEL, align 8
  %63 = load i32, i32* %10, align 4
  %64 = mul nsw i32 %63, 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %62, %65
  %67 = call i32 @REG_WR(%struct.bnx2x* %61, i64 %66, i32 1)
  %68 = load %struct.bnx2x*, %struct.bnx2x** %11, align 8
  %69 = load i64, i64* @NIG_REG_XGXS_LANE_SEL_P0, align 8
  %70 = load i32, i32* %10, align 4
  %71 = mul nsw i32 %70, 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %69, %72
  %74 = call i32 @REG_WR(%struct.bnx2x* %68, i64 %73, i32 0)
  %75 = load %struct.bnx2x*, %struct.bnx2x** %11, align 8
  %76 = load i64, i64* @NIG_REG_EGRESS_EMAC0_PORT, align 8
  %77 = load i32, i32* %10, align 4
  %78 = mul nsw i32 %77, 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %76, %79
  %81 = call i32 @REG_WR(%struct.bnx2x* %75, i64 %80, i32 0)
  store i32 0, i32* %12, align 4
  %82 = load %struct.link_params*, %struct.link_params** %5, align 8
  %83 = getelementptr inbounds %struct.link_params, %struct.link_params* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @FEATURE_CONFIG_PFC_ENABLED, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %60
  %89 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %90 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @BNX2X_FLOW_CTRL_TX, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88, %60
  store i32 1, i32* %12, align 4
  br label %96

96:                                               ; preds = %95, %88
  %97 = load %struct.bnx2x*, %struct.bnx2x** %11, align 8
  %98 = load i64, i64* @NIG_REG_BMAC0_PAUSE_OUT_EN, align 8
  %99 = load i32, i32* %10, align 4
  %100 = mul nsw i32 %99, 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %98, %101
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @REG_WR(%struct.bnx2x* %97, i64 %102, i32 %103)
  %105 = load %struct.bnx2x*, %struct.bnx2x** %11, align 8
  %106 = load i64, i64* @NIG_REG_EGRESS_EMAC0_OUT_EN, align 8
  %107 = load i32, i32* %10, align 4
  %108 = mul nsw i32 %107, 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %106, %109
  %111 = call i32 @REG_WR(%struct.bnx2x* %105, i64 %110, i32 0)
  %112 = load %struct.bnx2x*, %struct.bnx2x** %11, align 8
  %113 = load i64, i64* @NIG_REG_EMAC0_IN_EN, align 8
  %114 = load i32, i32* %10, align 4
  %115 = mul nsw i32 %114, 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %113, %116
  %118 = call i32 @REG_WR(%struct.bnx2x* %112, i64 %117, i32 0)
  %119 = load %struct.bnx2x*, %struct.bnx2x** %11, align 8
  %120 = load i64, i64* @NIG_REG_EMAC0_PAUSE_OUT_EN, align 8
  %121 = load i32, i32* %10, align 4
  %122 = mul nsw i32 %121, 4
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %120, %123
  %125 = call i32 @REG_WR(%struct.bnx2x* %119, i64 %124, i32 0)
  %126 = load %struct.bnx2x*, %struct.bnx2x** %11, align 8
  %127 = load i64, i64* @NIG_REG_BMAC0_IN_EN, align 8
  %128 = load i32, i32* %10, align 4
  %129 = mul nsw i32 %128, 4
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %127, %130
  %132 = call i32 @REG_WR(%struct.bnx2x* %126, i64 %131, i32 1)
  %133 = load %struct.bnx2x*, %struct.bnx2x** %11, align 8
  %134 = load i64, i64* @NIG_REG_BMAC0_OUT_EN, align 8
  %135 = load i32, i32* %10, align 4
  %136 = mul nsw i32 %135, 4
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %134, %137
  %139 = call i32 @REG_WR(%struct.bnx2x* %133, i64 %138, i32 1)
  %140 = load i32, i32* @MAC_TYPE_BMAC, align 4
  %141 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %142 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* %9, align 4
  ret i32 %143
}

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @CHIP_IS_E2(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_bmac2_enable(%struct.link_params*, %struct.link_vars*, i32) #1

declare dso_local i32 @bnx2x_bmac1_enable(%struct.link_params*, %struct.link_vars*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_check_half_open_conn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_check_half_open_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { i32, %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32 }

@PHY_PHYSICAL_LINK_FLAG = common dso_local global i32 0, align 4
@NIG_REG_EGRESS_EMAC0_PORT = common dso_local global i64 0, align 8
@MISC_REG_RESET_REG_2 = common dso_local global i64 0, align 8
@MISC_REGISTERS_RESET_REG_2_XMAC = common dso_local global i32 0, align 4
@GRCBASE_XMAC1 = common dso_local global i64 0, align 8
@GRCBASE_XMAC0 = common dso_local global i64 0, align 8
@XMAC_REG_CLEAR_RX_LSS_STATUS = common dso_local global i64 0, align 8
@XMAC_CLEAR_RX_LSS_STATUS_REG_CLEAR_LOCAL_FAULT_STATUS = common dso_local global i32 0, align 4
@XMAC_CLEAR_RX_LSS_STATUS_REG_CLEAR_REMOTE_FAULT_STATUS = common dso_local global i32 0, align 4
@XMAC_REG_RX_LSS_STATUS = common dso_local global i64 0, align 8
@PHY_HALF_OPEN_CONN_FLAG = common dso_local global i32 0, align 4
@LINK_STATUS_NONE = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_RST_BMAC0 = common dso_local global i32 0, align 4
@NIG_REG_INGRESS_BMAC1_MEM = common dso_local global i64 0, align 8
@NIG_REG_INGRESS_BMAC0_MEM = common dso_local global i64 0, align 8
@BIGMAC2_REGISTER_RX_LSS_STAT = common dso_local global i64 0, align 8
@BIGMAC_REGISTER_RX_LSS_STATUS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_check_half_open_conn(%struct.link_params* %0, %struct.link_vars* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.link_params*, align 8
  %6 = alloca %struct.link_vars*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2x*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [2 x i64], align 16
  store %struct.link_params* %0, %struct.link_params** %5, align 8
  store %struct.link_vars* %1, %struct.link_vars** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.link_params*, %struct.link_params** %5, align 8
  %14 = getelementptr inbounds %struct.link_params, %struct.link_params* %13, i32 0, i32 1
  %15 = load %struct.bnx2x*, %struct.bnx2x** %14, align 8
  store %struct.bnx2x* %15, %struct.bnx2x** %8, align 8
  store i64 0, i64* %9, align 8
  %16 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %17 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PHY_PHYSICAL_LINK_FLAG, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %3
  %23 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %24 = load i64, i64* @NIG_REG_EGRESS_EMAC0_PORT, align 8
  %25 = load %struct.link_params*, %struct.link_params** %5, align 8
  %26 = getelementptr inbounds %struct.link_params, %struct.link_params* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = mul nsw i32 %27, 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %24, %29
  %31 = call i32 @REG_RD(%struct.bnx2x* %23, i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %22, %3
  store i32 0, i32* %4, align 4
  br label %134

34:                                               ; preds = %22
  %35 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %36 = call i64 @CHIP_IS_E3(%struct.bnx2x* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %84

38:                                               ; preds = %34
  %39 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %40 = load i64, i64* @MISC_REG_RESET_REG_2, align 8
  %41 = call i32 @REG_RD(%struct.bnx2x* %39, i64 %40)
  %42 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_XMAC, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %84

45:                                               ; preds = %38
  %46 = load %struct.link_params*, %struct.link_params** %5, align 8
  %47 = getelementptr inbounds %struct.link_params, %struct.link_params* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i64, i64* @GRCBASE_XMAC1, align 8
  br label %54

52:                                               ; preds = %45
  %53 = load i64, i64* @GRCBASE_XMAC0, align 8
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i64 [ %51, %50 ], [ %53, %52 ]
  store i64 %55, i64* %10, align 8
  %56 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* @XMAC_REG_CLEAR_RX_LSS_STATUS, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @REG_WR(%struct.bnx2x* %56, i64 %59, i32 0)
  %61 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* @XMAC_REG_CLEAR_RX_LSS_STATUS, align 8
  %64 = add nsw i64 %62, %63
  %65 = load i32, i32* @XMAC_CLEAR_RX_LSS_STATUS_REG_CLEAR_LOCAL_FAULT_STATUS, align 4
  %66 = load i32, i32* @XMAC_CLEAR_RX_LSS_STATUS_REG_CLEAR_REMOTE_FAULT_STATUS, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @REG_WR(%struct.bnx2x* %61, i64 %64, i32 %67)
  %69 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* @XMAC_REG_RX_LSS_STATUS, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @REG_RD(%struct.bnx2x* %69, i64 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %54
  store i64 1, i64* %9, align 8
  br label %76

76:                                               ; preds = %75, %54
  %77 = load %struct.link_params*, %struct.link_params** %5, align 8
  %78 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %79 = load i64, i64* %9, align 8
  %80 = load i32, i32* @PHY_HALF_OPEN_CONN_FLAG, align 4
  %81 = load i32, i32* @LINK_STATUS_NONE, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @bnx2x_analyze_link_error(%struct.link_params* %77, %struct.link_vars* %78, i64 %79, i32 %80, i32 %81, i32 %82)
  br label %133

84:                                               ; preds = %38, %34
  %85 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %86 = load i64, i64* @MISC_REG_RESET_REG_2, align 8
  %87 = call i32 @REG_RD(%struct.bnx2x* %85, i64 %86)
  %88 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_RST_BMAC0, align 4
  %89 = load %struct.link_params*, %struct.link_params** %5, align 8
  %90 = getelementptr inbounds %struct.link_params, %struct.link_params* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = shl i32 %88, %91
  %93 = and i32 %87, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %132

95:                                               ; preds = %84
  %96 = load %struct.link_params*, %struct.link_params** %5, align 8
  %97 = getelementptr inbounds %struct.link_params, %struct.link_params* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i64, i64* @NIG_REG_INGRESS_BMAC1_MEM, align 8
  br label %104

102:                                              ; preds = %95
  %103 = load i64, i64* @NIG_REG_INGRESS_BMAC0_MEM, align 8
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi i64 [ %101, %100 ], [ %103, %102 ]
  store i64 %105, i64* %10, align 8
  %106 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %107 = call i64 @CHIP_IS_E2(%struct.bnx2x* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i64, i64* @BIGMAC2_REGISTER_RX_LSS_STAT, align 8
  store i64 %110, i64* %11, align 8
  br label %113

111:                                              ; preds = %104
  %112 = load i64, i64* @BIGMAC_REGISTER_RX_LSS_STATUS, align 8
  store i64 %112, i64* %11, align 8
  br label %113

113:                                              ; preds = %111, %109
  %114 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %115 = load i64, i64* %10, align 8
  %116 = load i64, i64* %11, align 8
  %117 = add nsw i64 %115, %116
  %118 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  %119 = call i32 @REG_RD_DMAE(%struct.bnx2x* %114, i64 %117, i64* %118, i32 2)
  %120 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  %121 = load i64, i64* %120, align 16
  %122 = icmp sgt i64 %121, 0
  %123 = zext i1 %122 to i32
  %124 = sext i32 %123 to i64
  store i64 %124, i64* %9, align 8
  %125 = load %struct.link_params*, %struct.link_params** %5, align 8
  %126 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %127 = load i64, i64* %9, align 8
  %128 = load i32, i32* @PHY_HALF_OPEN_CONN_FLAG, align 4
  %129 = load i32, i32* @LINK_STATUS_NONE, align 4
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @bnx2x_analyze_link_error(%struct.link_params* %125, %struct.link_vars* %126, i64 %127, i32 %128, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %113, %84
  br label %133

133:                                              ; preds = %132, %76
  store i32 0, i32* %4, align 4
  br label %134

134:                                              ; preds = %133, %33
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @REG_RD(%struct.bnx2x*, i64) #1

declare dso_local i64 @CHIP_IS_E3(%struct.bnx2x*) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @bnx2x_analyze_link_error(%struct.link_params*, %struct.link_vars*, i64, i32, i32, i32) #1

declare dso_local i64 @CHIP_IS_E2(%struct.bnx2x*) #1

declare dso_local i32 @REG_RD_DMAE(%struct.bnx2x*, i64, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

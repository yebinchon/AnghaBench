; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_link_initialize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_link_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { i64, i32, i32, %struct.bnx2x_phy*, %struct.bnx2x* }
%struct.bnx2x_phy = type { i64, i32, i32, i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i64, i32 }

@INT_PHY = common dso_local global i64 0, align 8
@LOOPBACK_XGXS = common dso_local global i64 0, align 8
@EXT_PHY1 = common dso_local global i64 0, align 8
@FLAGS_INIT_XGXS_FIRST = common dso_local global i32 0, align 4
@LOOPBACK_EXT_PHY = common dso_local global i64 0, align 8
@SPEED_AUTO_NEG = common dso_local global i64 0, align 8
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@LINK_STATUS_SERDES_LINK = common dso_local global i32 0, align 4
@EXT_PHY2 = common dso_local global i32 0, align 4
@PORT_HW_CFG_PHY_SELECTION_FIRST_PHY = common dso_local global i64 0, align 8
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Not initializing second phy\0A\00", align 1
@NIG_REG_STATUS_INTERRUPT_PORT0 = common dso_local global i64 0, align 8
@NIG_STATUS_XGXS0_LINK10G = common dso_local global i32 0, align 4
@NIG_STATUS_XGXS0_LINK_STATUS = common dso_local global i32 0, align 4
@NIG_STATUS_SERDES0_LINK_STATUS = common dso_local global i32 0, align 4
@NIG_MASK_MI_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.link_params*, %struct.link_vars*)* @bnx2x_link_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_link_initialize(%struct.link_params* %0, %struct.link_vars* %1) #0 {
  %3 = alloca %struct.link_params*, align 8
  %4 = alloca %struct.link_vars*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2x*, align 8
  %9 = alloca %struct.bnx2x_phy*, align 8
  store %struct.link_params* %0, %struct.link_params** %3, align 8
  store %struct.link_vars* %1, %struct.link_vars** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.link_params*, %struct.link_params** %3, align 8
  %11 = getelementptr inbounds %struct.link_params, %struct.link_params* %10, i32 0, i32 4
  %12 = load %struct.bnx2x*, %struct.bnx2x** %11, align 8
  store %struct.bnx2x* %12, %struct.bnx2x** %8, align 8
  %13 = load %struct.link_params*, %struct.link_params** %3, align 8
  %14 = getelementptr inbounds %struct.link_params, %struct.link_params* %13, i32 0, i32 3
  %15 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %14, align 8
  %16 = load i64, i64* @INT_PHY, align 8
  %17 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %15, i64 %16
  %18 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %21 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %23 = call i32 @USES_WARPCORE(%struct.bnx2x* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %2
  %26 = load %struct.link_params*, %struct.link_params** %3, align 8
  %27 = getelementptr inbounds %struct.link_params, %struct.link_params* %26, i32 0, i32 3
  %28 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %27, align 8
  %29 = load i64, i64* @INT_PHY, align 8
  %30 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %28, i64 %29
  %31 = load %struct.link_params*, %struct.link_params** %3, align 8
  %32 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %33 = call i32 @bnx2x_prepare_xgxs(%struct.bnx2x_phy* %30, %struct.link_params* %31, %struct.link_vars* %32)
  br label %34

34:                                               ; preds = %25, %2
  %35 = load %struct.link_params*, %struct.link_params** %3, align 8
  %36 = call i64 @SINGLE_MEDIA_DIRECT(%struct.link_params* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = load %struct.link_params*, %struct.link_params** %3, align 8
  %40 = getelementptr inbounds %struct.link_params, %struct.link_params* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @LOOPBACK_XGXS, align 8
  %43 = icmp eq i64 %41, %42
  br label %44

44:                                               ; preds = %38, %34
  %45 = phi i1 [ true, %34 ], [ %43, %38 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %66, label %49

49:                                               ; preds = %44
  %50 = load %struct.link_params*, %struct.link_params** %3, align 8
  %51 = getelementptr inbounds %struct.link_params, %struct.link_params* %50, i32 0, i32 3
  %52 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %51, align 8
  %53 = load i64, i64* @EXT_PHY1, align 8
  %54 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %52, i64 %53
  %55 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @FLAGS_INIT_XGXS_FIRST, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %49
  %61 = load %struct.link_params*, %struct.link_params** %3, align 8
  %62 = getelementptr inbounds %struct.link_params, %struct.link_params* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @LOOPBACK_EXT_PHY, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %111

66:                                               ; preds = %60, %49, %44
  %67 = load %struct.link_params*, %struct.link_params** %3, align 8
  %68 = getelementptr inbounds %struct.link_params, %struct.link_params* %67, i32 0, i32 3
  %69 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %68, align 8
  %70 = load i64, i64* @INT_PHY, align 8
  %71 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %69, i64 %70
  store %struct.bnx2x_phy* %71, %struct.bnx2x_phy** %9, align 8
  %72 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %73 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @SPEED_AUTO_NEG, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %66
  %78 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %79 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %83 = call i64 @CHIP_IS_E2(%struct.bnx2x* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %81, %77
  %86 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %9, align 8
  %87 = load %struct.link_params*, %struct.link_params** %3, align 8
  %88 = call i32 @bnx2x_set_parallel_detection(%struct.bnx2x_phy* %86, %struct.link_params* %87)
  br label %89

89:                                               ; preds = %85, %81, %66
  %90 = load %struct.link_params*, %struct.link_params** %3, align 8
  %91 = getelementptr inbounds %struct.link_params, %struct.link_params* %90, i32 0, i32 3
  %92 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %91, align 8
  %93 = load i64, i64* @INT_PHY, align 8
  %94 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %92, i64 %93
  %95 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %94, i32 0, i32 3
  %96 = load i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)*, i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)** %95, align 8
  %97 = icmp ne i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)* %96, null
  br i1 %97, label %98, label %110

98:                                               ; preds = %89
  %99 = load %struct.link_params*, %struct.link_params** %3, align 8
  %100 = getelementptr inbounds %struct.link_params, %struct.link_params* %99, i32 0, i32 3
  %101 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %100, align 8
  %102 = load i64, i64* @INT_PHY, align 8
  %103 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %101, i64 %102
  %104 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %103, i32 0, i32 3
  %105 = load i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)*, i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)** %104, align 8
  %106 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %9, align 8
  %107 = load %struct.link_params*, %struct.link_params** %3, align 8
  %108 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %109 = call i32 %105(%struct.bnx2x_phy* %106, %struct.link_params* %107, %struct.link_vars* %108)
  br label %110

110:                                              ; preds = %98, %89
  br label %111

111:                                              ; preds = %110, %60
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %132

114:                                              ; preds = %111
  %115 = load %struct.link_params*, %struct.link_params** %3, align 8
  %116 = getelementptr inbounds %struct.link_params, %struct.link_params* %115, i32 0, i32 3
  %117 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %116, align 8
  %118 = load i64, i64* @INT_PHY, align 8
  %119 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %117, i64 %118
  %120 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %114
  %126 = load i32, i32* @LINK_STATUS_SERDES_LINK, align 4
  %127 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %128 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 8
  br label %131

131:                                              ; preds = %125, %114
  br label %193

132:                                              ; preds = %111
  %133 = load i64, i64* @EXT_PHY1, align 8
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %6, align 4
  br label %135

135:                                              ; preds = %189, %132
  %136 = load i32, i32* %6, align 4
  %137 = load %struct.link_params*, %struct.link_params** %3, align 8
  %138 = getelementptr inbounds %struct.link_params, %struct.link_params* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %141, label %192

141:                                              ; preds = %135
  %142 = load %struct.link_params*, %struct.link_params** %3, align 8
  %143 = getelementptr inbounds %struct.link_params, %struct.link_params* %142, i32 0, i32 3
  %144 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %143, align 8
  %145 = load i32, i32* %6, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %144, i64 %146
  %148 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %141
  %154 = load i32, i32* @LINK_STATUS_SERDES_LINK, align 4
  %155 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %156 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 8
  br label %159

159:                                              ; preds = %153, %141
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* @EXT_PHY2, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %171

163:                                              ; preds = %159
  %164 = load %struct.link_params*, %struct.link_params** %3, align 8
  %165 = call i64 @bnx2x_phy_selection(%struct.link_params* %164)
  %166 = load i64, i64* @PORT_HW_CFG_PHY_SELECTION_FIRST_PHY, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %163
  %169 = load i32, i32* @NETIF_MSG_LINK, align 4
  %170 = call i32 @DP(i32 %169, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %189

171:                                              ; preds = %163, %159
  %172 = load %struct.link_params*, %struct.link_params** %3, align 8
  %173 = getelementptr inbounds %struct.link_params, %struct.link_params* %172, i32 0, i32 3
  %174 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %173, align 8
  %175 = load i32, i32* %6, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %174, i64 %176
  %178 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %177, i32 0, i32 3
  %179 = load i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)*, i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)** %178, align 8
  %180 = load %struct.link_params*, %struct.link_params** %3, align 8
  %181 = getelementptr inbounds %struct.link_params, %struct.link_params* %180, i32 0, i32 3
  %182 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %181, align 8
  %183 = load i32, i32* %6, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %182, i64 %184
  %186 = load %struct.link_params*, %struct.link_params** %3, align 8
  %187 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %188 = call i32 %179(%struct.bnx2x_phy* %185, %struct.link_params* %186, %struct.link_vars* %187)
  br label %189

189:                                              ; preds = %171, %168
  %190 = load i32, i32* %6, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %6, align 4
  br label %135

192:                                              ; preds = %135
  br label %193

193:                                              ; preds = %192, %131
  %194 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %195 = load i64, i64* @NIG_REG_STATUS_INTERRUPT_PORT0, align 8
  %196 = load %struct.link_params*, %struct.link_params** %3, align 8
  %197 = getelementptr inbounds %struct.link_params, %struct.link_params* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = mul nsw i32 %198, 4
  %200 = sext i32 %199 to i64
  %201 = add nsw i64 %195, %200
  %202 = load i32, i32* @NIG_STATUS_XGXS0_LINK10G, align 4
  %203 = load i32, i32* @NIG_STATUS_XGXS0_LINK_STATUS, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* @NIG_STATUS_SERDES0_LINK_STATUS, align 4
  %206 = or i32 %204, %205
  %207 = load i32, i32* @NIG_MASK_MI_INT, align 4
  %208 = or i32 %206, %207
  %209 = call i32 @bnx2x_bits_dis(%struct.bnx2x* %194, i64 %201, i32 %208)
  %210 = load i32, i32* %5, align 4
  ret i32 %210
}

declare dso_local i32 @USES_WARPCORE(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_prepare_xgxs(%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*) #1

declare dso_local i64 @SINGLE_MEDIA_DIRECT(%struct.link_params*) #1

declare dso_local i64 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E2(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_set_parallel_detection(%struct.bnx2x_phy*, %struct.link_params*) #1

declare dso_local i64 @bnx2x_phy_selection(%struct.link_params*) #1

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @bnx2x_bits_dis(%struct.bnx2x*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

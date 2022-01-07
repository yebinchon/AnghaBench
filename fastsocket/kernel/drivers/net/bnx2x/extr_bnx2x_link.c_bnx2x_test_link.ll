; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_test_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_test_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { i64*, i64, i32, %struct.bnx2x_phy*, %struct.bnx2x* }
%struct.bnx2x_phy = type { i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)*, i32 }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32 }

@INT_PHY = common dso_local global i64 0, align 8
@SPEED_10000 = common dso_local global i64 0, align 8
@MDIO_WC_DEVAD = common dso_local global i32 0, align 4
@MDIO_WC_REG_GP2_STATUS_GP_2_1 = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@MDIO_REG_BANK_GP_STATUS = common dso_local global i32 0, align 4
@MDIO_GP_STATUS_TOP_AN_STATUS1 = common dso_local global i32 0, align 4
@MDIO_GP_STATUS_TOP_AN_STATUS1_LINK_STATUS = common dso_local global i32 0, align 4
@LOOPBACK_XGXS = common dso_local global i64 0, align 8
@EXT_PHY1 = common dso_local global i64 0, align 8
@ETH_PHY_SFPP_10G_FIBER = common dso_local global i32 0, align 4
@ETH_PHY_SFP_1G_FIBER = common dso_local global i32 0, align 4
@ETH_PHY_XFP_FIBER = common dso_local global i32 0, align 4
@ETH_PHY_DA_TWINAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_test_link(%struct.link_params* %0, %struct.link_vars* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.link_params*, align 8
  %6 = alloca %struct.link_vars*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2x*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.link_vars, align 4
  %14 = alloca %struct.bnx2x_phy*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.link_params* %0, %struct.link_params** %5, align 8
  store %struct.link_vars* %1, %struct.link_vars** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.link_params*, %struct.link_params** %5, align 8
  %18 = getelementptr inbounds %struct.link_params, %struct.link_params* %17, i32 0, i32 4
  %19 = load %struct.bnx2x*, %struct.bnx2x** %18, align 8
  store %struct.bnx2x* %19, %struct.bnx2x** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %20 = load %struct.link_params*, %struct.link_params** %5, align 8
  %21 = getelementptr inbounds %struct.link_params, %struct.link_params* %20, i32 0, i32 3
  %22 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %21, align 8
  %23 = load i64, i64* @INT_PHY, align 8
  %24 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %22, i64 %23
  store %struct.bnx2x_phy* %24, %struct.bnx2x_phy** %14, align 8
  %25 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %26 = call i64 @CHIP_IS_E3(%struct.bnx2x* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %76

28:                                               ; preds = %3
  %29 = load %struct.link_params*, %struct.link_params** %5, align 8
  %30 = getelementptr inbounds %struct.link_params, %struct.link_params* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* @INT_PHY, align 8
  %33 = call i64 @LINK_CONFIG_IDX(i64 %32)
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SPEED_10000, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %28
  %39 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %40 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %14, align 8
  %41 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %42 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %39, %struct.bnx2x_phy* %40, i32 %41, i32 1, i32* %15)
  %43 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %44 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %14, align 8
  %45 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %46 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %43, %struct.bnx2x_phy* %44, i32 %45, i32 1, i32* %15)
  %47 = load i32, i32* %15, align 4
  %48 = and i32 %47, 4
  store i32 %48, i32* %15, align 4
  br label %69

49:                                               ; preds = %28
  %50 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %14, align 8
  %51 = load %struct.link_params*, %struct.link_params** %5, align 8
  %52 = call i32 @bnx2x_get_warpcore_lane(%struct.bnx2x_phy* %50, %struct.link_params* %51)
  store i32 %52, i32* %16, align 4
  %53 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %54 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %14, align 8
  %55 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %56 = load i32, i32* @MDIO_WC_REG_GP2_STATUS_GP_2_1, align 4
  %57 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %53, %struct.bnx2x_phy* %54, i32 %55, i32 %56, i32* %9)
  %58 = load i32, i32* %9, align 4
  %59 = ashr i32 %58, 8
  %60 = and i32 %59, 15
  %61 = load i32, i32* %9, align 4
  %62 = ashr i32 %61, 12
  %63 = and i32 %62, 15
  %64 = or i32 %60, %63
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %16, align 4
  %67 = shl i32 1, %66
  %68 = and i32 %65, %67
  store i32 %68, i32* %15, align 4
  br label %69

69:                                               ; preds = %49, %38
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* @ESRCH, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %218

75:                                               ; preds = %69
  br label %90

76:                                               ; preds = %3
  %77 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %78 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %14, align 8
  %79 = load i32, i32* @MDIO_REG_BANK_GP_STATUS, align 4
  %80 = load i32, i32* @MDIO_GP_STATUS_TOP_AN_STATUS1, align 4
  %81 = call i32 @CL22_RD_OVER_CL45(%struct.bnx2x* %77, %struct.bnx2x_phy* %78, i32 %79, i32 %80, i32* %9)
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @MDIO_GP_STATUS_TOP_AN_STATUS1_LINK_STATUS, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %76
  %87 = load i32, i32* @ESRCH, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %218

89:                                               ; preds = %76
  br label %90

90:                                               ; preds = %89, %75
  %91 = load %struct.link_params*, %struct.link_params** %5, align 8
  %92 = getelementptr inbounds %struct.link_params, %struct.link_params* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @LOOPBACK_XGXS, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  store i32 0, i32* %4, align 4
  br label %218

97:                                               ; preds = %90
  %98 = load %struct.link_params*, %struct.link_params** %5, align 8
  %99 = getelementptr inbounds %struct.link_params, %struct.link_params* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  switch i32 %100, label %211 [
    i32 1, label %101
    i32 2, label %102
    i32 3, label %117
  ]

101:                                              ; preds = %97
  store i32 0, i32* %4, align 4
  br label %218

102:                                              ; preds = %97
  %103 = load %struct.link_params*, %struct.link_params** %5, align 8
  %104 = getelementptr inbounds %struct.link_params, %struct.link_params* %103, i32 0, i32 3
  %105 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %104, align 8
  %106 = load i64, i64* @EXT_PHY1, align 8
  %107 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %105, i64 %106
  %108 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %107, i32 0, i32 0
  %109 = load i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)*, i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)** %108, align 8
  %110 = load %struct.link_params*, %struct.link_params** %5, align 8
  %111 = getelementptr inbounds %struct.link_params, %struct.link_params* %110, i32 0, i32 3
  %112 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %111, align 8
  %113 = load i64, i64* @EXT_PHY1, align 8
  %114 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %112, i64 %113
  %115 = load %struct.link_params*, %struct.link_params** %5, align 8
  %116 = call i32 %109(%struct.bnx2x_phy* %114, %struct.link_params* %115, %struct.link_vars* %13)
  store i32 %116, i32* %11, align 4
  br label %211

117:                                              ; preds = %97
  %118 = load i64, i64* @EXT_PHY1, align 8
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %10, align 4
  br label %120

120:                                              ; preds = %207, %117
  %121 = load i32, i32* %10, align 4
  %122 = load %struct.link_params*, %struct.link_params** %5, align 8
  %123 = getelementptr inbounds %struct.link_params, %struct.link_params* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = icmp slt i32 %121, %124
  br i1 %125, label %126, label %210

126:                                              ; preds = %120
  %127 = load %struct.link_params*, %struct.link_params** %5, align 8
  %128 = getelementptr inbounds %struct.link_params, %struct.link_params* %127, i32 0, i32 3
  %129 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %128, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %129, i64 %131
  %133 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @ETH_PHY_SFPP_10G_FIBER, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %170, label %137

137:                                              ; preds = %126
  %138 = load %struct.link_params*, %struct.link_params** %5, align 8
  %139 = getelementptr inbounds %struct.link_params, %struct.link_params* %138, i32 0, i32 3
  %140 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %139, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %140, i64 %142
  %144 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @ETH_PHY_SFP_1G_FIBER, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %170, label %148

148:                                              ; preds = %137
  %149 = load %struct.link_params*, %struct.link_params** %5, align 8
  %150 = getelementptr inbounds %struct.link_params, %struct.link_params* %149, i32 0, i32 3
  %151 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %150, align 8
  %152 = load i32, i32* %10, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %151, i64 %153
  %155 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @ETH_PHY_XFP_FIBER, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %170, label %159

159:                                              ; preds = %148
  %160 = load %struct.link_params*, %struct.link_params** %5, align 8
  %161 = getelementptr inbounds %struct.link_params, %struct.link_params* %160, i32 0, i32 3
  %162 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %161, align 8
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %162, i64 %164
  %166 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @ETH_PHY_DA_TWINAX, align 4
  %169 = icmp eq i32 %167, %168
  br label %170

170:                                              ; preds = %159, %148, %137, %126
  %171 = phi i1 [ true, %148 ], [ true, %137 ], [ true, %126 ], [ %169, %159 ]
  %172 = zext i1 %171 to i32
  store i32 %172, i32* %12, align 4
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* %12, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %170
  br label %207

177:                                              ; preds = %170
  %178 = load %struct.link_params*, %struct.link_params** %5, align 8
  %179 = getelementptr inbounds %struct.link_params, %struct.link_params* %178, i32 0, i32 3
  %180 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %179, align 8
  %181 = load i32, i32* %10, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %180, i64 %182
  %184 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %183, i32 0, i32 0
  %185 = load i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)*, i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)** %184, align 8
  %186 = icmp ne i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)* %185, null
  br i1 %186, label %187, label %206

187:                                              ; preds = %177
  %188 = load %struct.link_params*, %struct.link_params** %5, align 8
  %189 = getelementptr inbounds %struct.link_params, %struct.link_params* %188, i32 0, i32 3
  %190 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %189, align 8
  %191 = load i32, i32* %10, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %190, i64 %192
  %194 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %193, i32 0, i32 0
  %195 = load i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)*, i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)** %194, align 8
  %196 = load %struct.link_params*, %struct.link_params** %5, align 8
  %197 = getelementptr inbounds %struct.link_params, %struct.link_params* %196, i32 0, i32 3
  %198 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %197, align 8
  %199 = load i32, i32* %10, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %198, i64 %200
  %202 = load %struct.link_params*, %struct.link_params** %5, align 8
  %203 = call i32 %195(%struct.bnx2x_phy* %201, %struct.link_params* %202, %struct.link_vars* %13)
  %204 = load i32, i32* %11, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %11, align 4
  br label %206

206:                                              ; preds = %187, %177
  br label %207

207:                                              ; preds = %206, %176
  %208 = load i32, i32* %10, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %10, align 4
  br label %120

210:                                              ; preds = %120
  br label %211

211:                                              ; preds = %97, %210, %102
  %212 = load i32, i32* %11, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %211
  store i32 0, i32* %4, align 4
  br label %218

215:                                              ; preds = %211
  %216 = load i32, i32* @ESRCH, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %4, align 4
  br label %218

218:                                              ; preds = %215, %214, %101, %96, %86, %72
  %219 = load i32, i32* %4, align 4
  ret i32 %219
}

declare dso_local i64 @CHIP_IS_E3(%struct.bnx2x*) #1

declare dso_local i64 @LINK_CONFIG_IDX(i64) #1

declare dso_local i32 @bnx2x_cl45_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

declare dso_local i32 @bnx2x_get_warpcore_lane(%struct.bnx2x_phy*, %struct.link_params*) #1

declare dso_local i32 @CL22_RD_OVER_CL45(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

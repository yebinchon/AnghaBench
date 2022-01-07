; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_link_settings_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_link_settings_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i64 }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32, i32, i32 }

@DUPLEX_HALF = common dso_local global i32 0, align 4
@MDIO_REG_BANK_GP_STATUS = common dso_local global i32 0, align 4
@MDIO_GP_STATUS_TOP_AN_STATUS1 = common dso_local global i32 0, align 4
@MDIO_GP_STATUS_TOP_AN_STATUS1_DUPLEX_STATUS = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@MDIO_GP_STATUS_TOP_AN_STATUS1_LINK_STATUS = common dso_local global i32 0, align 4
@GP_STATUS_SPEED_MASK = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"gp_status 0x%x, is_link_up %d, speed_mask 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SPEED_AUTO_NEG = common dso_local global i64 0, align 8
@LINK_STATUS_AUTO_NEGOTIATE_COMPLETE = common dso_local global i32 0, align 4
@MDIO_REG_BANK_CL73_IEEEB1 = common dso_local global i32 0, align 4
@MDIO_CL73_IEEEB1_AN_LP_ADV2 = common dso_local global i32 0, align 4
@MDIO_CL73_IEEEB1_AN_ADV2_ADVR_1000M_KX = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_1000TFD_CAPABLE = common dso_local global i32 0, align 4
@MDIO_CL73_IEEEB1_AN_ADV2_ADVR_10G_KX4 = common dso_local global i32 0, align 4
@MDIO_CL73_IEEEB1_AN_ADV2_ADVR_10G_KR = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_10GXFD_CAPABLE = common dso_local global i32 0, align 4
@MDIO_REG_BANK_OVER_1G = common dso_local global i32 0, align 4
@MDIO_OVER_1G_LP_UP1 = common dso_local global i32 0, align 4
@MDIO_OVER_1G_UP1_2_5G = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_2500XFD_CAPABLE = common dso_local global i32 0, align 4
@MDIO_OVER_1G_UP1_10G = common dso_local global i32 0, align 4
@MDIO_OVER_1G_UP1_10GH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"duplex %x  flow_ctrl 0x%x link_status 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)* @bnx2x_link_settings_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_link_settings_status(%struct.bnx2x_phy* %0, %struct.link_params* %1, %struct.link_vars* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2x_phy*, align 8
  %6 = alloca %struct.link_params*, align 8
  %7 = alloca %struct.link_vars*, align 8
  %8 = alloca %struct.bnx2x*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %5, align 8
  store %struct.link_params* %1, %struct.link_params** %6, align 8
  store %struct.link_vars* %2, %struct.link_vars** %7, align 8
  %15 = load %struct.link_params*, %struct.link_params** %6, align 8
  %16 = getelementptr inbounds %struct.link_params, %struct.link_params* %15, i32 0, i32 0
  %17 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  store %struct.bnx2x* %17, %struct.bnx2x** %8, align 8
  %18 = load i32, i32* @DUPLEX_HALF, align 4
  store i32 %18, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %19 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %20 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %21 = load i32, i32* @MDIO_REG_BANK_GP_STATUS, align 4
  %22 = load i32, i32* @MDIO_GP_STATUS_TOP_AN_STATUS1, align 4
  %23 = call i32 @CL22_RD_OVER_CL45(%struct.bnx2x* %19, %struct.bnx2x_phy* %20, i32 %21, i32 %22, i32* %9)
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @MDIO_GP_STATUS_TOP_AN_STATUS1_DUPLEX_STATUS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @DUPLEX_FULL, align 4
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %28, %3
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @MDIO_GP_STATUS_TOP_AN_STATUS1_LINK_STATUS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 1, i32* %11, align 4
  br label %36

36:                                               ; preds = %35, %30
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @GP_STATUS_SPEED_MASK, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* @NETIF_MSG_LINK, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @DP(i32 %40, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42, i32 %43)
  %45 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %46 = load %struct.link_params*, %struct.link_params** %6, align 8
  %47 = load %struct.link_vars*, %struct.link_vars** %7, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @bnx2x_get_link_speed_duplex(%struct.bnx2x_phy* %45, %struct.link_params* %46, %struct.link_vars* %47, i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %36
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %4, align 4
  br label %187

58:                                               ; preds = %36
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @MDIO_GP_STATUS_TOP_AN_STATUS1_LINK_STATUS, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %89

63:                                               ; preds = %58
  %64 = load %struct.link_params*, %struct.link_params** %6, align 8
  %65 = call i64 @SINGLE_MEDIA_DIRECT(%struct.link_params* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %88

67:                                               ; preds = %63
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.link_vars*, %struct.link_vars** %7, align 8
  %70 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %72 = load %struct.link_params*, %struct.link_params** %6, align 8
  %73 = load %struct.link_vars*, %struct.link_vars** %7, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @bnx2x_flow_ctrl_resolve(%struct.bnx2x_phy* %71, %struct.link_params* %72, %struct.link_vars* %73, i32 %74)
  %76 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %77 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @SPEED_AUTO_NEG, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %67
  %82 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %83 = load %struct.link_params*, %struct.link_params** %6, align 8
  %84 = load %struct.link_vars*, %struct.link_vars** %7, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @bnx2x_xgxs_an_resolve(%struct.bnx2x_phy* %82, %struct.link_params* %83, %struct.link_vars* %84, i32 %85)
  br label %87

87:                                               ; preds = %81, %67
  br label %88

88:                                               ; preds = %87, %63
  br label %104

89:                                               ; preds = %58
  %90 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %91 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @SPEED_AUTO_NEG, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %89
  %96 = load %struct.link_params*, %struct.link_params** %6, align 8
  %97 = call i64 @SINGLE_MEDIA_DIRECT(%struct.link_params* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %101 = load %struct.link_params*, %struct.link_params** %6, align 8
  %102 = call i32 @bnx2x_check_fallback_to_cl37(%struct.bnx2x_phy* %100, %struct.link_params* %101)
  br label %103

103:                                              ; preds = %99, %95, %89
  br label %104

104:                                              ; preds = %103, %88
  %105 = load %struct.link_params*, %struct.link_params** %6, align 8
  %106 = call i64 @SINGLE_MEDIA_DIRECT(%struct.link_params* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %174

108:                                              ; preds = %104
  %109 = load %struct.link_vars*, %struct.link_vars** %7, align 8
  %110 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @LINK_STATUS_AUTO_NEGOTIATE_COMPLETE, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %174

115:                                              ; preds = %108
  %116 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %117 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %118 = load i32, i32* @MDIO_REG_BANK_CL73_IEEEB1, align 4
  %119 = load i32, i32* @MDIO_CL73_IEEEB1_AN_LP_ADV2, align 4
  %120 = call i32 @CL22_RD_OVER_CL45(%struct.bnx2x* %116, %struct.bnx2x_phy* %117, i32 %118, i32 %119, i32* %14)
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* @MDIO_CL73_IEEEB1_AN_ADV2_ADVR_1000M_KX, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %115
  %126 = load i32, i32* @LINK_STATUS_LINK_PARTNER_1000TFD_CAPABLE, align 4
  %127 = load %struct.link_vars*, %struct.link_vars** %7, align 8
  %128 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %125, %115
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* @MDIO_CL73_IEEEB1_AN_ADV2_ADVR_10G_KX4, align 4
  %134 = load i32, i32* @MDIO_CL73_IEEEB1_AN_ADV2_ADVR_10G_KR, align 4
  %135 = or i32 %133, %134
  %136 = and i32 %132, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %131
  %139 = load i32, i32* @LINK_STATUS_LINK_PARTNER_10GXFD_CAPABLE, align 4
  %140 = load %struct.link_vars*, %struct.link_vars** %7, align 8
  %141 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %138, %131
  %145 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %146 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %147 = load i32, i32* @MDIO_REG_BANK_OVER_1G, align 4
  %148 = load i32, i32* @MDIO_OVER_1G_LP_UP1, align 4
  %149 = call i32 @CL22_RD_OVER_CL45(%struct.bnx2x* %145, %struct.bnx2x_phy* %146, i32 %147, i32 %148, i32* %14)
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* @MDIO_OVER_1G_UP1_2_5G, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %144
  %155 = load i32, i32* @LINK_STATUS_LINK_PARTNER_2500XFD_CAPABLE, align 4
  %156 = load %struct.link_vars*, %struct.link_vars** %7, align 8
  %157 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %154, %144
  %161 = load i32, i32* %14, align 4
  %162 = load i32, i32* @MDIO_OVER_1G_UP1_10G, align 4
  %163 = load i32, i32* @MDIO_OVER_1G_UP1_10GH, align 4
  %164 = or i32 %162, %163
  %165 = and i32 %161, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %160
  %168 = load i32, i32* @LINK_STATUS_LINK_PARTNER_10GXFD_CAPABLE, align 4
  %169 = load %struct.link_vars*, %struct.link_vars** %7, align 8
  %170 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %171, %168
  store i32 %172, i32* %170, align 4
  br label %173

173:                                              ; preds = %167, %160
  br label %174

174:                                              ; preds = %173, %108, %104
  %175 = load i32, i32* @NETIF_MSG_LINK, align 4
  %176 = load %struct.link_vars*, %struct.link_vars** %7, align 8
  %177 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.link_vars*, %struct.link_vars** %7, align 8
  %180 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.link_vars*, %struct.link_vars** %7, align 8
  %183 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @DP(i32 %175, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %178, i32 %181, i32 %184)
  %186 = load i32, i32* %13, align 4
  store i32 %186, i32* %4, align 4
  br label %187

187:                                              ; preds = %174, %56
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local i32 @CL22_RD_OVER_CL45(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

declare dso_local i32 @DP(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_get_link_speed_duplex(%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*, i32, i32, i32) #1

declare dso_local i64 @SINGLE_MEDIA_DIRECT(%struct.link_params*) #1

declare dso_local i32 @bnx2x_flow_ctrl_resolve(%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*, i32) #1

declare dso_local i32 @bnx2x_xgxs_an_resolve(%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*, i32) #1

declare dso_local i32 @bnx2x_check_fallback_to_cl37(%struct.bnx2x_phy*, %struct.link_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

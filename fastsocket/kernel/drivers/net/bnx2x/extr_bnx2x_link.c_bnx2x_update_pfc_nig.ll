; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_update_pfc_nig.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_update_pfc_nig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { i64, i32, %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32 }
%struct.bnx2x_nig_brb_pfc_port_params = type { i32, i32, i32, i32, i64, i32, i32, i32* }

@FEATURE_CONFIG_PFC_ENABLED = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"updating pfc nig parameters\0A\00", align 1
@NIG_REG_LLH1_XCM_MASK = common dso_local global i32 0, align 4
@NIG_REG_LLH0_XCM_MASK = common dso_local global i32 0, align 4
@NIG_LLH1_XCM_MASK_REG_LLH1_XCM_MASK_BCN = common dso_local global i32 0, align 4
@NIG_LLH0_XCM_MASK_REG_LLH0_XCM_MASK_BCN = common dso_local global i32 0, align 4
@NIG_REG_BRB1_PAUSE_IN_EN = common dso_local global i32 0, align 4
@NIG_REG_BRB0_PAUSE_IN_EN = common dso_local global i32 0, align 4
@NIG_REG_LLFC_OUT_EN_1 = common dso_local global i32 0, align 4
@NIG_REG_LLFC_OUT_EN_0 = common dso_local global i32 0, align 4
@NIG_REG_LLFC_ENABLE_1 = common dso_local global i32 0, align 4
@NIG_REG_LLFC_ENABLE_0 = common dso_local global i32 0, align 4
@NIG_REG_PAUSE_ENABLE_1 = common dso_local global i32 0, align 4
@NIG_REG_PAUSE_ENABLE_0 = common dso_local global i32 0, align 4
@NIG_REG_PPP_ENABLE_1 = common dso_local global i32 0, align 4
@NIG_REG_PPP_ENABLE_0 = common dso_local global i32 0, align 4
@NIG_REG_LLFC_EGRESS_SRC_ENABLE_1 = common dso_local global i32 0, align 4
@NIG_REG_LLFC_EGRESS_SRC_ENABLE_0 = common dso_local global i32 0, align 4
@NIG_REG_XCM1_OUT_EN = common dso_local global i32 0, align 4
@NIG_REG_XCM0_OUT_EN = common dso_local global i32 0, align 4
@NIG_REG_P1_HWPFC_ENABLE = common dso_local global i32 0, align 4
@NIG_REG_P0_HWPFC_ENABLE = common dso_local global i32 0, align 4
@NIG_REG_LLFC_HIGH_PRIORITY_CLASSES_1 = common dso_local global i32 0, align 4
@NIG_REG_LLFC_HIGH_PRIORITY_CLASSES_0 = common dso_local global i32 0, align 4
@NIG_REG_LLFC_LOW_PRIORITY_CLASSES_1 = common dso_local global i32 0, align 4
@NIG_REG_LLFC_LOW_PRIORITY_CLASSES_0 = common dso_local global i32 0, align 4
@NIG_REG_P1_PKT_PRIORITY_TO_COS = common dso_local global i32 0, align 4
@NIG_REG_P0_PKT_PRIORITY_TO_COS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_params*, %struct.link_vars*, %struct.bnx2x_nig_brb_pfc_port_params*)* @bnx2x_update_pfc_nig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_update_pfc_nig(%struct.link_params* %0, %struct.link_vars* %1, %struct.bnx2x_nig_brb_pfc_port_params* %2) #0 {
  %4 = alloca %struct.link_params*, align 8
  %5 = alloca %struct.link_vars*, align 8
  %6 = alloca %struct.bnx2x_nig_brb_pfc_port_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.bnx2x*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.link_params* %0, %struct.link_params** %4, align 8
  store %struct.link_vars* %1, %struct.link_vars** %5, align 8
  store %struct.bnx2x_nig_brb_pfc_port_params* %2, %struct.bnx2x_nig_brb_pfc_port_params** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %19 = load %struct.link_params*, %struct.link_params** %4, align 8
  %20 = getelementptr inbounds %struct.link_params, %struct.link_params* %19, i32 0, i32 2
  %21 = load %struct.bnx2x*, %struct.bnx2x** %20, align 8
  store %struct.bnx2x* %21, %struct.bnx2x** %15, align 8
  %22 = load %struct.link_params*, %struct.link_params** %4, align 8
  %23 = getelementptr inbounds %struct.link_params, %struct.link_params* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %16, align 8
  %25 = load %struct.link_params*, %struct.link_params** %4, align 8
  %26 = getelementptr inbounds %struct.link_params, %struct.link_params* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @FEATURE_CONFIG_PFC_ENABLED, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* @NETIF_MSG_LINK, align 4
  %31 = call i32 @DP(i32 %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.bnx2x*, %struct.bnx2x** %15, align 8
  %33 = load i64, i64* %16, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* @NIG_REG_LLH1_XCM_MASK, align 4
  br label %39

37:                                               ; preds = %3
  %38 = load i32, i32* @NIG_REG_LLH0_XCM_MASK, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = call i32 @REG_RD(%struct.bnx2x* %32, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %17, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %39
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %45 = load %struct.bnx2x*, %struct.bnx2x** %15, align 8
  %46 = call i64 @CHIP_IS_E3(%struct.bnx2x* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  br label %50

49:                                               ; preds = %44
  store i32 1, i32* %8, align 4
  br label %50

50:                                               ; preds = %49, %48
  %51 = load i64, i64* %16, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* @NIG_LLH1_XCM_MASK_REG_LLH1_XCM_MASK_BCN, align 4
  br label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @NIG_LLH0_XCM_MASK_REG_LLH0_XCM_MASK_BCN, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %7, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %7, align 4
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %87

62:                                               ; preds = %39
  %63 = load %struct.bnx2x_nig_brb_pfc_port_params*, %struct.bnx2x_nig_brb_pfc_port_params** %6, align 8
  %64 = icmp ne %struct.bnx2x_nig_brb_pfc_port_params* %63, null
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = load %struct.bnx2x_nig_brb_pfc_port_params*, %struct.bnx2x_nig_brb_pfc_port_params** %6, align 8
  %67 = getelementptr inbounds %struct.bnx2x_nig_brb_pfc_port_params, %struct.bnx2x_nig_brb_pfc_port_params* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %10, align 4
  %69 = load %struct.bnx2x_nig_brb_pfc_port_params*, %struct.bnx2x_nig_brb_pfc_port_params** %6, align 8
  %70 = getelementptr inbounds %struct.bnx2x_nig_brb_pfc_port_params, %struct.bnx2x_nig_brb_pfc_port_params* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %11, align 4
  %72 = load %struct.bnx2x_nig_brb_pfc_port_params*, %struct.bnx2x_nig_brb_pfc_port_params** %6, align 8
  %73 = getelementptr inbounds %struct.bnx2x_nig_brb_pfc_port_params, %struct.bnx2x_nig_brb_pfc_port_params* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %9, align 4
  br label %76

75:                                               ; preds = %62
  store i32 1, i32* %9, align 4
  br label %76

76:                                               ; preds = %75, %65
  %77 = load i64, i64* %16, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i32, i32* @NIG_LLH1_XCM_MASK_REG_LLH1_XCM_MASK_BCN, align 4
  br label %83

81:                                               ; preds = %76
  %82 = load i32, i32* @NIG_LLH0_XCM_MASK_REG_LLH0_XCM_MASK_BCN, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  %85 = load i32, i32* %7, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %7, align 4
  store i32 1, i32* %12, align 4
  br label %87

87:                                               ; preds = %83, %57
  %88 = load %struct.bnx2x*, %struct.bnx2x** %15, align 8
  %89 = call i64 @CHIP_IS_E3(%struct.bnx2x* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %87
  %92 = load %struct.bnx2x*, %struct.bnx2x** %15, align 8
  %93 = load i64, i64* %16, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i32, i32* @NIG_REG_BRB1_PAUSE_IN_EN, align 4
  br label %99

97:                                               ; preds = %91
  %98 = load i32, i32* @NIG_REG_BRB0_PAUSE_IN_EN, align 4
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi i32 [ %96, %95 ], [ %98, %97 ]
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @REG_WR(%struct.bnx2x* %92, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %99, %87
  %104 = load %struct.bnx2x*, %struct.bnx2x** %15, align 8
  %105 = load i64, i64* %16, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load i32, i32* @NIG_REG_LLFC_OUT_EN_1, align 4
  br label %111

109:                                              ; preds = %103
  %110 = load i32, i32* @NIG_REG_LLFC_OUT_EN_0, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @REG_WR(%struct.bnx2x* %104, i32 %112, i32 %113)
  %115 = load %struct.bnx2x*, %struct.bnx2x** %15, align 8
  %116 = load i64, i64* %16, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = load i32, i32* @NIG_REG_LLFC_ENABLE_1, align 4
  br label %122

120:                                              ; preds = %111
  %121 = load i32, i32* @NIG_REG_LLFC_ENABLE_0, align 4
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi i32 [ %119, %118 ], [ %121, %120 ]
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @REG_WR(%struct.bnx2x* %115, i32 %123, i32 %124)
  %126 = load %struct.bnx2x*, %struct.bnx2x** %15, align 8
  %127 = load i64, i64* %16, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %122
  %130 = load i32, i32* @NIG_REG_PAUSE_ENABLE_1, align 4
  br label %133

131:                                              ; preds = %122
  %132 = load i32, i32* @NIG_REG_PAUSE_ENABLE_0, align 4
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi i32 [ %130, %129 ], [ %132, %131 ]
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @REG_WR(%struct.bnx2x* %126, i32 %134, i32 %135)
  %137 = load %struct.bnx2x*, %struct.bnx2x** %15, align 8
  %138 = load i64, i64* %16, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %133
  %141 = load i32, i32* @NIG_REG_PPP_ENABLE_1, align 4
  br label %144

142:                                              ; preds = %133
  %143 = load i32, i32* @NIG_REG_PPP_ENABLE_0, align 4
  br label %144

144:                                              ; preds = %142, %140
  %145 = phi i32 [ %141, %140 ], [ %143, %142 ]
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @REG_WR(%struct.bnx2x* %137, i32 %145, i32 %146)
  %148 = load %struct.bnx2x*, %struct.bnx2x** %15, align 8
  %149 = load i64, i64* %16, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %144
  %152 = load i32, i32* @NIG_REG_LLH1_XCM_MASK, align 4
  br label %155

153:                                              ; preds = %144
  %154 = load i32, i32* @NIG_REG_LLH0_XCM_MASK, align 4
  br label %155

155:                                              ; preds = %153, %151
  %156 = phi i32 [ %152, %151 ], [ %154, %153 ]
  %157 = load i32, i32* %7, align 4
  %158 = call i32 @REG_WR(%struct.bnx2x* %148, i32 %156, i32 %157)
  %159 = load %struct.bnx2x*, %struct.bnx2x** %15, align 8
  %160 = load i64, i64* %16, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %155
  %163 = load i32, i32* @NIG_REG_LLFC_EGRESS_SRC_ENABLE_1, align 4
  br label %166

164:                                              ; preds = %155
  %165 = load i32, i32* @NIG_REG_LLFC_EGRESS_SRC_ENABLE_0, align 4
  br label %166

166:                                              ; preds = %164, %162
  %167 = phi i32 [ %163, %162 ], [ %165, %164 ]
  %168 = call i32 @REG_WR(%struct.bnx2x* %159, i32 %167, i32 7)
  %169 = load %struct.bnx2x*, %struct.bnx2x** %15, align 8
  %170 = load i64, i64* %16, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %166
  %173 = load i32, i32* @NIG_REG_XCM1_OUT_EN, align 4
  br label %176

174:                                              ; preds = %166
  %175 = load i32, i32* @NIG_REG_XCM0_OUT_EN, align 4
  br label %176

176:                                              ; preds = %174, %172
  %177 = phi i32 [ %173, %172 ], [ %175, %174 ]
  %178 = load i32, i32* %12, align 4
  %179 = call i32 @REG_WR(%struct.bnx2x* %169, i32 %177, i32 %178)
  %180 = load %struct.bnx2x*, %struct.bnx2x** %15, align 8
  %181 = load i64, i64* %16, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %176
  %184 = load i32, i32* @NIG_REG_P1_HWPFC_ENABLE, align 4
  br label %187

185:                                              ; preds = %176
  %186 = load i32, i32* @NIG_REG_P0_HWPFC_ENABLE, align 4
  br label %187

187:                                              ; preds = %185, %183
  %188 = phi i32 [ %184, %183 ], [ %186, %185 ]
  %189 = load i32, i32* %13, align 4
  %190 = call i32 @REG_WR(%struct.bnx2x* %180, i32 %188, i32 %189)
  %191 = load %struct.bnx2x_nig_brb_pfc_port_params*, %struct.bnx2x_nig_brb_pfc_port_params** %6, align 8
  %192 = icmp ne %struct.bnx2x_nig_brb_pfc_port_params* %191, null
  br i1 %192, label %193, label %244

193:                                              ; preds = %187
  store i64 0, i64* %18, align 8
  %194 = load %struct.bnx2x_nig_brb_pfc_port_params*, %struct.bnx2x_nig_brb_pfc_port_params** %6, align 8
  %195 = getelementptr inbounds %struct.bnx2x_nig_brb_pfc_port_params, %struct.bnx2x_nig_brb_pfc_port_params* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  store i32 %196, i32* %14, align 4
  store i64 0, i64* %18, align 8
  br label %197

197:                                              ; preds = %214, %193
  %198 = load i64, i64* %18, align 8
  %199 = load %struct.bnx2x_nig_brb_pfc_port_params*, %struct.bnx2x_nig_brb_pfc_port_params** %6, align 8
  %200 = getelementptr inbounds %struct.bnx2x_nig_brb_pfc_port_params, %struct.bnx2x_nig_brb_pfc_port_params* %199, i32 0, i32 4
  %201 = load i64, i64* %200, align 8
  %202 = icmp ult i64 %198, %201
  br i1 %202, label %203, label %217

203:                                              ; preds = %197
  %204 = load %struct.bnx2x*, %struct.bnx2x** %15, align 8
  %205 = load i64, i64* %18, align 8
  %206 = load %struct.bnx2x_nig_brb_pfc_port_params*, %struct.bnx2x_nig_brb_pfc_port_params** %6, align 8
  %207 = getelementptr inbounds %struct.bnx2x_nig_brb_pfc_port_params, %struct.bnx2x_nig_brb_pfc_port_params* %206, i32 0, i32 7
  %208 = load i32*, i32** %207, align 8
  %209 = load i64, i64* %18, align 8
  %210 = getelementptr inbounds i32, i32* %208, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = load i64, i64* %16, align 8
  %213 = call i32 @bnx2x_pfc_nig_rx_priority_mask(%struct.bnx2x* %204, i64 %205, i32 %211, i64 %212)
  br label %214

214:                                              ; preds = %203
  %215 = load i64, i64* %18, align 8
  %216 = add i64 %215, 1
  store i64 %216, i64* %18, align 8
  br label %197

217:                                              ; preds = %197
  %218 = load %struct.bnx2x*, %struct.bnx2x** %15, align 8
  %219 = load i64, i64* %16, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %217
  %222 = load i32, i32* @NIG_REG_LLFC_HIGH_PRIORITY_CLASSES_1, align 4
  br label %225

223:                                              ; preds = %217
  %224 = load i32, i32* @NIG_REG_LLFC_HIGH_PRIORITY_CLASSES_0, align 4
  br label %225

225:                                              ; preds = %223, %221
  %226 = phi i32 [ %222, %221 ], [ %224, %223 ]
  %227 = load %struct.bnx2x_nig_brb_pfc_port_params*, %struct.bnx2x_nig_brb_pfc_port_params** %6, align 8
  %228 = getelementptr inbounds %struct.bnx2x_nig_brb_pfc_port_params, %struct.bnx2x_nig_brb_pfc_port_params* %227, i32 0, i32 5
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @REG_WR(%struct.bnx2x* %218, i32 %226, i32 %229)
  %231 = load %struct.bnx2x*, %struct.bnx2x** %15, align 8
  %232 = load i64, i64* %16, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %225
  %235 = load i32, i32* @NIG_REG_LLFC_LOW_PRIORITY_CLASSES_1, align 4
  br label %238

236:                                              ; preds = %225
  %237 = load i32, i32* @NIG_REG_LLFC_LOW_PRIORITY_CLASSES_0, align 4
  br label %238

238:                                              ; preds = %236, %234
  %239 = phi i32 [ %235, %234 ], [ %237, %236 ]
  %240 = load %struct.bnx2x_nig_brb_pfc_port_params*, %struct.bnx2x_nig_brb_pfc_port_params** %6, align 8
  %241 = getelementptr inbounds %struct.bnx2x_nig_brb_pfc_port_params, %struct.bnx2x_nig_brb_pfc_port_params* %240, i32 0, i32 6
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @REG_WR(%struct.bnx2x* %231, i32 %239, i32 %242)
  br label %244

244:                                              ; preds = %238, %187
  %245 = load %struct.bnx2x*, %struct.bnx2x** %15, align 8
  %246 = load i64, i64* %16, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %244
  %249 = load i32, i32* @NIG_REG_P1_PKT_PRIORITY_TO_COS, align 4
  br label %252

250:                                              ; preds = %244
  %251 = load i32, i32* @NIG_REG_P0_PKT_PRIORITY_TO_COS, align 4
  br label %252

252:                                              ; preds = %250, %248
  %253 = phi i32 [ %249, %248 ], [ %251, %250 ]
  %254 = load i32, i32* %14, align 4
  %255 = call i32 @REG_WR(%struct.bnx2x* %245, i32 %253, i32 %254)
  ret void
}

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i64 @CHIP_IS_E3(%struct.bnx2x*) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_pfc_nig_rx_priority_mask(%struct.bnx2x*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

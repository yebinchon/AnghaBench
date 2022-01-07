; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_config_fc_after_link_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_config_fc_after_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, i64, i8*, i64, i64, i64 }

@.str = private unnamed_addr constant [30 x i8] c"e1000_config_fc_after_link_up\00", align 1
@e1000_media_type_fiber = common dso_local global i64 0, align 8
@e1000_media_type_internal_serdes = common dso_local global i64 0, align 8
@e1000_media_type_copper = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Error forcing flow control settings\0A\00", align 1
@PHY_STATUS = common dso_local global i32 0, align 4
@MII_SR_AUTONEG_COMPLETE = common dso_local global i32 0, align 4
@PHY_AUTONEG_ADV = common dso_local global i32 0, align 4
@PHY_LP_ABILITY = common dso_local global i32 0, align 4
@NWAY_AR_PAUSE = common dso_local global i32 0, align 4
@NWAY_LPAR_PAUSE = common dso_local global i32 0, align 4
@E1000_FC_FULL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Flow Control = FULL.\0A\00", align 1
@E1000_FC_RX_PAUSE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"Flow Control = RX PAUSE frames only.\0A\00", align 1
@NWAY_AR_ASM_DIR = common dso_local global i32 0, align 4
@NWAY_LPAR_ASM_DIR = common dso_local global i32 0, align 4
@E1000_FC_TX_PAUSE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"Flow Control = TX PAUSE frames only.\0A\00", align 1
@E1000_FC_NONE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"Flow Control = NONE.\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Error getting link speed and duplex\0A\00", align 1
@HALF_DUPLEX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [44 x i8] c"Copper PHY and Auto Neg has not completed.\0A\00", align 1
@E1000_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_config_fc_after_link_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_config_fc_after_link_up(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %10 = call i32 @e_dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %12 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @e1000_media_type_fiber, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %18 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %43, label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %23 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @e1000_media_type_internal_serdes, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %29 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %27, %21
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %34 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @e1000_media_type_copper, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %32
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %40 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %38, %27, %16
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %45 = call i64 @e1000_force_mac_fc(%struct.e1000_hw* %44)
  store i64 %45, i64* %4, align 8
  %46 = load i64, i64* %4, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = call i32 @e_dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i64, i64* %4, align 8
  store i64 %50, i64* %2, align 8
  br label %241

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %38, %32
  %53 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %54 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @e1000_media_type_copper, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %239

58:                                               ; preds = %52
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %60 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %239

63:                                               ; preds = %58
  %64 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %65 = load i32, i32* @PHY_STATUS, align 4
  %66 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %64, i32 %65, i32* %5)
  store i64 %66, i64* %4, align 8
  %67 = load i64, i64* %4, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i64, i64* %4, align 8
  store i64 %70, i64* %2, align 8
  br label %241

71:                                               ; preds = %63
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %73 = load i32, i32* @PHY_STATUS, align 4
  %74 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %72, i32 %73, i32* %5)
  store i64 %74, i64* %4, align 8
  %75 = load i64, i64* %4, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i64, i64* %4, align 8
  store i64 %78, i64* %2, align 8
  br label %241

79:                                               ; preds = %71
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @MII_SR_AUTONEG_COMPLETE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %236

84:                                               ; preds = %79
  %85 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %86 = load i32, i32* @PHY_AUTONEG_ADV, align 4
  %87 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %85, i32 %86, i32* %6)
  store i64 %87, i64* %4, align 8
  %88 = load i64, i64* %4, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i64, i64* %4, align 8
  store i64 %91, i64* %2, align 8
  br label %241

92:                                               ; preds = %84
  %93 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %94 = load i32, i32* @PHY_LP_ABILITY, align 4
  %95 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %93, i32 %94, i32* %7)
  store i64 %95, i64* %4, align 8
  %96 = load i64, i64* %4, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i64, i64* %4, align 8
  store i64 %99, i64* %2, align 8
  br label %241

100:                                              ; preds = %92
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @NWAY_AR_PAUSE, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %128

105:                                              ; preds = %100
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @NWAY_LPAR_PAUSE, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %128

110:                                              ; preds = %105
  %111 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %112 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @E1000_FC_FULL, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %110
  %117 = load i64, i64* @E1000_FC_FULL, align 8
  %118 = inttoptr i64 %117 to i8*
  %119 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %120 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %119, i32 0, i32 2
  store i8* %118, i8** %120, align 8
  %121 = call i32 @e_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %127

122:                                              ; preds = %110
  %123 = load i8*, i8** @E1000_FC_RX_PAUSE, align 8
  %124 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %125 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %124, i32 0, i32 2
  store i8* %123, i8** %125, align 8
  %126 = call i32 @e_dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %127

127:                                              ; preds = %122, %116
  br label %210

128:                                              ; preds = %105, %100
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @NWAY_AR_PAUSE, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %154, label %133

133:                                              ; preds = %128
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* @NWAY_AR_ASM_DIR, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %154

138:                                              ; preds = %133
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @NWAY_LPAR_PAUSE, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %138
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* @NWAY_LPAR_ASM_DIR, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %143
  %149 = load i64, i64* @E1000_FC_TX_PAUSE, align 8
  %150 = inttoptr i64 %149 to i8*
  %151 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %152 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %151, i32 0, i32 2
  store i8* %150, i8** %152, align 8
  %153 = call i32 @e_dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %209

154:                                              ; preds = %143, %138, %133, %128
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* @NWAY_AR_PAUSE, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %179

159:                                              ; preds = %154
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* @NWAY_AR_ASM_DIR, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %179

164:                                              ; preds = %159
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* @NWAY_LPAR_PAUSE, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %179, label %169

169:                                              ; preds = %164
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* @NWAY_LPAR_ASM_DIR, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %169
  %175 = load i8*, i8** @E1000_FC_RX_PAUSE, align 8
  %176 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %177 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %176, i32 0, i32 2
  store i8* %175, i8** %177, align 8
  %178 = call i32 @e_dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %208

179:                                              ; preds = %169, %164, %159, %154
  %180 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %181 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @E1000_FC_NONE, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %196, label %185

185:                                              ; preds = %179
  %186 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %187 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @E1000_FC_TX_PAUSE, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %196, label %191

191:                                              ; preds = %185
  %192 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %193 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %191, %185, %179
  %197 = load i64, i64* @E1000_FC_NONE, align 8
  %198 = inttoptr i64 %197 to i8*
  %199 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %200 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %199, i32 0, i32 2
  store i8* %198, i8** %200, align 8
  %201 = call i32 @e_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %207

202:                                              ; preds = %191
  %203 = load i8*, i8** @E1000_FC_RX_PAUSE, align 8
  %204 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %205 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %204, i32 0, i32 2
  store i8* %203, i8** %205, align 8
  %206 = call i32 @e_dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %207

207:                                              ; preds = %202, %196
  br label %208

208:                                              ; preds = %207, %174
  br label %209

209:                                              ; preds = %208, %148
  br label %210

210:                                              ; preds = %209, %127
  %211 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %212 = call i64 @e1000_get_speed_and_duplex(%struct.e1000_hw* %211, i32* %8, i32* %9)
  store i64 %212, i64* %4, align 8
  %213 = load i64, i64* %4, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %210
  %216 = call i32 @e_dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %217 = load i64, i64* %4, align 8
  store i64 %217, i64* %2, align 8
  br label %241

218:                                              ; preds = %210
  %219 = load i32, i32* %9, align 4
  %220 = load i32, i32* @HALF_DUPLEX, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %227

222:                                              ; preds = %218
  %223 = load i64, i64* @E1000_FC_NONE, align 8
  %224 = inttoptr i64 %223 to i8*
  %225 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %226 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %225, i32 0, i32 2
  store i8* %224, i8** %226, align 8
  br label %227

227:                                              ; preds = %222, %218
  %228 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %229 = call i64 @e1000_force_mac_fc(%struct.e1000_hw* %228)
  store i64 %229, i64* %4, align 8
  %230 = load i64, i64* %4, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %227
  %233 = call i32 @e_dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %234 = load i64, i64* %4, align 8
  store i64 %234, i64* %2, align 8
  br label %241

235:                                              ; preds = %227
  br label %238

236:                                              ; preds = %79
  %237 = call i32 @e_dbg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  br label %238

238:                                              ; preds = %236, %235
  br label %239

239:                                              ; preds = %238, %58, %52
  %240 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %240, i64* %2, align 8
  br label %241

241:                                              ; preds = %239, %232, %215, %98, %90, %77, %69, %48
  %242 = load i64, i64* %2, align 8
  ret i64 %242
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i64 @e1000_force_mac_fc(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000_get_speed_and_duplex(%struct.e1000_hw*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

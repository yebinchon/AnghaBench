; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ethtool.c_e1000_integrated_phy_loopback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ethtool.c_e1000_integrated_phy_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.2*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque
%struct.TYPE_4__ = type { i64 }

@e1000_phy_ife = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_SPD_SEL = common dso_local global i32 0, align 4
@E1000_CTRL_FRCSPD = common dso_local global i32 0, align 4
@E1000_CTRL_FRCDPX = common dso_local global i32 0, align 4
@E1000_CTRL_SPD_100 = common dso_local global i32 0, align 4
@E1000_CTRL_FD = common dso_local global i32 0, align 4
@M88E1000_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@GG82563_PHY_KMRN_MODE_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Cannot setup 1Gbps loopback.\0A\00", align 1
@I82577_PHY_LBK_CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_SPD_1000 = common dso_local global i32 0, align 4
@FLAG_IS_ICH = common dso_local global i32 0, align 4
@E1000_CTRL_SLU = common dso_local global i32 0, align 4
@e1000_media_type_copper = common dso_local global i64 0, align 8
@E1000_CTRL_ILOS = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_FD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_adapter*)* @e1000_integrated_phy_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_integrated_phy_loopback(%struct.e1000_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_adapter*, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %3, align 8
  %8 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %8, i32 0, i32 1
  store %struct.e1000_hw* %9, %struct.e1000_hw** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @e1000_phy_ife, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %1
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %21 = load i32, i32* @MII_BMCR, align 4
  %22 = call i32 @e1e_wphy(%struct.e1000_hw* %20, i32 %21, i32 24832)
  %23 = load i32, i32* @CTRL, align 4
  %24 = call i32 @er32(i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @E1000_CTRL_SPD_SEL, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @E1000_CTRL_FRCSPD, align 4
  %30 = load i32, i32* @E1000_CTRL_FRCDPX, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @E1000_CTRL_SPD_100, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @E1000_CTRL_FD, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* @CTRL, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @ew32(i32 %38, i32 %39)
  %41 = call i32 (...) @e1e_flush()
  %42 = call i32 @usleep_range(i32 500, i32 1000)
  store i32 0, i32* %2, align 4
  br label %235

43:                                               ; preds = %1
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %45 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %160 [
    i32 128, label %48
    i32 129, label %58
    i32 130, label %62
    i32 133, label %115
    i32 132, label %115
    i32 131, label %140
  ]

48:                                               ; preds = %43
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %50 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %51 = call i32 @e1e_wphy(%struct.e1000_hw* %49, i32 %50, i32 2056)
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %53 = load i32, i32* @MII_BMCR, align 4
  %54 = call i32 @e1e_wphy(%struct.e1000_hw* %52, i32 %53, i32 37184)
  %55 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %56 = load i32, i32* @MII_BMCR, align 4
  %57 = call i32 @e1e_wphy(%struct.e1000_hw* %55, i32 %56, i32 33088)
  br label %161

58:                                               ; preds = %43
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %60 = load i32, i32* @GG82563_PHY_KMRN_MODE_CTRL, align 4
  %61 = call i32 @e1e_wphy(%struct.e1000_hw* %59, i32 %60, i32 460)
  br label %161

62:                                               ; preds = %43
  %63 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %64 = call i32 @PHY_REG(i32 2, i32 21)
  %65 = call i32 @e1e_rphy(%struct.e1000_hw* %63, i32 %64, i32* %6)
  %66 = load i32, i32* %6, align 4
  %67 = and i32 %66, -8
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, 6
  store i32 %69, i32* %6, align 4
  %70 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %71 = call i32 @PHY_REG(i32 2, i32 21)
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @e1e_wphy(%struct.e1000_hw* %70, i32 %71, i32 %72)
  %74 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %75 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  %78 = load i32 (%struct.e1000_hw.2*)*, i32 (%struct.e1000_hw.2*)** %77, align 8
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %80 = bitcast %struct.e1000_hw* %79 to %struct.e1000_hw.2*
  %81 = call i32 %78(%struct.e1000_hw.2* %80)
  %82 = call i32 @usleep_range(i32 1000, i32 2000)
  %83 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %84 = call i32 @PHY_REG(i32 769, i32 16)
  %85 = call i32 @e1e_rphy(%struct.e1000_hw* %83, i32 %84, i32* %6)
  %86 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %87 = call i32 @PHY_REG(i32 769, i32 16)
  %88 = load i32, i32* %6, align 4
  %89 = or i32 %88, 12
  %90 = call i32 @e1e_wphy(%struct.e1000_hw* %86, i32 %87, i32 %89)
  %91 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %92 = call i32 @PHY_REG(i32 776, i32 16)
  %93 = call i32 @e1e_rphy(%struct.e1000_hw* %91, i32 %92, i32* %6)
  %94 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %95 = call i32 @PHY_REG(i32 776, i32 16)
  %96 = load i32, i32* %6, align 4
  %97 = or i32 %96, 64
  %98 = call i32 @e1e_wphy(%struct.e1000_hw* %94, i32 %95, i32 %97)
  %99 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %100 = call i32 @PHY_REG(i32 769, i32 16)
  %101 = call i32 @e1e_rphy(%struct.e1000_hw* %99, i32 %100, i32* %6)
  %102 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %103 = call i32 @PHY_REG(i32 769, i32 16)
  %104 = load i32, i32* %6, align 4
  %105 = or i32 %104, 64
  %106 = call i32 @e1e_wphy(%struct.e1000_hw* %102, i32 %103, i32 %105)
  %107 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %108 = call i32 @PHY_REG(i32 769, i32 20)
  %109 = call i32 @e1e_rphy(%struct.e1000_hw* %107, i32 %108, i32* %6)
  %110 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %111 = call i32 @PHY_REG(i32 769, i32 20)
  %112 = load i32, i32* %6, align 4
  %113 = or i32 %112, 1024
  %114 = call i32 @e1e_wphy(%struct.e1000_hw* %110, i32 %111, i32 %113)
  br label %161

115:                                              ; preds = %43, %43
  %116 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %117 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %119, align 8
  %121 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %122 = bitcast %struct.e1000_hw* %121 to %struct.e1000_hw.0*
  %123 = call i32 %120(%struct.e1000_hw.0* %122)
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %115
  %127 = call i32 @e_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %128 = load i32, i32* %7, align 4
  store i32 %128, i32* %2, align 4
  br label %235

129:                                              ; preds = %115
  %130 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %131 = call i32 @e1000_configure_k1_ich8lan(%struct.e1000_hw* %130, i32 0)
  %132 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %133 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  %136 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %135, align 8
  %137 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %138 = bitcast %struct.e1000_hw* %137 to %struct.e1000_hw.1*
  %139 = call i32 %136(%struct.e1000_hw.1* %138)
  br label %161

140:                                              ; preds = %43
  %141 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %142 = call i32 @PHY_REG(i32 0, i32 21)
  %143 = call i32 @e1e_rphy(%struct.e1000_hw* %141, i32 %142, i32* %6)
  %144 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %145 = call i32 @PHY_REG(i32 0, i32 21)
  %146 = load i32, i32* %6, align 4
  %147 = and i32 %146, -9
  %148 = call i32 @e1e_wphy(%struct.e1000_hw* %144, i32 %145, i32 %147)
  %149 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %150 = call i32 @PHY_REG(i32 776, i32 18)
  %151 = call i32 @e1e_rphy(%struct.e1000_hw* %149, i32 %150, i32* %6)
  %152 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %153 = call i32 @PHY_REG(i32 776, i32 18)
  %154 = load i32, i32* %6, align 4
  %155 = or i32 %154, 1
  %156 = call i32 @e1e_wphy(%struct.e1000_hw* %152, i32 %153, i32 %155)
  %157 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %158 = load i32, i32* @I82577_PHY_LBK_CTRL, align 4
  %159 = call i32 @e1e_wphy(%struct.e1000_hw* %157, i32 %158, i32 32769)
  br label %161

160:                                              ; preds = %43
  br label %161

161:                                              ; preds = %160, %140, %129, %62, %58, %48
  %162 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %163 = load i32, i32* @MII_BMCR, align 4
  %164 = call i32 @e1e_wphy(%struct.e1000_hw* %162, i32 %163, i32 16704)
  %165 = call i32 @msleep(i32 250)
  %166 = load i32, i32* @CTRL, align 4
  %167 = call i32 @er32(i32 %166)
  store i32 %167, i32* %5, align 4
  %168 = load i32, i32* @E1000_CTRL_SPD_SEL, align 4
  %169 = xor i32 %168, -1
  %170 = load i32, i32* %5, align 4
  %171 = and i32 %170, %169
  store i32 %171, i32* %5, align 4
  %172 = load i32, i32* @E1000_CTRL_FRCSPD, align 4
  %173 = load i32, i32* @E1000_CTRL_FRCDPX, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* @E1000_CTRL_SPD_1000, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* @E1000_CTRL_FD, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* %5, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %5, align 4
  %181 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %182 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @FLAG_IS_ICH, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %161
  %188 = load i32, i32* @E1000_CTRL_SLU, align 4
  %189 = load i32, i32* %5, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %5, align 4
  br label %191

191:                                              ; preds = %187, %161
  %192 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %193 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @e1000_media_type_copper, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %208

198:                                              ; preds = %191
  %199 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %200 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = icmp eq i32 %202, 128
  br i1 %203, label %204, label %208

204:                                              ; preds = %198
  %205 = load i32, i32* @E1000_CTRL_ILOS, align 4
  %206 = load i32, i32* %5, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %5, align 4
  br label %221

208:                                              ; preds = %198, %191
  %209 = load i32, i32* @STATUS, align 4
  %210 = call i32 @er32(i32 %209)
  %211 = load i32, i32* @E1000_STATUS_FD, align 4
  %212 = and i32 %210, %211
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %208
  %215 = load i32, i32* @E1000_CTRL_ILOS, align 4
  %216 = load i32, i32* @E1000_CTRL_SLU, align 4
  %217 = or i32 %215, %216
  %218 = load i32, i32* %5, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %5, align 4
  br label %220

220:                                              ; preds = %214, %208
  br label %221

221:                                              ; preds = %220, %204
  %222 = load i32, i32* @CTRL, align 4
  %223 = load i32, i32* %5, align 4
  %224 = call i32 @ew32(i32 %222, i32 %223)
  %225 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %226 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = icmp eq i32 %228, 128
  br i1 %229, label %230, label %233

230:                                              ; preds = %221
  %231 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %232 = call i32 @e1000_phy_disable_receiver(%struct.e1000_adapter* %231)
  br label %233

233:                                              ; preds = %230, %221
  %234 = call i32 @usleep_range(i32 500, i32 1000)
  store i32 0, i32* %2, align 4
  br label %235

235:                                              ; preds = %233, %126, %19
  %236 = load i32, i32* %2, align 4
  ret i32 %236
}

declare dso_local i32 @e1e_wphy(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e1e_flush(...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @e1e_rphy(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @PHY_REG(i32, i32) #1

declare dso_local i32 @e_err(i8*) #1

declare dso_local i32 @e1000_configure_k1_ich8lan(%struct.e1000_hw*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @e1000_phy_disable_receiver(%struct.e1000_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

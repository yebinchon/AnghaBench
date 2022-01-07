; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_ethtool.c_e1000_get_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_ethtool.c_e1000_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_regs = type { i32 }
%struct.e1000_adapter = type { %struct.TYPE_2__, %struct.e1000_hw }
%struct.TYPE_2__ = type { i64, i64 }
%struct.e1000_hw = type { i32, i32, i64, i64, i64 }

@E1000_REGS_LEN = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@RCTL = common dso_local global i32 0, align 4
@RDLEN = common dso_local global i32 0, align 4
@RDH = common dso_local global i32 0, align 4
@RDT = common dso_local global i32 0, align 4
@RDTR = common dso_local global i32 0, align 4
@TCTL = common dso_local global i32 0, align 4
@TDLEN = common dso_local global i32 0, align 4
@TDH = common dso_local global i32 0, align 4
@TDT = common dso_local global i32 0, align 4
@TIDV = common dso_local global i32 0, align 4
@e1000_phy_igp = common dso_local global i64 0, align 8
@IGP01E1000_PHY_PAGE_SELECT = common dso_local global i32 0, align 4
@IGP01E1000_PHY_AGC_A = common dso_local global i32 0, align 4
@IGP01E1000_PHY_AGC_B = common dso_local global i32 0, align 4
@IGP01E1000_PHY_AGC_C = common dso_local global i32 0, align 4
@IGP01E1000_PHY_AGC_D = common dso_local global i32 0, align 4
@IGP01E1000_PHY_PORT_STATUS = common dso_local global i32 0, align 4
@IGP01E1000_PHY_PCS_INIT_REG = common dso_local global i32 0, align 4
@M88E1000_PHY_SPEC_STATUS = common dso_local global i32 0, align 4
@M88E1000_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@PHY_1000T_STATUS = common dso_local global i32 0, align 4
@e1000_82540 = common dso_local global i64 0, align 8
@e1000_media_type_copper = common dso_local global i64 0, align 8
@MANC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @e1000_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_get_regs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.e1000_adapter*, align 8
  %8 = alloca %struct.e1000_hw*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.e1000_adapter* %12, %struct.e1000_adapter** %7, align 8
  %13 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %14 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %13, i32 0, i32 1
  store %struct.e1000_hw* %14, %struct.e1000_hw** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to i64*
  store i64* %16, i64** %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* @E1000_REGS_LEN, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @memset(i8* %17, i32 0, i32 %21)
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %24 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = shl i32 %25, 16
  %27 = or i32 16777216, %26
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %29 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %27, %30
  %32 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %33 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @CTRL, align 4
  %35 = call i64 @er32(i32 %34)
  %36 = load i64*, i64** %9, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  store i64 %35, i64* %37, align 8
  %38 = load i32, i32* @STATUS, align 4
  %39 = call i64 @er32(i32 %38)
  %40 = load i64*, i64** %9, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  store i64 %39, i64* %41, align 8
  %42 = load i32, i32* @RCTL, align 4
  %43 = call i64 @er32(i32 %42)
  %44 = load i64*, i64** %9, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 2
  store i64 %43, i64* %45, align 8
  %46 = load i32, i32* @RDLEN, align 4
  %47 = call i64 @er32(i32 %46)
  %48 = load i64*, i64** %9, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 3
  store i64 %47, i64* %49, align 8
  %50 = load i32, i32* @RDH, align 4
  %51 = call i64 @er32(i32 %50)
  %52 = load i64*, i64** %9, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 4
  store i64 %51, i64* %53, align 8
  %54 = load i32, i32* @RDT, align 4
  %55 = call i64 @er32(i32 %54)
  %56 = load i64*, i64** %9, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 5
  store i64 %55, i64* %57, align 8
  %58 = load i32, i32* @RDTR, align 4
  %59 = call i64 @er32(i32 %58)
  %60 = load i64*, i64** %9, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 6
  store i64 %59, i64* %61, align 8
  %62 = load i32, i32* @TCTL, align 4
  %63 = call i64 @er32(i32 %62)
  %64 = load i64*, i64** %9, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 7
  store i64 %63, i64* %65, align 8
  %66 = load i32, i32* @TDLEN, align 4
  %67 = call i64 @er32(i32 %66)
  %68 = load i64*, i64** %9, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 8
  store i64 %67, i64* %69, align 8
  %70 = load i32, i32* @TDH, align 4
  %71 = call i64 @er32(i32 %70)
  %72 = load i64*, i64** %9, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 9
  store i64 %71, i64* %73, align 8
  %74 = load i32, i32* @TDT, align 4
  %75 = call i64 @er32(i32 %74)
  %76 = load i64*, i64** %9, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 10
  store i64 %75, i64* %77, align 8
  %78 = load i32, i32* @TIDV, align 4
  %79 = call i64 @er32(i32 %78)
  %80 = load i64*, i64** %9, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 11
  store i64 %79, i64* %81, align 8
  %82 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %83 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64*, i64** %9, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 12
  store i64 %84, i64* %86, align 8
  %87 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %88 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @e1000_phy_igp, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %178

92:                                               ; preds = %3
  %93 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %94 = load i32, i32* @IGP01E1000_PHY_PAGE_SELECT, align 4
  %95 = load i32, i32* @IGP01E1000_PHY_AGC_A, align 4
  %96 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %93, i32 %94, i32 %95)
  %97 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %98 = load i32, i32* @IGP01E1000_PHY_AGC_A, align 4
  %99 = load i32, i32* @IGP01E1000_PHY_PAGE_SELECT, align 4
  %100 = and i32 %98, %99
  %101 = call i32 @e1000_read_phy_reg(%struct.e1000_hw* %97, i32 %100, i64* %10)
  %102 = load i64, i64* %10, align 8
  %103 = load i64*, i64** %9, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 13
  store i64 %102, i64* %104, align 8
  %105 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %106 = load i32, i32* @IGP01E1000_PHY_PAGE_SELECT, align 4
  %107 = load i32, i32* @IGP01E1000_PHY_AGC_B, align 4
  %108 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %105, i32 %106, i32 %107)
  %109 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %110 = load i32, i32* @IGP01E1000_PHY_AGC_B, align 4
  %111 = load i32, i32* @IGP01E1000_PHY_PAGE_SELECT, align 4
  %112 = and i32 %110, %111
  %113 = call i32 @e1000_read_phy_reg(%struct.e1000_hw* %109, i32 %112, i64* %10)
  %114 = load i64, i64* %10, align 8
  %115 = load i64*, i64** %9, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 14
  store i64 %114, i64* %116, align 8
  %117 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %118 = load i32, i32* @IGP01E1000_PHY_PAGE_SELECT, align 4
  %119 = load i32, i32* @IGP01E1000_PHY_AGC_C, align 4
  %120 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %117, i32 %118, i32 %119)
  %121 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %122 = load i32, i32* @IGP01E1000_PHY_AGC_C, align 4
  %123 = load i32, i32* @IGP01E1000_PHY_PAGE_SELECT, align 4
  %124 = and i32 %122, %123
  %125 = call i32 @e1000_read_phy_reg(%struct.e1000_hw* %121, i32 %124, i64* %10)
  %126 = load i64, i64* %10, align 8
  %127 = load i64*, i64** %9, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 15
  store i64 %126, i64* %128, align 8
  %129 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %130 = load i32, i32* @IGP01E1000_PHY_PAGE_SELECT, align 4
  %131 = load i32, i32* @IGP01E1000_PHY_AGC_D, align 4
  %132 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %129, i32 %130, i32 %131)
  %133 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %134 = load i32, i32* @IGP01E1000_PHY_AGC_D, align 4
  %135 = load i32, i32* @IGP01E1000_PHY_PAGE_SELECT, align 4
  %136 = and i32 %134, %135
  %137 = call i32 @e1000_read_phy_reg(%struct.e1000_hw* %133, i32 %136, i64* %10)
  %138 = load i64, i64* %10, align 8
  %139 = load i64*, i64** %9, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 16
  store i64 %138, i64* %140, align 8
  %141 = load i64*, i64** %9, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 17
  store i64 0, i64* %142, align 8
  %143 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %144 = load i32, i32* @IGP01E1000_PHY_PAGE_SELECT, align 4
  %145 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %143, i32 %144, i32 0)
  %146 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %147 = load i32, i32* @IGP01E1000_PHY_PORT_STATUS, align 4
  %148 = load i32, i32* @IGP01E1000_PHY_PAGE_SELECT, align 4
  %149 = and i32 %147, %148
  %150 = call i32 @e1000_read_phy_reg(%struct.e1000_hw* %146, i32 %149, i64* %10)
  %151 = load i64, i64* %10, align 8
  %152 = load i64*, i64** %9, align 8
  %153 = getelementptr inbounds i64, i64* %152, i64 18
  store i64 %151, i64* %153, align 8
  %154 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %155 = load i32, i32* @IGP01E1000_PHY_PAGE_SELECT, align 4
  %156 = load i32, i32* @IGP01E1000_PHY_PCS_INIT_REG, align 4
  %157 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %154, i32 %155, i32 %156)
  %158 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %159 = load i32, i32* @IGP01E1000_PHY_PCS_INIT_REG, align 4
  %160 = load i32, i32* @IGP01E1000_PHY_PAGE_SELECT, align 4
  %161 = and i32 %159, %160
  %162 = call i32 @e1000_read_phy_reg(%struct.e1000_hw* %158, i32 %161, i64* %10)
  %163 = load i64, i64* %10, align 8
  %164 = load i64*, i64** %9, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 19
  store i64 %163, i64* %165, align 8
  %166 = load i64*, i64** %9, align 8
  %167 = getelementptr inbounds i64, i64* %166, i64 20
  store i64 0, i64* %167, align 8
  %168 = load i64*, i64** %9, align 8
  %169 = getelementptr inbounds i64, i64* %168, i64 22
  store i64 0, i64* %169, align 8
  %170 = load i64*, i64** %9, align 8
  %171 = getelementptr inbounds i64, i64* %170, i64 18
  %172 = load i64, i64* %171, align 8
  %173 = load i64*, i64** %9, align 8
  %174 = getelementptr inbounds i64, i64* %173, i64 23
  store i64 %172, i64* %174, align 8
  %175 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %176 = load i32, i32* @IGP01E1000_PHY_PAGE_SELECT, align 4
  %177 = call i32 @e1000_write_phy_reg(%struct.e1000_hw* %175, i32 %176, i32 0)
  br label %220

178:                                              ; preds = %3
  %179 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %180 = load i32, i32* @M88E1000_PHY_SPEC_STATUS, align 4
  %181 = call i32 @e1000_read_phy_reg(%struct.e1000_hw* %179, i32 %180, i64* %10)
  %182 = load i64, i64* %10, align 8
  %183 = load i64*, i64** %9, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 13
  store i64 %182, i64* %184, align 8
  %185 = load i64*, i64** %9, align 8
  %186 = getelementptr inbounds i64, i64* %185, i64 14
  store i64 0, i64* %186, align 8
  %187 = load i64*, i64** %9, align 8
  %188 = getelementptr inbounds i64, i64* %187, i64 15
  store i64 0, i64* %188, align 8
  %189 = load i64*, i64** %9, align 8
  %190 = getelementptr inbounds i64, i64* %189, i64 16
  store i64 0, i64* %190, align 8
  %191 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %192 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %193 = call i32 @e1000_read_phy_reg(%struct.e1000_hw* %191, i32 %192, i64* %10)
  %194 = load i64, i64* %10, align 8
  %195 = load i64*, i64** %9, align 8
  %196 = getelementptr inbounds i64, i64* %195, i64 17
  store i64 %194, i64* %196, align 8
  %197 = load i64*, i64** %9, align 8
  %198 = getelementptr inbounds i64, i64* %197, i64 13
  %199 = load i64, i64* %198, align 8
  %200 = load i64*, i64** %9, align 8
  %201 = getelementptr inbounds i64, i64* %200, i64 18
  store i64 %199, i64* %201, align 8
  %202 = load i64*, i64** %9, align 8
  %203 = getelementptr inbounds i64, i64* %202, i64 19
  store i64 0, i64* %203, align 8
  %204 = load i64*, i64** %9, align 8
  %205 = getelementptr inbounds i64, i64* %204, i64 17
  %206 = load i64, i64* %205, align 8
  %207 = load i64*, i64** %9, align 8
  %208 = getelementptr inbounds i64, i64* %207, i64 20
  store i64 %206, i64* %208, align 8
  %209 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %210 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64*, i64** %9, align 8
  %214 = getelementptr inbounds i64, i64* %213, i64 22
  store i64 %212, i64* %214, align 8
  %215 = load i64*, i64** %9, align 8
  %216 = getelementptr inbounds i64, i64* %215, i64 13
  %217 = load i64, i64* %216, align 8
  %218 = load i64*, i64** %9, align 8
  %219 = getelementptr inbounds i64, i64* %218, i64 23
  store i64 %217, i64* %219, align 8
  br label %220

220:                                              ; preds = %178, %92
  %221 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %222 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = load i64*, i64** %9, align 8
  %226 = getelementptr inbounds i64, i64* %225, i64 21
  store i64 %224, i64* %226, align 8
  %227 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %228 = load i32, i32* @PHY_1000T_STATUS, align 4
  %229 = call i32 @e1000_read_phy_reg(%struct.e1000_hw* %227, i32 %228, i64* %10)
  %230 = load i64, i64* %10, align 8
  %231 = load i64*, i64** %9, align 8
  %232 = getelementptr inbounds i64, i64* %231, i64 24
  store i64 %230, i64* %232, align 8
  %233 = load i64*, i64** %9, align 8
  %234 = getelementptr inbounds i64, i64* %233, i64 24
  %235 = load i64, i64* %234, align 8
  %236 = load i64*, i64** %9, align 8
  %237 = getelementptr inbounds i64, i64* %236, i64 25
  store i64 %235, i64* %237, align 8
  %238 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %239 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %238, i32 0, i32 3
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @e1000_82540, align 8
  %242 = icmp sge i64 %240, %241
  br i1 %242, label %243, label %254

243:                                              ; preds = %220
  %244 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %245 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %244, i32 0, i32 4
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @e1000_media_type_copper, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %249, label %254

249:                                              ; preds = %243
  %250 = load i32, i32* @MANC, align 4
  %251 = call i64 @er32(i32 %250)
  %252 = load i64*, i64** %9, align 8
  %253 = getelementptr inbounds i64, i64* %252, i64 26
  store i64 %251, i64* %253, align 8
  br label %254

254:                                              ; preds = %249, %243, %220
  ret void
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @er32(i32) #1

declare dso_local i32 @e1000_write_phy_reg(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
